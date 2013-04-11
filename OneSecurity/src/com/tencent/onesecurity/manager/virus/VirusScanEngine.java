package com.tencent.onesecurity.manager.virus;

import java.util.ArrayList;
import java.util.List;

import android.os.Debug;
import android.os.Handler;
import android.os.Message;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.manager.notification.StatusBarManager;
import com.tencent.onesecurity.model.AppReportEntity;
import com.tencent.onesecurity.model.ScanResultModel;
import com.tencent.onesecurity.ui.helper.UIConstants;
import com.tencent.onesecurity.usage.winmess.WinmessAppReportManager;
import com.tencent.onesecurity.util.Log;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.qscanner.QScanConstants;
import com.tencent.tmsecure.module.qscanner.QScanListener;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import com.tencent.tmsecure.module.qscanner.QScannerManager;

public class VirusScanEngine {
	public static interface IEngineDiscardFinishListener {
		public void engineDiscardFinish(VirusScanEngine engine);
	}
	public static final int HANDLER_SCAN_START = 9101; // 开始扫描
	public static final int HANDLER_PACKAGE_SCANNING = 9102; // 包扫描中
	public static final int HANDLER_CLOUD_SCANNING = 9103; // 云查杀
	public static final int HANDLER_CLOUD_ERROR = 9104; // 云查杀错误
	public static final int HANDLER_SDCARD_SCANNING = 9105; // SD card 扫描
	public static final int HANDLER_SCAN_PAUSED = 9106; // 暂停扫描
	public static final int HANDLER_SCAN_CONTINUE = 9107; // 继续扫描
	public static final int HANDLER_SCAN_CANCEL = 9108; // 取消扫描
	public static final int HANDLER_SCAN_FINISH = 9109; // 结束扫描
	public static final int HANDLER_SCANNER_RUNNING = 9110; // 扫描中
	public static final int HANDLER_SCANNER_PREPARING = 9111; // 准备扫描
	public static final int HANDLER_ASK_USER_CLOUD_SCAN = 9112; // 通知UI显示询问用户是否进行云查杀的Dialog
	public static final int HANDLER_JUMP_TO_SCAN_RESULT = 9113; // 跳转到扫毒结果画面
	
	// 扫描状态
	public static final int SCAN_STATUS_IDLE = 20;
	public static final int SCAN_STATUS_SCANNING = 21;
	public static final int SCAN_STATUS_PAUSED = 22;
	public static final int SCAN_STATUS_FINISHING = 23;
	public static final int SCAN_STATUS_CANCELING = 24;
	public static final int SCAN_STATUS_INIT = 25;
	
	// 扫描类型
	public static final int TYPE_PKG_SCAN = 81;
	public static final int TYPE_SDCARD_SCAN = 82;
	public static final int TYPE_FULL_SCAN = 83;
	
	/** 核心引擎SDK */
	private QScannerManager sdkVirusScanEngine;
	/** NAME */
	public String name;
	/** 扫描结果 */
	private ArrayList<ScanResultModel> mResults;
	/** ui更新Handler */
	private Handler uiHandler;
	/** 扫描引擎状态 空闲，初始化中，扫描中，暂停，取消中，结束中*/
	private int state;
	/** 是否云查杀 */
	private boolean isCloudScan = false;
	/** 是否已经被弃用 */
	private boolean isDiscard = false;
	/** Enging被弃用监听器 */
	private IEngineDiscardFinishListener engineDiscardFinishListener;
	
	/**是否有病毒，通知UI线程*/
	private boolean safeFlag = false ;
	
	/**
	 * 引擎构造器
	 * @param _engineDiscardFinishListener
	 */
	VirusScanEngine(IEngineDiscardFinishListener _engineDiscardFinishListener) {
				
		// sdk杀毒引擎
		sdkVirusScanEngine = ManagerCreator.getManager(QScannerManager.class);
				
		state = SCAN_STATUS_IDLE;	// 初始状态为空闲
		// VirusScanEnging废弃监听
		engineDiscardFinishListener = _engineDiscardFinishListener;
	}
	
	public void removeEngineDiscardListener() {
		this.engineDiscardFinishListener = null;
	}
	
	/**
	 * 获得引擎状态
	 * @return
	 */
	public int getState() {
		return state;
	}
	
