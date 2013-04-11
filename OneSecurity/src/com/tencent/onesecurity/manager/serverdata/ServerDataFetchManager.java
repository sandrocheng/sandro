package com.tencent.onesecurity.manager.serverdata;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;

import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.common.ApplicationConfig;
import com.tencent.onesecurity.dao.CoreConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.dao.SplashDao;
import com.tencent.onesecurity.dao.UserInfoDao;
import com.tencent.onesecurity.manager.notification.MessageManager;
import com.tencent.onesecurity.manager.scheduletask.SystemTimerManager;
import com.tencent.onesecurity.model.MessageEntity;
import com.tencent.onesecurity.model.SplashEntity;
import com.tencent.onesecurity.service.ScheduleTaskProcessService;
import com.tencent.onesecurity.util.DeviceUtil;
import com.tencent.onesecurity.util.HttpConnection;
import com.tencent.onesecurity.util.PaymentInformationUtil;
import com.tencent.onesecurity.util.XxteaCoding;
import com.tencent.onesecurity.util.jce.ConfigTaf;
import com.tencent.onesecurity.util.jce.HolidayPicInfo;
import com.tencent.onesecurity.util.jce.QQDHttpRequestStru;
import com.tencent.onesecurity.util.jce.REQ;
import com.tencent.onesecurity.util.jce.ReqGetHolidayPic;
import com.tencent.onesecurity.util.jce.ReqNotificationCenter;
import com.tencent.onesecurity.util.jce.RespGetHolidayPic;
import com.tencent.onesecurity.util.jce.RespNotificationCenter;
import com.tencent.onesecurity.util.jce.StatInfo3G;
import com.tencent.onesecurity.util.jce.TipsTaf;
import com.tencent.tmsecure.exception.NetWorkException;

/**
 * 主要用来拉取后台的数据，包括推广消息，SmartCongfi,PlugIn等
 * 
 * @ClassName: ServerDataFetchManager
 * @Description:TODO(这里用一句话描述这个类的作用)
 * @author: Jess Yan
 * @date: 2012-11-19 上午10:27:04
 * 
 */
public class ServerDataFetchManager {

	// 测试服务器 http://qqdrsvrtest.cs0309.3g.qq.com/qqd
	// 正式服务器http://qqdrsvr.3g.qq.com/qqd
	private String URL = null;
//	private final static String TEAKEY = ApplicationConfig.teakey; // "DFG#$%^#%$RGHR(&*M<><";

	private HttpConnection httpConnection = null; 		// 
	private boolean isSending = false; 					// 避免重复执行
	private boolean isPullAll = false;
	public ServerDataChangeListener dataChangeListener = null;
	private final int replyCodeSuccess = 1;//服务器返回成功
	
	/**
	 * 设置监听器，这里后续还要重构，现在只能为一个Listener服务。
	 * @param dataChangeListener
	 */
	public void setDataChangeListener(ServerDataChangeListener dataChangeListener) {
		this.dataChangeListener = dataChangeListener;
	}
	
	/**
	 * 移除数据变化监听器
	 */
	public void removeDataChangeListener() {
		this.dataChangeListener = null;
	}
	