	/**
	 * 进行扫描
	 * @param type	包扫描，sdcard扫描，全面扫描
	 * @param handler	通知UIhandler
	 * @param isCloud	是否云查杀
	 */
	public void startVirusScan(final int type, Handler _handler, boolean isCloud) {
		Log.d("VirusScanEngine", "User Start Pkg Scan.");
		
		// 如果扫描器运行中，通知UI并返回
		if (state != SCAN_STATUS_IDLE) {
			sendHandlerMessage(HANDLER_SCANNER_RUNNING);
			return;
		}
		
		this.uiHandler = _handler;

		// 状态：初始化中
		setState(SCAN_STATUS_INIT);

		// 通知UI
		sendHandlerMessage(HANDLER_SCANNER_PREPARING);
		
		this.isCloudScan = isCloud;
		
		// 包扫描线程
		Thread virusScanThread = new Thread() {

			@Override
			public void run() {

				resetResultInfo();

				// 开始进行包扫描
				sdkVirusScanEngine.initScanner();

				switch(type) {
					case TYPE_PKG_SCAN: {
						sdkVirusScanEngine.scanInstalledPackages(new VirusScanProcessListener(), isCloudScan);
						break;
					}
					case TYPE_SDCARD_SCAN: {
						sdkVirusScanEngine.scanSdcardApks(new VirusScanProcessListener(), isCloudScan);
						break;
					}
					case TYPE_FULL_SCAN: {
						sdkVirusScanEngine.scanGlobal(new VirusScanProcessListener(), isCloudScan);
						break;
					}
				}
				
				sdkVirusScanEngine.freeScanner();

				// 状态：空闲
				setState(SCAN_STATUS_IDLE);
				
				// 如果已经被用户discard，则立刻通知manager去掉对自己的引用
				if (isDiscard) {
					uiHandler = null;
					mResults.clear();
					
					// 是否需要通知Mangager
					if (engineDiscardFinishListener != null) {
						engineDiscardFinishListener.engineDiscardFinish(VirusScanEngine.this);	
					}
					return;
				}
				
				// 20130117 优化
				sendFinishedScanMsg(safeFlag) ;
				
				// 杀毒结束后，去掉对UIhandler的引用。
				uiHandler = null;
			}
		};

		virusScanThread.setName("VirusScanThread");
		virusScanThread.start();
	}
	
	/**
	 * Enging是否正在运行
	 * @return
	 */
	public boolean isRunning() {
		return state != SCAN_STATUS_IDLE;
	}
	
	/**
	 * 停止扫描
	 * @return 是否执行了停止
	 */
	public boolean stopScan() {
		if (state == SCAN_STATUS_INIT || 
				state == SCAN_STATUS_PAUSED || 
				state == SCAN_STATUS_SCANNING) {  // init,pause,scanning的时候才允许cancel
			Log.d("VirusScanEngine", "User Stop.");

			// 状态：取消中
			setState(SCAN_STATUS_CANCELING);
			
			sdkVirusScanEngine.cancelScan();
			
			uiHandler = null;
			return true;
		} else {
			Log.d("TEST", "Can not execute sdkEngine.cancelScan in current state.");
			return false;
		}
	}
	
	/**
	 * 标示抛弃这个Engine
	 */
	public void discard() {
		isDiscard = true;
		this.uiHandler = null;
	}
	
	/**
	 * 是否被某个用户（UI）使用。
	 * @return
	 */
	public boolean isUsing() {
		return uiHandler != null;
	}
	
	/**
	 * 获得扫描结果，用户通过Manager获得结果，这里限定方法访问范围
	 * @return
	 */
	ArrayList<ScanResultModel> getScanResult() {
		return mResults;
	}
	
	/**
	 * 重置扫描结果List
	 */
	private void resetResultInfo() {
		if (mResults != null)
			mResults.clear();
		else 
			mResults = new ArrayList<ScanResultModel>();
	}

	/**
	 * 设置杀毒引擎的扫描状态
	 * 
	 * @param status
	 */
	private void setState(int _state) {
		this.state = _state;
		
		// 输出Log
		switch (state) {
			case SCAN_STATUS_IDLE:
	
				Log.d("VirusScanEngine", "setState: SCAN_STATUS_IDLE");
				break;
			case SCAN_STATUS_INIT:
	
				Log.d("VirusScanEngine", "setState: SCAN_STATUS_INIT");
				break;
			case SCAN_STATUS_SCANNING:
	
				Log.d("VirusScanEngine", "setState: SCAN_STATUS_SCANNING");
				break;
			case SCAN_STATUS_PAUSED:
	
				Log.d("VirusScanEngine", "setState: SCAN_STATUS_PAUSED");
				break;
			case SCAN_STATUS_CANCELING:
	
				Log.d("VirusScanEngine", "setState: SCAN_STATUS_CANCELING");
				break;
			case SCAN_STATUS_FINISHING:
	
				Log.d("VirusScanEngine", "setState: SCAN_STATUS_FINISHING");
				break;
		}
			
	}

	/**
	 * 发送空消息 Handler通知
	 */
	private void sendHandlerMessage(int what) {
		if (hasUIHandler()) {
			this.uiHandler.sendEmptyMessage(what);
			Log.d("VirusScanEngine", "sendHandlerMessage:" + what);
		}
	}
	/**
	 * 发消息 Handler通知
	 */
	private void sendHandlerMessage(Object obj, int what) {
		if (null != this.uiHandler) {
			Message msg = new Message();
			msg.what = what;
			msg.obj = obj;
			this.uiHandler.sendMessage(msg);
			Log.d("VirusScanEngine", "sendHandlerMessage:" + what);
		}
	}

	/**
	 * 判断Manager里是否有设置了UI交互用的Handler
	 * 
	 * @return
	 */
	private boolean hasUIHandler() {
		return this.uiHandler != null;
	}

	/**
	 * 是否是问题APK
	 * @param entity
	 * @return
	 */
	private boolean isProblemApk(ScanResultModel entity) {
		boolean isProblemApk = false;
		switch (entity.type) {
			case QScanConstants.TYPE_AD_BLOCK:
			case QScanConstants.TYPE_NOT_OFFICIAL:
			case QScanConstants.TYPE_RISK:
			case QScanConstants.TYPE_VIRUS:
				isProblemApk = true;
				break;
			case QScanConstants.TYPE_OK:
			case QScanConstants.TYPE_UNKNOWN:
				isProblemApk = false;
				break;
			default:
				entity.type = QScanConstants.TYPE_RISK;
				isProblemApk = true;
				Log.e("VirusScanEngine", "A wrong result.type is found.");
				break;
		}

		return isProblemApk;
	}
	
	/**
	 * 发送结束通知到UI线程
	 * @param isSafe
	 */
	private void sendFinishedScanMsg(boolean isSafe) {
		if (null != uiHandler) {
			Message msg = new Message();
			msg.what = HANDLER_SCAN_FINISH;
			msg.obj = mResults;
			if (isSafe) {
				msg.arg1 = UIConstants.CONST_SCAN_RESULT_SAFE;
			} else {
				msg.arg1 = UIConstants.CONST_SCAN_RESULT_UNSAFE;
			}

			uiHandler.sendMessage(msg);
			Log.d("VirusScanEngine", "sendHandlerMessage:" + HANDLER_SCAN_FINISH);
		}
	}
	
	/**
	 * 病毒扫描处理监听器
	 * @ClassName: VirusScanProcessListener
	 * @Description:TODO(这里用一句话描述这个类的作用)
	 * @author: Jess Yan
	 * @date: 2013-3-5 下午12:22:37
	 *
	 */
	private class VirusScanProcessListener extends QScanListener {

		/** 白名单集合*/
		private List<ScanResultModel> whiteLists ;

		public VirusScanProcessListener() {
			whiteLists = VirusWhiteListManager.getInstance().getAll() ;
		}
		/**
		 * 是否在白名单中
		 * 
		 * @param result
		 * @return
		 */
		private boolean isInWhiteList(QScanResultEntity result) {

			if (this.whiteLists != null && !this.whiteLists.isEmpty() && result != null) {

				for (ScanResultModel temMode : whiteLists) {
					// 签名 + 包名判断
					if (result.packageName != null && result.certMd5 != null
							&& result.packageName.equals(temMode.packageName)
							&& result.certMd5.equals(temMode.signature)) {
						return true;
					}
				}
			}
			return false;
		}
		