	/**
	 * 去服务器上获得list信息,新开一个线程 7，此方法单独运行
	 */
	public void getListFromServer(boolean isPullAll) {
		if (!isSending) {
			isSending = true;
			this.isPullAll = isPullAll;
			Thread thread = new Thread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					getDataFromSrv(MainApplication.mContext);
					//请求节日下发闪屏
					getSplashFromSrv(MainApplication.mContext);
					isSending = false;
				}
			});
			thread.start();
		}
	}
	
	/**
	 * 请求后台数据，包括消息，SmartConfig，PlugIn
	 * 
	 * @param context
	 */
	public void getDataFromSrv(Context context) {
		Log.i("FETCH_DATA", "Start.");
		try {
			httpConnection = HttpConnection.createHttpConnection(URL);
		} catch (NetWorkException e) {
			e.printStackTrace();
			Log.e("FETCH_DATA", "Create connection error: " + e.getErrMsg());
			return;
		}
		
		// 请求方式：POST
		httpConnection.setRequestMethod(HttpConnection.METHOD_POST);

		// 构建Request对象
		QQDHttpRequestStru<ReqNotificationCenter> reqStru = new QQDHttpRequestStru<ReqNotificationCenter>();
		reqStru.req = REQ._REQ_NotificationCenter;
		reqStru.reqStruct = getCenterRequest();
		Log.i("FETCH_DATA", "reqStru.req=" + reqStru.req);

		try {
			JceOutputStream localJceOutputStream = new JceOutputStream();
			localJceOutputStream.setServerEncoding("UTF-8");
			reqStru.writeTo(localJceOutputStream);
			byte[] data = localJceOutputStream.toByteArray();
			Log.i("FETCH_DATA", "data length=" + data.length);		
			
			// 加密
			XxteaCoding xxtea = new XxteaCoding(ApplicationConfig.teakey.getBytes());
			byte[] vEncryptData = xxtea.encode2HexStr(data).getBytes();
			httpConnection.setPostData(vEncryptData);
			// httpConnection.setPostData(data);

			// 开始发请求
			Log.i("FETCH_DATA", "start to sendRequest");
			httpConnection.sendRequest();
			Log.i("FETCH_DATA", "sendRequest");
			
			// 阻塞，返回retCode
			int respCode = httpConnection.getResponseCode();
			Log.i("FETCH_DATA", "getResponseCode  respCode=" + respCode);
			
			// 取出Respose，关闭连接
			AtomicReference<byte[]> atomicReference = new AtomicReference<byte[]>();
			httpConnection.getResponse(false, atomicReference);
			httpConnection.close();

			// 解析Response
			if (atomicReference == null) {
				Log.e("ServerDataFetchManager", "atomicReference = null");
				return;
			}
			if (atomicReference.get() == null) {
				Log.e("ServerDataFetchManager", "atomicReference.get() = null");
				return;
			}
			String dataStr = new String(atomicReference.get());
			byte[] dataResp = xxtea.decodeFromHexStr(dataStr);
			if (dataResp == null) {
				Log.e("ServerDataFetchManager", "dataResp = null");
				return;
			}
			JceInputStream jceIs = new JceInputStream(dataResp);
			if (jceIs == null) {
				Log.e("ServerDataFetchManager", "jceIs = null");
				return;
			}
			jceIs.setServerEncoding("UTF-8");
			// Log.i("FETCH_DATA", "dataResp length ="+dataResp.length);
			// JceInputStream jceIs = new JceInputStream(atomicReference.get());
			RespNotificationCenter centerResv = new RespNotificationCenter();
			centerResv = (RespNotificationCenter) jceIs.read(centerResv, 1, true);
			Log.i("FETCH_DATA", "centerResv.retVal =" + centerResv.retVal);
			
			// 得到结果，进行业务处理
			if (centerResv != null) {
				if (centerResv.getConfigData() != null) {
					Log.i("FETCH_DATA", "ConfigData list size="
							+ centerResv.getConfigData().size());
					ArrayList<ConfigTaf> tafConfigs = centerResv.getConfigData();
					Map<String, String> map = null;
					boolean needCommit = false;
					for (ConfigTaf configTaf : tafConfigs) {
						map = configTaf.getConfigInfo();
						
						Iterator<String> iterator = map.keySet().iterator();
						String key, value;
						while (iterator.hasNext()) {
							key = iterator.next();
							value = map.get(key);
							
							// 验证数据，只有符合正常范围的数据才可以在Config中修改
							if (CoreConfigDao.getInstance().checkData(key, value)) {
								CoreConfigDao.getInstance().setValue(key, value, false);
								needCommit = true;
							}
							
							Log.d("FETCH_DATA", "== Smart Config. key:" + key + " value:" + value);
						}	
					}
					// 更新参数到DB
					if (needCommit) {
						Log.d("FETCH_DATA", "== Commit.");
						CoreConfigDao.getInstance().commitData();
						
						// 通知监听者
						if (this.dataChangeListener != null) {
							this.dataChangeListener.dataChange();
							Log.d("FETCH_DATA", "== Notice that data have been changed.");
						}
					}
					
					// 输出所有参数值
					CoreConfigDao.getInstance().outputLog();
				}

				if (centerResv.getTipsData() != null) {
					Log.i("FETCH_DATA", "Tips Data list size="
							+ centerResv.getTipsData().size());
					ArrayList<TipsTaf> messages = centerResv.getTipsData();
					
					// 修改时间戳。后台返回的时间戳不包含毫秒，客户端使用带毫秒的时间戳
					for (TipsTaf msg : messages) {
						Log.d("FETCH_DATA", "Tps: id:" + msg.Id 
								+ " summary:" + msg.summary 
								+ " url" + msg.Url 
								+ " DisplayBegin:" + msg.DisplayBegin
								+ " DisplayEnd:" + msg.DisplayEnd
								+ " EffectiveTime:" + msg.EffectiveTime
								+ " EffectiveTime:" + msg.EffectiveTime);
						
						msg.DisplayBegin *= 1000;
						msg.DisplayEnd *= 1000;
						msg.EffectiveTime *= 1000;
						msg.EffectiveTime *= 1000;
						
						// 调整显示时间
						msg.DisplayBegin = adjustDisplayTime(msg.DisplayBegin);
						Log.d("FETCH_DATA", "Adjusted display time:" + msg.DisplayBegin);
						if (msg.DisplayBegin != -1) {
							// 保存
							MessageManager.getInstance().saveMessage(msg);	
						}
					}
					
					// 取出所有为显示的消息
					ArrayList<MessageEntity> entities = MessageManager.getInstance().getCanDeliverMessages();
					if (entities != null && entities.size() != 0) {
						for (MessageEntity msg : entities) {

							if (!SystemTimerManager.getInstance().hasTask("Message:" + msg.id)) {
								Intent intent = new Intent();
								intent.setClass(MainApplication.getContext(), ScheduleTaskProcessService.class);
								intent.setAction(ScheduleTaskProcessService.ACTION_NOTICE_NEW_MESSAGE);
								intent.putExtra("MSG_ID", msg.id);
								SystemTimerManager.getInstance().addSpecDateRemindTask("Message:" + msg.id, msg.noticeTime, intent);
								
								Log.d("FETCH_DATA", "Add schedule task:" 
										    			+ " id:" + msg.id 
										    			+ " msgId:" + msg.msgId 
										    			+ " noticeTime:" + msg.noticeTime 
										    			+ " receiveTime:" + msg.receiveTime);
							}	
						}	
					}
				}
				if (centerResv.getPluginData() != null) {
					// 处理插件信息
					Log.i("FETCH_DATA", "PluginData()!=null");
//					ArrayList<PluginTaf> pluginList = centerResv
//							.getPluginData();
//					ArrayList<HideFeatureEntity> featureList = new ArrayList<HideFeatureEntity>();
//					for (PluginTaf plugin : pluginList) {
//						featureList.add(new HideFeatureEntity(plugin));
//					}
//					Log.i("FETCH_DATA", "plugin list size=" + pluginList.size());
//					// 存储到DB中
//					saveListToDB(featureList);
//					// 是否存到首选项中
//					Log.i("FETCH_DATA", "end of http");
				}
			}
		} catch (NetWorkException e) {
			e.printStackTrace();
			Log.e("FETCH_DATA", "get hide feature error  " + e.getErrMsg());
		} catch (Exception e) {
			e.printStackTrace();
			Log.e("FETCH_DATA", "Error:" + e.getMessage());
		}
	}

	/**
	 * 请求节日下发闪屏
	 * 
	 * @param context
	 */
	public void getSplashFromSrv(Context context) {
		Log.i("SPLASH_DATA", "Start.");
		try {
			httpConnection = HttpConnection.createHttpConnection(URL);
		} catch (NetWorkException e) {
			e.printStackTrace();
			Log.e("SPLASH_DATA", "Connection error: " + e.getErrMsg());
			return;
		}
		
		// 请求方式：POST
		httpConnection.setRequestMethod(HttpConnection.METHOD_POST);

		// 构建Request对象
		QQDHttpRequestStru<ReqGetHolidayPic> reqStru = new QQDHttpRequestStru<ReqGetHolidayPic>();
		reqStru.req = REQ._REQ_GetHolidayPic;
		reqStru.reqStruct = getSplashRequest();
		Log.i("SPLASH_DATA", "reqStru.req=" + reqStru.req);
		
		try {
			JceOutputStream localJceOutputStream = new JceOutputStream();
			localJceOutputStream.setServerEncoding("UTF-8");
			reqStru.writeTo(localJceOutputStream);
			byte[] data = localJceOutputStream.toByteArray();
			Log.i("SPLASH_DATA", "data length=" + data.length);		
			
			// 加密
			XxteaCoding xxtea = new XxteaCoding(ApplicationConfig.teakey.getBytes());
			byte[] vEncryptData = xxtea.encode2HexStr(data).getBytes();
			httpConnection.setPostData(vEncryptData);

			// 开始发请求
			Log.i("SPLASH_DATA", "start to sendRequest");
			httpConnection.sendRequest();
			Log.i("SPLASH_DATA", "sendRequest");
			
			// 阻塞，返回retCode
			int respCode = httpConnection.getResponseCode();
			Log.i("SPLASH_DATA", "getResponseCode  respCode=" + respCode);
			
			// 取出Respose，关闭连接
			AtomicReference<byte[]> atomicReference = new AtomicReference<byte[]>();
			httpConnection.getResponse(false, atomicReference);
			httpConnection.close();

			// 解析Response
			if (atomicReference == null) {
				Log.e("ServerDataFetchManager", "atomicReference = null");
				return;
			}
			if (atomicReference.get() == null) {
				Log.e("ServerDataFetchManager", "atomicReference.get() = null");
				return;
			}
			String dataStr = new String(atomicReference.get());
			byte[] dataResp = xxtea.decodeFromHexStr(dataStr);
			if (dataResp == null) {
				Log.e("ServerDataFetchManager", "dataResp = null");
				return;
			}
			JceInputStream jceIs = new JceInputStream(dataResp);
			if (jceIs == null) {
				Log.e("ServerDataFetchManager", "jceIs = null");
				return;
			}
			jceIs.setServerEncoding("UTF-8");
			RespGetHolidayPic holidaPicResv = new RespGetHolidayPic();
			holidaPicResv = (RespGetHolidayPic) jceIs.read(holidaPicResv, 1, true);
			Log.i("SPLASH_DATA", "holidaPicResv.replyCode =" + holidaPicResv.replyCode);
			
			// 得到结果，进行业务处理
			if (holidaPicResv != null) {
				if (holidaPicResv.getReplyCode() == replyCodeSuccess) {
					HolidayPicInfo picInfo = new HolidayPicInfo();
					picInfo = holidaPicResv.getHolidayPicInfo();
					
					//通过url取得图片
					URL url = new URL(picInfo.picUrl);
					InputStream in = url.openStream();
					Bitmap bitmap = BitmapFactory.decodeStream(in);
					in.close();
					//保存图片
					ByteArrayOutputStream baos = new ByteArrayOutputStream();
					bitmap.compress(Bitmap.CompressFormat.PNG, 100, baos);
					byte[] splashPic = baos.toByteArray();
					bitmap.recycle();
					baos.close();
					
					// 更新DB
					Log.d("SPLASH_DATA", "pic url=" + picInfo.getPicUrl());
					SplashEntity entity = new SplashEntity();
					entity.startTime = picInfo.startDateTime;
					entity.endTime= picInfo.endDateTime;
					entity.splashPic = splashPic;
					
					SplashDao dao = new SplashDao();
					dao.insertOrUpdate(entity);
				}
			}
		} catch (NetWorkException e) {
			e.printStackTrace();
			Log.e("SPLASH_DATA", "get hide feature error  " + e.getErrMsg());
		} catch (Exception e) {
			e.printStackTrace();
			Log.e("SPLASH_DATA", "Error:" + e.getMessage());
		}
	}
	
	/**
	 * 调整消息显示时间
	 * @param displayTime
	 * @return
	 */
	private long adjustDisplayTime(long displayTime) {
		long adjestedTime = 0l;
		
		long now = System.currentTimeMillis();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		
		int displayDateValue = Integer.valueOf(sdf.format(new Date(displayTime)));
		int todayValue = Integer.valueOf(sdf.format(new Date(now)));
		
		if (displayDateValue > todayValue) {			// 显示日期  > 今天
			adjestedTime = displayTime + 10 * 60 * 60 * 1000l;	// 十点通知
		} else if (displayDateValue == todayValue) {	// 显示日期  = 今天
			Date nowDate = new Date(now);
			if (nowDate.getHours() >= 10) {		// 当前时间超过默认的显示时间10点，推迟1分钟显示
				adjestedTime = now + 1 * 60 * 1000l;
			} else {
				adjestedTime = displayTime + 10 * 60 * 60 * 1000l;	// 十点通知
			}
		} else if (displayDateValue < todayValue) {		// 显示时间  < 今天（过期）
			adjestedTime = displayTime;
		}
		
		return adjestedTime;
	}
	
	/**
	 * @param context
	 * @return 获取用户全量用户信息 StatInfo3G
	 */
	private ReqNotificationCenter getCenterRequest() {
		StatInfo3G info3G = new StatInfo3G();
		
		// 测试代码　 国家:86 lc:1.0 channelId:233001 userType：UI_PAY
		info3G.country = PaymentInformationUtil.getInstance().getCountryNameDefaultXX();
		info3G.lc = ApplicationConfig.LC;
		
		// 渠道号
		try {
			info3G.channelId = Integer.parseInt(ApplicationConfig.CHANNEL, 10);	
		} catch (Exception e) {
			e.printStackTrace();
			info3G.channelId = 0;
		}
		
		
		
		// 用户类型
		UserInfoDao userInfoDao = DaoCreator.createUserInfoDao();
		if (userInfoDao != null) {
			info3G.userType = userInfoDao.getUserLevelInfo();
		} else {
			info3G.userType = 0;
		}

		// info3G.lc = PaymentInformationUtil.getInstance().getLC();
		// try{
		// info3G.channelId = Integer.parseInt(
		// PaymentInformationUtil.getInstance().getChannelID());
		// }catch(Exception e){
		//
		// }
		// info3G.country=PaymentInformationUtil.getInstance().getCountryNameDefaultXX();
		// info3G.userType="1001";
//		try {
//			info3G.appId = Integer.parseInt(PaymentInformationUtil
//					.getInstance().getAppID());
//		} catch (Exception e) {
//
//		}

//		info3G.phoneNumber = PaymentInformationUtil.getInstance()
//				.getSelfPhoneNumber();
		info3G.phoneNumber = "";//gordon 因涉及隐私问题  
		info3G.ua = "useragent";
		info3G.phoneType = DeviceUtil.getPhoneType() + "lc:" + info3G.lc;
		info3G.subPlatform = "subPlatform";

		info3G.imei = DeviceUtil.getIMEI();
		info3G.imsi = DeviceUtil.getIMSI();
		
//		info3G.imei = PhoneInfoUtil.getIMEI(MainApplication.getContext());
//		info3G.imsi = PhoneInfoUtil.getIMSI(MainApplication.getContext());
		
		info3G.isbuildin = false;
		info3G.isroot = false;

		Log.d("FETCH_DATA", "country:" + info3G.country 
								+ " channelId:" + info3G.channelId
								+ " userType:" + info3G.userType
								+ " phoneNumber:" + info3G.phoneNumber
								+ " ua:" + info3G.ua
								+ " phoneType:" + info3G.phoneType
								+ " imei:" + info3G.imei
								+ " imsi:" + info3G.imsi
								+ " isbuildin:" + info3G.isbuildin
								+ " isroot:" + info3G.isroot);
		ReqNotificationCenter centerRequest = new ReqNotificationCenter();
		centerRequest.setStatInfo3G(info3G);
		centerRequest.setIsall(this.isPullAll);
		return centerRequest;
	}

	/****************  单例       *********************************/
	
	private static ServerDataFetchManager instance;

	/**
	 * 私有构造方法
	 */
	private ServerDataFetchManager() {
		// 从配置文件中获得URL
		boolean isFormalEnv = MainApplication.getContext().getResources().getBoolean(R.bool.is_formal_env_for_pull_server_data);
		
		if (isFormalEnv) {
			// 正式服务器http://qqdrsvr.3g.qq.com/qqd
			URL = "http://qqdrsvr.3g.qq.com/qqd"; 	
		} else {
			// 测试服务器 http://qqdrsvrtest.cs0309.3g.qq.com/qqd
			URL = "http://qqdrsvrtest.cs0309.3g.qq.com/qqd";
		}
	}

	/**
	 * @param context
	 * @return 获取闪屏信息 ReqGetHolidayPic
	 */
	private ReqGetHolidayPic getSplashRequest() {
		
		String country = PaymentInformationUtil.getInstance().getCountryNameDefaultXX();
		String lc = ApplicationConfig.LC;
		int deviceDensityDpi = DeviceUtil.getDeviceDensityDpi();

		Log.d("SPLASH_DATA", "country:" + country 
								+ " lc:" + lc
								+ " Density:" + deviceDensityDpi);
		ReqGetHolidayPic request = new ReqGetHolidayPic();
		request.setCountryId(country);
		request.setLc(lc);
		request.setResolution(deviceDensityDpi);
		return request;
	}
	
	/**
	 * 获得单例的SystemOptimizeManager对象
	 * 
	 * @return
	 */
	public static ServerDataFetchManager getInstance() {
		if (instance == null) {
			synchronized (ServerDataFetchManager.class) {
				if (instance == null) {
					instance = new ServerDataFetchManager();
				}
			}
		}
		return instance;
	}
	
	public static interface ServerDataChangeListener {
		public void dataChange();
	}
}