		/**
		 * 扫描开始回调
		 */
		@Override
		public void onScanStarted() {
			Log.d("VirusScanEngine", "  [SDK]onScanStarted... ");
			setState(SCAN_STATUS_SCANNING);
			
			// 扫描引擎已经开始进行扫描后 handler通知
			sendHandlerMessage(HANDLER_SCAN_START);
		}

		/**
		 * 手机APP扫描中
		 */
		@Override
		public void onPackageScanProgress(int progress, QScanResultEntity result) {
			
			Log.d("VirusScanEngine", "  [SDK]onPackageScanProgress... progress:" + progress
					+ " softName:" + result.softName + " pkgName:"
					+ result.packageName + " type:" + result.type + " apkType:"
					+ result.apkType + " advice:" + result.advice
					+ " malwareid:" + result.malwareid + " path:" + result.path
					+ " desc:" + result.discription);
			
			setState(SCAN_STATUS_SCANNING);
			
			// 构造
			ScanResultModel virusUIModel = new ScanResultModel(result);
			
			// 软件扫描位置类型(PKG)
			virusUIModel.softScanAddress = ScanResultModel.SOFT_SCAN_ADDRESS_PKG;

			// 扫描进度
			virusUIModel.progress = progress;
			
			// 排除掉白名单中的病毒
			if(isInWhiteList(result)){
				virusUIModel.type = QScanConstants.TYPE_OK;
			}
			
			// 图标
			//virusUIModel.appIcon = AppIconUtil.getAppIcon(virusUIModel.packageName);
			
			// 手机本地扫描过程中，扫描完一个APP后的handler通知
			sendHandlerMessage(virusUIModel, HANDLER_PACKAGE_SCANNING);
		}
		
		/**
		 * SD卡APK扫描中
		 */
		@Override
		public void onSdcardScanProgress(int progress, QScanResultEntity result) {
			Log.d("VirusScanEngine", "  [SDK]onSdcardScanProgress... progress:" + progress
					+ " softName:" + result.softName + " pkgName:"
					+ result.packageName + " type:" + result.type + " apkType:"
					+ result.apkType + " advice:" + result.advice
					+ " malwareid:" + result.malwareid + " path:" + result.path
					+ " desc:" + result.discription);
			
			setState(SCAN_STATUS_SCANNING);
			
			// 构造
			ScanResultModel virusUIModel = new ScanResultModel(result);
			
			// 软件扫描位置类型(SD)
			virusUIModel.softScanAddress = ScanResultModel.SOFT_SCAN_ADDRESS_SD;
			
			// 扫描进度
			virusUIModel.progress = progress;
			
			// 排除掉白名单中的病毒
			if(isInWhiteList(result)){
				virusUIModel.type = QScanConstants.TYPE_OK;
			}

			// 图标
			//virusUIModel.appIcon = AppIconUtil.getApkIcon(virusUIModel.path);
			
			// 手机本地扫描过程中，扫描完一个APK后的handler通知
			sendHandlerMessage(virusUIModel, HANDLER_SDCARD_SCANNING);
		}

		/**
		 * 云查杀开始的回调
		 */
		@Override
		public void onCloudScan() {
			Log.d("VirusScanEngine", "  [SDK]onCloudScan... ");
			setState(SCAN_STATUS_SCANNING);
			
			// 开始云扫描 handler通知
			sendHandlerMessage(HANDLER_CLOUD_SCANNING);
		}

		/**
		 * 云查杀错误回调
		 */
		@Override
		public void onCloudScanError(int errCode) {
			Log.d("VirusScanEngine", "  [SDK]onCloudScanError... ");

			// 设置杀毒引擎的扫描状态(扫描中)
			setState(SCAN_STATUS_SCANNING);

			// 云扫描发生错误 handler通知
			sendHandlerMessage(Integer.valueOf(errCode), HANDLER_CLOUD_ERROR);
		}

		/**
		 * 扫描引擎暂停
		 */
		@Override
		public void onScanPaused() {
			Log.d("VirusScanEngine", "  [SDK]onScanPaused... ");
			
			// 设置杀毒引擎的扫描状态(暂停)
			setState(SCAN_STATUS_PAUSED);

			// 扫描被暂停后 handler通知
			sendHandlerMessage(HANDLER_SCAN_PAUSED);
		}

		/**
		 * 扫描引擎恢复杀毒
		 */
		@Override
		public void onScanContinue() {
			Log.d("VirusScanEngine", "  [SDK]onScanContinue... ");

			// 设置杀毒引擎的扫描状态(扫描中)
			setState(SCAN_STATUS_SCANNING);

			// 继续扫描后发消息 handler通知
			sendHandlerMessage(HANDLER_SCAN_CONTINUE);
		}

		/**
		 * 杀毒终止
		 */
		@Override
		public void onScanCanceled() {
			Log.d("VirusScanEngine", "  [SDK]onScanCanceled... ");
			
			// 扫描取消后发消息 handler通知
			sendHandlerMessage(HANDLER_SCAN_CANCEL);
		}

		/**
		 * 病毒扫描结束，返回扫描结果
		 */
		@Override
		public void onScanFinished(ArrayList<QScanResultEntity> results) {

			// 设置杀毒引擎的扫描状态(Finishing中)
			setState(SCAN_STATUS_FINISHING);

			safeFlag = true ;
			
			for (QScanResultEntity entity : results) {
				
				Log.d("VirusScanEngine", "  [SDK]onScanFinished... "
						+ " softName:" + entity.softName + " pkgName:"
						+ entity.packageName + " type:" + entity.type + " apkType:"
						+ entity.apkType + " advice:" + entity.advice
						+ " malwareid:" + entity.malwareid + " path:" + entity.path
						+ " desc:" + entity.discription);
				
				// jess1201:需求变更，追加
				// lee 20130117灰度2.0二次修订 添加SD卡路径描述（风险 ，病毒，且在SD卡中）
				ScanResultModel model = new ScanResultModel(entity);
				// 获取应用图标
				// 线程中获取图标，恢复到UI线程中获取
//				if(model.softScanAddress == ScanResultModel.SOFT_SCAN_ADDRESS_SD){
//					model.appIcon = AppIconUtil.getApkIcon(model.path) ;
//				}else{
//					model.appIcon = AppIconUtil.getAppIcon(model.packageName) ;
//				}
				
				// 扫描结果中追加问题的应用
				if (isProblemApk(model)) {
					
					boolean isInWhiteList = false;

					// 是否在白名单中，包名 + 签名 判断
					if(this.isInWhiteList(entity)){
						model.type = QScanConstants.TYPE_OK;
						isInWhiteList = true;
					}
					
					if(!isInWhiteList){
						// 更新Notification里 手机的安全状态(不安全)
						safeFlag = false;
						
						// 广告无详细描述时,设置默认文案
						if ((QScanConstants.TYPE_AD_BLOCK == entity.type)
								&& (null == entity.discription || entity.discription.length() == 0)) {

							model.virusDesc = MainApplication.getContext().getResources().getString(
									R.string.vvcl_the_software_has_YYY_needed);
						} else

						// 风险无详细描述，设置默认文案
						if ((QScanConstants.TYPE_RISK == entity.type)
								&& (null == entity.discription || entity.discription.length() == 0)) {
							model.virusDesc = MainApplication.getContext().getResources().getString(
									R.string.vvcl_the_software_has_YYYY_needed);
						}
						
						// 病毒/风险分类(不是病毒的统一为风险,用于UI结果列表分类)
						if (QScanConstants.TYPE_VIRUS != entity.type) {
							model.type = QScanConstants.TYPE_RISK;
						}
					}
					
					//风险、病毒上报
					WinmessAppReportManager.getInstance().saveVirusData(entity.softName, entity.packageName, AppReportEntity.APP_VIRUS, entity.name, entity.type);
				}

				
				if (model.softScanAddress == ScanResultModel.SOFT_SCAN_ADDRESS_SD && model.isProblemApk()) {
					String sdPath = model.path;
					if (sdPath != null && sdPath.length() != 0) {
						 sdPath += "\r\n\r\n" ;
						 model.virusDesc = sdPath + model.virusDesc ;
					}
				}
				
				mResults.add(model);
			}
			whiteLists.clear() ;
			
			// 更新Notification里 手机的安全状态
			StatusBarManager.getInstance().updateMobileStatus(safeFlag);
		}
	}
}