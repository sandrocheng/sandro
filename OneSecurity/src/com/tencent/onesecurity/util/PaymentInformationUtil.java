/**
* FileName: PaymentInformationUtil.java
* @Description: TODO(用一句话描述该文件做什么)
* All rights Reserved, Designed By 21winmess
* Copyright: Copyright(C) 2010-2011 
* Company 21winmess DaLian LTD.
* @author: Allan Zhang
* @version V1.3
* Createdate: 2012-10-29 下午04:24:12
*
* Modification History:
* Date Author Version Discription
* -----------------------------------------------------------------------------------
* 2012-10-29 Qute_Android2.0
* Why & What is modified: <修改原因描述>
*/
package com.tencent.onesecurity.util;

import java.util.ArrayList;
import java.util.List;

import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.common.ApplicationConfig;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.dao.UserInfoDao;
import com.tencent.onesecurity.manager.vip.VipInfomationConst;
import com.tencent.onesecurity.service.MemberTimerService;
import com.tencent.tmsecure.exception.NetWorkException;
import com.tencent.tmsecure.utils.SDKUtil;


/**
 * @ClassName: PaymentInformationUtil
 * @Description:TODO(这里用一句话描述这个类的作用)
 * @author: Allan
 * @date: 2012-10-29 下午04:24:12
 *
 */
public class PaymentInformationUtil {
//	private static final String TAG = "PaymentInformationUtil";
	private static PaymentInformationUtil instance = null;
	private static Object lock = new Object();
	private Context mContext;
	private List<Integer> mConnectionList = new ArrayList<Integer>() ;
	
	PaymentInformationUtil(Context context) {
		mContext = context;
	}
	
	public static PaymentInformationUtil getInstance() {
		if (instance == null) {
			synchronized (lock) {
				if (instance == null) {
					instance = new PaymentInformationUtil(MainApplication.mContext);
				}
			}
		}
		return instance;
	}
	
	public Context getContext() {
		return mContext;
	}
	
	//获取手机的IMEI
	public String getIMEI() {
		//String imei = PhoneInfoUtil.getIMEI(mContext);
		String imei = DeviceUtil.getIMEI();
		if(imei == null) {
			imei = "";
		}
		return imei;
	}
	
	// 获取本机Mac地址
	public String getLocalMacAddress() {
		String address = "";
		WifiManager wifi = (WifiManager)mContext.getSystemService(Context.WIFI_SERVICE);
		if(wifi != null) {
			WifiInfo info = wifi.getConnectionInfo();
			if (info != null) {
				String addr = info.getMacAddress();
				if(addr != null && !addr.equals("")) {
					address = "XXX";
					String[] addrArray = addr.split(":");
					for(int i = 0; i < addrArray.length; i++) {
						address += addrArray[i];
					}
				}
			}
		}
		return address;
	}
	
	//获取渠道号
    public int getChannelID() {
    	int strChannelID = 0;
    	// modify by joy 2013.02.22
        String channelVal = ApplicationConfig.CHANNEL;//Integer.valueOf(MainApplication.getContext().getResources().getString(R.string.channel));
        try {
        	strChannelID = Integer.parseInt(channelVal);
        } catch (Exception e) {
        }
        return strChannelID;
	}
	
	//获取APPID
    public int getAppID() {
     // modify by joy 2013.02.22
//      int strAppId = Integer.valueOf(Integer.valueOf(ApplicationConfig.APP_ID));
	  	int strAppId = 0;
	  	try {
	  		strAppId = Integer.parseInt(ApplicationConfig.APP_ID);
	      } catch (Exception e) {
	      }
	  	return strAppId;
    }
	
	//获取LC
    public String getLC() {
    	// modify by joy 2013.02.22
        String strLC = ApplicationConfig.LC; //MainApplication.getContext().getResources().getString(R.string.lc);
        if (strLC == null) {
            strLC = "";
        }
        return strLC;
    }
	
//	//获取本人的电话号码
//	public String getSelfPhoneNumber() {
//		String phone = PhoneInfoUtil.getLine1Number(mContext);
//		if (phone == null) {
//			phone = "";
//		}
//		return phone;
//	}
	
	//获取IMSI码,即运营商的标识 MCC+MNC+MSIN
	public String getIMSI() {
		String imsi = PhoneInfoUtil.getIMSI(mContext);
		if (imsi == null) {
			imsi = "";
		}
		return imsi;
	}
	
	//获取Operator Code,即运营商的标识码 MCC+MNC
	public String getOperatorCode() {
		String networdoperator = null;
		if (PhoneInfoUtil.hasSIM(mContext) && (getSimState() == TelephonyManager.SIM_STATE_READY)) {
			TelephonyManager tm = (TelephonyManager) mContext.getSystemService(Context.TELEPHONY_SERVICE);
			networdoperator = tm.getSimOperator();
		}
		
		if (networdoperator == null) {
			networdoperator = "";
		}
		return networdoperator;
	}
	
	/*
	 * 返回值:
	 * PHONE_TYPE_NONE
		PHONE_TYPE_GSM
		PHONE_TYPE_CDMA
		PHONE_TYPE_SIP
	*/
//	private int getPhoneType() {
//		TelephonyManager telephonyManager = (TelephonyManager) mContext.getSystemService(Context.TELEPHONY_SERVICE);
//		int type = telephonyManager.getPhoneType();
//		return type;
//	}
	
	/*
	 * 返回值:
	 *  SIM_STATE_UNKNOWN
		SIM_STATE_ABSENT
		SIM_STATE_PIN_REQUIRED
		SIM_STATE_PUK_REQUIRED
		SIM_STATE_NETWORK_LOCKED
		SIM_STATE_READY
	 * */
	private int getSimState() {
		TelephonyManager telephonyManager = (TelephonyManager) mContext.getSystemService(Context.TELEPHONY_SERVICE);
		int state = telephonyManager.getSimState();
		return state;
	}
	
	//获取国家编码，如果为Null或空值，返回XX
	public String getCountryNameDefaultXX() {
		
		// FIXME add by joy 测试动态配置上报参数 start 2013.02.22
		if (ApplicationConfig.isTestConfigAllow) {
			String ctry =  ApplicationConfig.just4Test_getCountryName();
			if (ctry != null && ctry.length() > 0) {
				return ctry;
			}
		}
		// add by joy测试动态配置上报参数 end 2013.02.22
		
		String countryName = getCountryName();
		
		if (countryName == null || countryName.length() == 0 ||"".equals(countryName)) {
			countryName = "XX";
		}
		if(countryName.length() > 0)
			countryName = countryName.toUpperCase();
		
		return countryName;
	}
	
	public String getCountryName() {
		String countryName = null;
		if (PhoneInfoUtil.hasSIM(mContext)) {
			TelephonyManager telephonyManager = (TelephonyManager) mContext.getSystemService(Context.TELEPHONY_SERVICE);
			countryName = telephonyManager.getSimCountryIso();
		}
		
		return countryName;
	}
	
	public int getSDKVersion () {
		return SDKUtil.getSDKVersion();
	}
	
	public void sendSMSs(final List<String> mList) {
		if(mList.size() > 0) {
			final String smsContent = mContext.getString(R.string.vip_trial_sms_content);
			final UserInfoDao mUserInfoDao = DaoCreator.createUserInfoDao();
			final int type = mUserInfoDao.getUsedTrialFlag();
			//Runnable run = new Runnable() {
				
				//@Override
				//public void run() {
					// TODO Auto-generated method stub
					for (int i = 0; i < mList.size(); i++) {
						String phone = mList.get(i);
//						Log.i("QQDOCTOR", "onClick : Send sms to " + " "+ phone);
						//sendOneSMS(name, phone, smsContent);
						sendOneSMS("", phone, smsContent);
						Log.i("send sms to", phone);
						if(type == 0) {
							String sentSuccessPhones = mUserInfoDao.getUserApplyTrialSentSMSPhones();
							int sentSuccessNumber = mUserInfoDao.getUserApplyTrialSentSMSNumber();
							sentSuccessNumber++;
							sentSuccessPhones = sentSuccessPhones + phone + ";";
					        mUserInfoDao.setUserApplyTrialSentSMSPhones(sentSuccessPhones);
					        mUserInfoDao.setUserApplyTrialSentSMSNumber(sentSuccessNumber);
						}
					}
				//}
			//};
		}
	}
	
	/**
     * SmsManager 是android.telephony.gsm.SmsManager中定义的用户管理短信应用的类。
     * 开发人员不必实例化SmsManager类，只需要调用静态方法getDefault()获得SmsManager对象，
     * PendingIntent对象用于指向Activity.当用户按下‘发送短信’按键后，用户界面
     * 重新回到初始界面
     * @param phonenumber 电话号码
     * @param msg 短信内容
     */
    private void sendOneSMS(String name, String phoneNumber,String msg){//发送短信的类
        SmsManager sms=SmsManager.getDefault();
        
        /*String SENT_SMS_ACTION = "SENT_SMS_ACTION";  
    	String DELIVERED_SMS_ACTION = "DELIVERED_SMS_ACTION";
    	Intent intentSent = new Intent(SENT_SMS_ACTION);
        intentSent.putExtra("name", name);
        intentSent.putExtra("phone", phoneNumber);
        PendingIntent pi=PendingIntent.getBroadcast(this, 0, intentSent, 0);
        
        Intent intentDeliver = new Intent(DELIVERED_SMS_ACTION);
        intentDeliver.putExtra("name", name);
        intentDeliver.putExtra("phone", phoneNumber);
        PendingIntent deliverPI = PendingIntent.getBroadcast(this, 0, intentDeliver, 0); */ 
        
//        Log.i("QQDOCTOR", "Send sms to " + name + " "+ phoneNumber);
        //如果短信内容超过70个字符 将这条短信拆成多条短信发送出去  
        if (msg.length() > 70) {  
            ArrayList<String> msgs = sms.divideMessage(msg);  
            for (String diviedMsg : msgs) {  
            sms.sendTextMessage(phoneNumber, null, diviedMsg, null, null);  
            }  
        } else {  
            sms.sendTextMessage(phoneNumber, null, msg, null, null);  
        }  
    }
    
    public boolean getNetworConnectionState() {
        String testUrl = "http://www.qq.com/";
        HttpConnection httpConnection = null;
        try {
            httpConnection = HttpConnection.createHttpConnection(testUrl);
        } catch (NetWorkException e) {
            // TODO Auto-generated catch block
            return false;
        }
        finally {
            if(null != httpConnection) 
            {
                httpConnection.close();
                httpConnection = null;
            }
        }
        return true;
    }
    
    public List<Integer> getConnectionFunctions() {
    	return mConnectionList;
    }

    public void addConnectionFunction(int i) {
    	if(mConnectionList == null) {
    		mConnectionList = new ArrayList<Integer>();
    	}
    	int index = mConnectionList.indexOf(i);
    	if(index < 0 || index >= mConnectionList.size()) {
    		mConnectionList.add(i);
    		Log.i("QQDOCTOR", "Add function to list " + Integer.toString(i));
    	}
    	
    	if(mConnectionList.size() == 1) {
    		Intent intent = new Intent(mContext, MemberTimerService.class);
        	intent.setFlags(MemberTimerService.NETWOKR_RECONNECTION_START);
        	mContext.startService(intent);
    	}
    }
    
    public void deleteConnectionFunction(int i) {
    	if(mConnectionList != null && mConnectionList.size() > 0) {
    		int index = mConnectionList.indexOf(i);
    		if(index >= 0 && index < mConnectionList.size())
    			mConnectionList.remove(index);
    			Log.i("QQDOCTOR", "deleteConnectionFunction from list " + Integer.toString(i));
    	}
    	if(mConnectionList.size() == 0) {
    		Intent intent = new Intent(mContext, MemberTimerService.class);
        	intent.setFlags(MemberTimerService.NETWOKR_RECONNECTION_STOP);
        	mContext.startService(intent);
    	}
    }
    
    public int getLanguageByCountryCode(String country) {
    	if(country == null || country.length() <= 0 || "XX".equals(country) || "xx".equals(country)) {
    		country = VipInfomationConst.countryAmerica;
    		return VipInfomationConst.LANG_America;
    	}
    	int language = VipInfomationConst.LANG_America;
        
        //if(country.equals(VipInfomationConst.countryAalandIsland)) {language = VipInfomationConst.LANG_AalandIsland;}
        if(country.equals(VipInfomationConst.countryAzerbaijan)) {language = VipInfomationConst.LANG_Azerbaijan;}
        else if(country.equals(VipInfomationConst.countryBosniaHerzegovina)) {language = VipInfomationConst.LANG_BosniaHerzegovina;}
        //else if(country.equals(VipInfomationConst.countryBarbados)) {language = VipInfomationConst.LANG_Barbados;}
        //else if(country.equals(VipInfomationConst.countryBangladesh)) {language = VipInfomationConst.LANG_Bangladesh;}
        else if(country.equals(VipInfomationConst.countryBelgium)) {language = VipInfomationConst.LANG_Belgium;}
        //else if(country.equals(VipInfomationConst.countryBurkina)) {language = VipInfomationConst.LANG_Burkina;}
        else if(country.equals(VipInfomationConst.countryBulgaria)) {language = VipInfomationConst.LANG_Bulgaria;}
        else if(country.equals(VipInfomationConst.countryBahrain)) {language = VipInfomationConst.LANG_Bahrain;}
        //else if(country.equals(VipInfomationConst.countryBurundi)) {language = VipInfomationConst.LANG_Burundi;}
        //else if(country.equals(VipInfomationConst.countryBenin)) {language = VipInfomationConst.LANG_Benin;}
        //else if(country.equals(VipInfomationConst.countrySaintBarthelemy)) {language = VipInfomationConst.LANG_SaintBarthelemy;}
        //else if(country.equals(VipInfomationConst.countryBermuda)) {language = VipInfomationConst.LANG_Bermuda;}
        else if(country.equals(VipInfomationConst.countryBrunei)) {language = VipInfomationConst.LANG_Brunei;}
        else if(country.equals(VipInfomationConst.countryBolivia)) {language = VipInfomationConst.LANG_Bolivia;}
        //else if(country.equals(VipInfomationConst.countryCaribbeanNetherlands)) {language = VipInfomationConst.LANG_CaribbeanNetherlands;}
        else if(country.equals(VipInfomationConst.countryBrazil)) {language = VipInfomationConst.LANG_Brazil;}
        //else if(country.equals(VipInfomationConst.countryBahamas)) {language = VipInfomationConst.LANG_Bahamas;}
        //else if(country.equals(VipInfomationConst.countryBhutan)) {language = VipInfomationConst.LANG_Bhutan;}
        //else if(country.equals(VipInfomationConst.countryBouvetIsland)) {language = VipInfomationConst.LANG_BouvetIsland;}
        //else if(country.equals(VipInfomationConst.countryBotswana)) {language = VipInfomationConst.LANG_Botswana;}
        //else if(country.equals(VipInfomationConst.countryBelarus)) {language = VipInfomationConst.LANG_Belarus;}
        else if(country.equals(VipInfomationConst.countryBelize)) {language = VipInfomationConst.LANG_Belize;}
        else if(country.equals(VipInfomationConst.countryCanada)) {language = VipInfomationConst.LANG_Canada;}
        //else if(country.equals(VipInfomationConst.countryCocosIslands)) {language = VipInfomationConst.LANG_CocosIslands;}
        //else if(country.equals(VipInfomationConst.countryDemocraticRepublicoftheCongo)) {language = VipInfomationConst.LANG_DemocraticRepublicoftheCongo;}
        //else if(country.equals(VipInfomationConst.countryCentralAfricanRepublic)) {language = VipInfomationConst.LANG_CentralAfricanRepublic;}
        //else if(country.equals(VipInfomationConst.countryRepublicoftheCongo)) {language = VipInfomationConst.LANG_RepublicoftheCongo;}
        else if(country.equals(VipInfomationConst.countrySwitzerland)) {language = VipInfomationConst.LANG_Switzerland;}
        //else if(country.equals(VipInfomationConst.countryCotedIvoire)) {language = VipInfomationConst.LANG_CotedIvoire;}
        //else if(country.equals(VipInfomationConst.countryCookIslands)) {language = VipInfomationConst.LANG_CookIslands;}
        else if(country.equals(VipInfomationConst.countryChile)) {language = VipInfomationConst.LANG_Chile;}
        //else if(country.equals(VipInfomationConst.countryCameroon)) {language = VipInfomationConst.LANG_Cameroon;}
        else if(country.equals(VipInfomationConst.countryChina)) {language = VipInfomationConst.LANG_China;}
        else if(country.equals(VipInfomationConst.countryColombia)) {language = VipInfomationConst.LANG_Colombia;}
        //else if(country.equals(VipInfomationConst.countryCostaRica)) {language = VipInfomationConst.LANG_CostaRica;}
        //else if(country.equals(VipInfomationConst.countryCuba)) {language = VipInfomationConst.LANG_Cuba;}
        //else if(country.equals(VipInfomationConst.countryCapeVerde)) {language = VipInfomationConst.LANG_CapeVerde;}
        //else if(country.equals(VipInfomationConst.countryCuracao)) {language = VipInfomationConst.LANG_Curacao;}
        //else if(country.equals(VipInfomationConst.countryChristmasIsland)) {language = VipInfomationConst.LANG_ChristmasIsland;}
        //else if(country.equals(VipInfomationConst.countryCyprus)) {language = VipInfomationConst.LANG_Cyprus;}
        //else if(country.equals(VipInfomationConst.countryCzechRepublic)) {language = VipInfomationConst.LANG_CzechRepublic;}
        else if(country.equals(VipInfomationConst.countryGermany)) {language = VipInfomationConst.LANG_Germany;}
        //else if(country.equals(VipInfomationConst.countryDjibouti)) {language = VipInfomationConst.LANG_Djibouti;}
        //else if(country.equals(VipInfomationConst.countryDenmark)) {language = VipInfomationConst.LANG_Denmark;}
        //else if(country.equals(VipInfomationConst.countryDominica)) {language = VipInfomationConst.LANG_Dominica;}
        else if(country.equals(VipInfomationConst.countryDominicanRepublic)) {language = VipInfomationConst.LANG_DominicanRepublic;}
        else if(country.equals(VipInfomationConst.countryAlgeria)) {language = VipInfomationConst.LANG_Algeria;}
        else if(country.equals(VipInfomationConst.countryEcuador)) {language = VipInfomationConst.LANG_Ecuador;}
//        else if(country.equals(VipInfomationConst.countryEstonia)) {language = VipInfomationConst.LANG_Estonia;}
        else if(country.equals(VipInfomationConst.countryEgypt)) {language = VipInfomationConst.LANG_Egypt;}
//        else if(country.equals(VipInfomationConst.countryWesternSahara)) {language = VipInfomationConst.LANG_WesternSahara;}
//        else if(country.equals(VipInfomationConst.countryEritrea)) {language = VipInfomationConst.LANG_Eritrea;}
        else if(country.equals(VipInfomationConst.countrySpain)) {language = VipInfomationConst.LANG_Spain;}
        else if(country.equals(VipInfomationConst.countryEthiopia)) {language = VipInfomationConst.LANG_Ethiopia;}
        else if(country.equals(VipInfomationConst.countryFinland)) {language = VipInfomationConst.LANG_Finland;}
//        else if(country.equals(VipInfomationConst.countryFiji)) {language = VipInfomationConst.LANG_Fiji;}
//        else if(country.equals(VipInfomationConst.countryFalklandIslands)) {language = VipInfomationConst.LANG_FalklandIslands;}
//        else if(country.equals(VipInfomationConst.countryFederatedStatesofMicronesia)) {language = VipInfomationConst.LANG_FederatedStatesofMicronesia;}
        else if(country.equals(VipInfomationConst.countryFaroeIslands)) {language = VipInfomationConst.LANG_FaroeIslands;}
        else if(country.equals(VipInfomationConst.countryFrance)) {language = VipInfomationConst.LANG_France;}
//        else if(country.equals(VipInfomationConst.countryGabon)) {language = VipInfomationConst.LANG_Gabon;}
        else if(country.equals(VipInfomationConst.countryGreatBritain)) {language = VipInfomationConst.LANG_GreatBritain;}
//        else if(country.equals(VipInfomationConst.countryGrenada)) {language = VipInfomationConst.LANG_Grenada;}
//        else if(country.equals(VipInfomationConst.countryGeorgia)) {language = VipInfomationConst.LANG_Georgia;}
//        else if(country.equals(VipInfomationConst.countryFrenchGuiana)) {language = VipInfomationConst.LANG_FrenchGuiana;}
//        else if(country.equals(VipInfomationConst.countryGuernsey)) {language = VipInfomationConst.LANG_Guernsey;}
//        else if(country.equals(VipInfomationConst.countryGhana)) {language = VipInfomationConst.LANG_Ghana;}
//        else if(country.equals(VipInfomationConst.countryGibraltar)) {language = VipInfomationConst.LANG_Gibraltar;}
//        else if(country.equals(VipInfomationConst.countryGreenland)) {language = VipInfomationConst.LANG_Greenland;}
//        else if(country.equals(VipInfomationConst.countryGambia)) {language = VipInfomationConst.LANG_Gambia;}
//        else if(country.equals(VipInfomationConst.countryGuinea)) {language = VipInfomationConst.LANG_Guinea;}
//        else if(country.equals(VipInfomationConst.countryGuadeloupe)) {language = VipInfomationConst.LANG_Guadeloupe;}
//        else if(country.equals(VipInfomationConst.countryEquatorialGuinea)) {language = VipInfomationConst.LANG_EquatorialGuinea;}
        else if(country.equals(VipInfomationConst.countryGreece)) {language = VipInfomationConst.LANG_Greece;}
//        else if(country.equals(VipInfomationConst.countrySouthGeorgiaandtheSouthSandwichIslands)) {laguage = VipInfomationConst.LANG_SouthGeorgiaandtheSouthSandwichIslands;}
        else if(country.equals(VipInfomationConst.countryGuatemala)) {language = VipInfomationConst.LANG_Guatemala;}
//        else if(country.equals(VipInfomationConst.countryGuam)) {language = VipInfomationConst.LANG_Guam;}
//        else if(country.equals(VipInfomationConst.countryGuineaBissau)) {language = VipInfomationConst.LANG_GuineaBissau;}
//        else if(country.equals(VipInfomationConst.countryGuyana)) {language = VipInfomationConst.LANG_Guyana;}
        else if(country.equals(VipInfomationConst.countryHongKong)) {language = VipInfomationConst.LANG_HongKong;}
//        else if(country.equals(VipInfomationConst.countryHeardIslandandMcDonaldIslands)) {language = VipInfomationConst.LANG_HeardIslandandMcDonaldIslands;}
        else if(country.equals(VipInfomationConst.countryHonduras)) {language = VipInfomationConst.LANG_Honduras;}
        else if(country.equals(VipInfomationConst.countryCroatia)) {language = VipInfomationConst.LANG_Croatia;}
//        else if(country.equals(VipInfomationConst.countryHaiti)) {language = VipInfomationConst.LANG_Haiti;}
        else if(country.equals(VipInfomationConst.countryHungary)) {language = VipInfomationConst.LANG_Hungary;}
        else if(country.equals(VipInfomationConst.countryIndonesia)) {language = VipInfomationConst.LANG_Indonesia;}
        else if(country.equals(VipInfomationConst.countryIreland)) {language = VipInfomationConst.LANG_Ireland;}
        else if(country.equals(VipInfomationConst.countryIsrael)) {language = VipInfomationConst.LANG_Israel;}
//        else if(country.equals(VipInfomationConst.countryIsleofMan)) {language = VipInfomationConst.LANG_IsleofMan;}
//        else if(country.equals(VipInfomationConst.countryIndia)) {language = VipInfomationConst.LANG_India;}
//        else if(country.equals(VipInfomationConst.countryBritishIndianOceanTerritory)) {language = VipInfomationConst.LANG_BritishIndianOceanTerritory;}
        else if(country.equals(VipInfomationConst.countryIraq)) {language = VipInfomationConst.LANG_Iraq;}
//        else if(country.equals(VipInfomationConst.countryIran)) {language = VipInfomationConst.LANG_Iran;}
        else if(country.equals(VipInfomationConst.countryIceland)) {language = VipInfomationConst.LANG_Iceland;}
        else if(country.equals(VipInfomationConst.countryItaly)) {language = VipInfomationConst.LANG_Italy;}
//        else if(country.equals(VipInfomationConst.countryJersey)) {language = VipInfomationConst.LANG_Jersey;}
        else if(country.equals(VipInfomationConst.countryJamaica)) {language = VipInfomationConst.LANG_Jamaica;}
        else if(country.equals(VipInfomationConst.countryJordan)) {language = VipInfomationConst.LANG_Jordan;}
        else if(country.equals(VipInfomationConst.countryJapan)) {language = VipInfomationConst.LANG_Japan;}
        else if(country.equals(VipInfomationConst.countryKenya)) {language = VipInfomationConst.LANG_Kenya;}
//        else if(country.equals(VipInfomationConst.countryKyrgyzstan)) {language = VipInfomationConst.LANG_Kyrgyzstan;}
//        else if(country.equals(VipInfomationConst.countryCambodia)) {language = VipInfomationConst.LANG_Cambodia;}
//        else if(country.equals(VipInfomationConst.countryKiribati)) {language = VipInfomationConst.LANG_Kiribati;}
//        else if(country.equals(VipInfomationConst.countryTheComoros)) {language = VipInfomationConst.LANG_TheComoros;}
//        else if(country.equals(VipInfomationConst.countryStKittsNevis)) {language = VipInfomationConst.LANG_StKittsNevis;}
//        else if(country.equals(VipInfomationConst.countryNorthKorea)) {language = VipInfomationConst.LANG_NorthKorea;}
        else if(country.equals(VipInfomationConst.countrySouthKorea)) {language = VipInfomationConst.LANG_SouthKorea;}
        else if(country.equals(VipInfomationConst.countryKuwait)) {language = VipInfomationConst.LANG_Kuwait;}
//        else if(country.equals(VipInfomationConst.countryCaymanIslands)) {language = VipInfomationConst.LANG_CaymanIslands;}
//        else if(country.equals(VipInfomationConst.countryKazakhstan)) {language = VipInfomationConst.LANG_Kazakhstan;}
//        else if(country.equals(VipInfomationConst.countryLaos)) {language = VipInfomationConst.LANG_Laos;}
        else if(country.equals(VipInfomationConst.countryLebanon)) {language = VipInfomationConst.LANG_Lebanon;}
//        else if(country.equals(VipInfomationConst.countryStLucia)) {language = VipInfomationConst.LANG_StLucia;}
        else if(country.equals(VipInfomationConst.countryLiechtenstein)) {language = VipInfomationConst.LANG_Liechtenstein;}
//        else if(country.equals(VipInfomationConst.countrySriLanka)) {language = VipInfomationConst.LANG_SriLanka;}
//        else if(country.equals(VipInfomationConst.countryLiberia)) {language = VipInfomationConst.LANG_Liberia;}
//        else if(country.equals(VipInfomationConst.countryLesotho)) {language = VipInfomationConst.LANG_Lesotho;}
        else if(country.equals(VipInfomationConst.countryLithuania)) {language = VipInfomationConst.LANG_Lithuania;}
        else if(country.equals(VipInfomationConst.countryLuxembourg)) {language = VipInfomationConst.LANG_Luxembourg;}
        else if(country.equals(VipInfomationConst.countryLatvia)) {language = VipInfomationConst.LANG_Latvia;}
        else if(country.equals(VipInfomationConst.countryLibya)) {language = VipInfomationConst.LANG_Libya;}
        else if(country.equals(VipInfomationConst.countryMorocco)) {language = VipInfomationConst.LANG_Morocco;}
//        else if(country.equals(VipInfomationConst.countryMonaco)) {language = VipInfomationConst.LANG_Monaco;}
//        else if(country.equals(VipInfomationConst.countryMoldova)) {language = VipInfomationConst.LANG_Moldova;}
//        else if(country.equals(VipInfomationConst.countryMontenegro)) {language = VipInfomationConst.LANG_Montenegro;}
//        else if(country.equals(VipInfomationConst.countrySaintMartinFrance)) {language = VipInfomationConst.LANG_SaintMartinFrance;}
//        else if(country.equals(VipInfomationConst.countryMadagascar)) {language = VipInfomationConst.LANG_Madagascar;}
//        else if(country.equals(VipInfomationConst.countryMarshallIslands)) {language = VipInfomationConst.LANG_MarshallIslands;}
        else if(country.equals(VipInfomationConst.countryRepublicofMacedonia)) {language = VipInfomationConst.LANG_RepublicofMacedonia;}
//        else if(country.equals(VipInfomationConst.countryMali)) {language = VipInfomationConst.LANG_Mali;}
//        else if(country.equals(VipInfomationConst.countryMyanmarBurma)) {language = VipInfomationConst.LANG_MyanmarBurma;}
//        else if(country.equals(VipInfomationConst.countryMongolia)) {language = VipInfomationConst.LANG_Mongolia;}
        else if(country.equals(VipInfomationConst.countryMacao)) {language = VipInfomationConst.LANG_Macao;}
//        else if(country.equals(VipInfomationConst.countryNorthernMarianaIslands)) {language = VipInfomationConst.LANG_NorthernMarianaIslands;}
//        else if(country.equals(VipInfomationConst.countryMartinique)) {language = VipInfomationConst.LANG_Martinique;}
//        else if(country.equals(VipInfomationConst.countryMauritania)) {language = VipInfomationConst.LANG_Mauritania;}
//        else if(country.equals(VipInfomationConst.countryMontserrat)) {language = VipInfomationConst.LANG_Montserrat;}
//        else if(country.equals(VipInfomationConst.countryMalta)) {language = VipInfomationConst.LANG_Malta;}
//        else if(country.equals(VipInfomationConst.countryMauritius)) {language = VipInfomationConst.LANG_Mauritius;}
//        else if(country.equals(VipInfomationConst.countryMaldives)) {language = VipInfomationConst.LANG_Maldives;}
//        else if(country.equals(VipInfomationConst.countryMalawi)) {language = VipInfomationConst.LANG_Malawi;}
        else if(country.equals(VipInfomationConst.countryMexico)) {language = VipInfomationConst.LANG_Mexico;}
        else if(country.equals(VipInfomationConst.countryMalaysia)) {language = VipInfomationConst.LANG_Malaysia;}
//        else if(country.equals(VipInfomationConst.countryMozambique)) {language = VipInfomationConst.LANG_Mozambique;}
//        else if(country.equals(VipInfomationConst.countryNamibia)) {language = VipInfomationConst.LANG_Namibia;}
//        else if(country.equals(VipInfomationConst.countryNewCaledonia)) {language = VipInfomationConst.LANG_NewCaledonia;}
//        else if(country.equals(VipInfomationConst.countryNiger)) {language = VipInfomationConst.LANG_Niger;}
//        else if(country.equals(VipInfomationConst.countryNorfolkIsland)) {language = VipInfomationConst.LANG_NorfolkIsland;}
//        else if(country.equals(VipInfomationConst.countryNigeria)) {language = VipInfomationConst.LANG_Nigeria;}
        else if(country.equals(VipInfomationConst.countryNicaragua)) {language = VipInfomationConst.LANG_Nicaragua;}
        else if(country.equals(VipInfomationConst.countryNetherlands)) {language = VipInfomationConst.LANG_Netherlands;}
        else if(country.equals(VipInfomationConst.countryNorway)) {language = VipInfomationConst.LANG_Norway;}
//        else if(country.equals(VipInfomationConst.countryNepal)) {language = VipInfomationConst.LANG_Nepal;}
//        else if(country.equals(VipInfomationConst.countryNauru)) {language = VipInfomationConst.LANG_Nauru;}
//        else if(country.equals(VipInfomationConst.countryNiue)) {language = VipInfomationConst.LANG_Niue;}
        else if(country.equals(VipInfomationConst.countryNewZealand)) {language = VipInfomationConst.LANG_NewZealand;}
        else if(country.equals(VipInfomationConst.countryOman)) {language = VipInfomationConst.LANG_Oman;}
        else if(country.equals(VipInfomationConst.countryPanama)) {language = VipInfomationConst.LANG_Panama;}
        else if(country.equals(VipInfomationConst.countryPeru)) {language = VipInfomationConst.LANG_Peru;}
//        else if(country.equals(VipInfomationConst.countryFrenchPolynesia)) {language = VipInfomationConst.LANG_FrenchPolynesia;}
//        else if(country.equals(VipInfomationConst.countryPapuaNewGuinea)) {language = VipInfomationConst.LANG_PapuaNewGuinea;}
        else if(country.equals(VipInfomationConst.countryThePhilippines)) {language = VipInfomationConst.LANG_ThePhilippines;}
        else if(country.equals(VipInfomationConst.countryPakistan)) {language = VipInfomationConst.LANG_Pakistan;}
        else if(country.equals(VipInfomationConst.countryPoland)) {language = VipInfomationConst.LANG_Poland;}
//        else if(country.equals(VipInfomationConst.countrySaintPierreandMiquelon)) {language = VipInfomationConst.LANG_SaintPierreandMiquelon;}
//        else if(country.equals(VipInfomationConst.countryPitcairnIslands)) {language = VipInfomationConst.LANG_PitcairnIslands;}
        else if(country.equals(VipInfomationConst.countryPuertoRico)) {language = VipInfomationConst.LANG_PuertoRico;}
//        else if(country.equals(VipInfomationConst.countryPalestinianterritories)) {language = VipInfomationConst.LANG_Palestinianterritories;}
        else if(country.equals(VipInfomationConst.countryPortugal)) {language = VipInfomationConst.LANG_Portugal;}
//        else if(country.equals(VipInfomationConst.countryPalau)) {language = VipInfomationConst.LANG_Palau;}
        else if(country.equals(VipInfomationConst.countryParaguay)) {language = VipInfomationConst.LANG_Paraguay;}
        else if(country.equals(VipInfomationConst.countryQatar)) {language = VipInfomationConst.LANG_Qatar;}
//        else if(country.equals(VipInfomationConst.countryRéunion)) {language = VipInfomationConst.LANG_Reunion;}
        else if(country.equals(VipInfomationConst.countryRomania)) {language = VipInfomationConst.LANG_Romania;}
//        else if(country.equals(VipInfomationConst.countrySerbia)) {language = VipInfomationConst.LANG_Serbia;}
        else if(country.equals(VipInfomationConst.countryRussianFederation)) {language = VipInfomationConst.LANG_RussianFederation;}
//        else if(country.equals(VipInfomationConst.countryRwanda)) {language = VipInfomationConst.LANG_Rwanda;}
        else if(country.equals(VipInfomationConst.countrySaudiArabia)) {language = VipInfomationConst.LANG_SaudiArabia;}
//        else if(country.equals(VipInfomationConst.countrySolomonIslands)) {language = VipInfomationConst.LANG_SolomonIslands;}
//        else if(country.equals(VipInfomationConst.countrySeychelles)) {language = VipInfomationConst.LANG_Seychelles;}
//        else if(country.equals(VipInfomationConst.countrySudan)) {language = VipInfomationConst.LANG_Sudan;}
        else if(country.equals(VipInfomationConst.countrySweden)) {language = VipInfomationConst.LANG_Sweden;}
        else if(country.equals(VipInfomationConst.countrySingapore)) {language = VipInfomationConst.LANG_Singapore;}
//        else if(country.equals(VipInfomationConst.countryStHelenaDependencies)) {language = VipInfomationConst.LANG_StHelenaDependencies;}
//        else if(country.equals(VipInfomationConst.countrySlovenia)) {language = VipInfomationConst.LANG_Slovenia;}
//        else if(country.equals(VipInfomationConst.countryTemplateCountrydataSJMSvalbard)) {language = VipInfomationConst.LANG_TemplateLANG_dataSJMSvalbard;}
        else if(country.equals(VipInfomationConst.countrySlovakia)) {language = VipInfomationConst.LANG_Slovakia;}
//        else if(country.equals(VipInfomationConst.countrySierraLeone)) {language = VipInfomationConst.LANG_SierraLeone;}
//        else if(country.equals(VipInfomationConst.countrySanMarino)) {language = VipInfomationConst.LANG_SanMarino;}
//        else if(country.equals(VipInfomationConst.countrySenegal)) {language = VipInfomationConst.LANG_Senegal;}
//        else if(country.equals(VipInfomationConst.countrySomalia)) {language = VipInfomationConst.LANG_Somalia;}
//        else if(country.equals(VipInfomationConst.countrySuriname)) {language = VipInfomationConst.LANG_Suriname;}
//        else if(country.equals(VipInfomationConst.countrySouthSudan)) {language = VipInfomationConst.LANG_SouthSudan;}
//        else if(country.equals(VipInfomationConst.countrySaoTomePrincipe)) {language = VipInfomationConst.LANG_SaoTomePrincipe;}
        else if(country.equals(VipInfomationConst.countryElSalvador)) {language = VipInfomationConst.LANG_ElSalvador;}
//        else if(country.equals(VipInfomationConst.countrySintMaarten)) {language = VipInfomationConst.LANG_SintMaarten;}
        else if(country.equals(VipInfomationConst.countrySyria)) {language = VipInfomationConst.LANG_Syria;}
//        else if(country.equals(VipInfomationConst.countrySwaziland)) {language = VipInfomationConst.LANG_Swaziland;}
//        else if(country.equals(VipInfomationConst.countryTurksCaicosIslands)) {language = VipInfomationConst.LANG_TurksCaicosIslands;}
//        else if(country.equals(VipInfomationConst.countryChad)) {language = VipInfomationConst.LANG_Chad;}
//        else if(country.equals(VipInfomationConst.countryFrenchSouthernTerritories)) {language = VipInfomationConst.LANG_FrenchSouthernTerritories;}
//        else if(country.equals(VipInfomationConst.countryTogo)) {language = VipInfomationConst.LANG_Togo;}
        else if(country.equals(VipInfomationConst.countryThailand)) {language = VipInfomationConst.LANG_Thailand;}
//        else if(country.equals(VipInfomationConst.countryTajikistan)) {language = VipInfomationConst.LANG_Tajikistan;}
//        else if(country.equals(VipInfomationConst.countryTokelau)) {language = VipInfomationConst.LANG_Tokelau;}
//        else if(country.equals(VipInfomationConst.countryTimorLesteEastTimor)) {language = VipInfomationConst.LANG_TimorLesteEastTimor;}
//        else if(country.equals(VipInfomationConst.countryTurkmenistan)) {language = VipInfomationConst.LANG_Turkmenistan;}
        else if(country.equals(VipInfomationConst.countryTunisia)) {language = VipInfomationConst.LANG_Tunisia;}
//        else if(country.equals(VipInfomationConst.countryTonga)) {language = VipInfomationConst.LANG_Tonga;}
        else if(country.equals(VipInfomationConst.countryTurkey)) {language = VipInfomationConst.LANG_Turkey;}
        else if(country.equals(VipInfomationConst.countryTrinidadTobago)) {language = VipInfomationConst.LANG_TrinidadTobago;}
//        else if(country.equals(VipInfomationConst.countryTuvalu)) {language = VipInfomationConst.LANG_Tuvalu;}
        else if(country.equals(VipInfomationConst.countryTaiwan)) {language = VipInfomationConst.LANG_Taiwan;}
//        else if(country.equals(VipInfomationConst.countryTanzania)) {language = VipInfomationConst.LANG_Tanzania;}
        else if(country.equals(VipInfomationConst.countryUkraine)) {language = VipInfomationConst.LANG_Ukraine;}
//        else if(country.equals(VipInfomationConst.countryUganda)) {language = VipInfomationConst.LANG_Uganda;}
//        else if(country.equals(VipInfomationConst.countryUnitedStatesMinorOutlyingIslands)) {language = VipInfomationConst.LANG_UnitedStatesMinorOutlyingIslands;}
        else if(country.equals(VipInfomationConst.countryAmerica)) {language = VipInfomationConst.LANG_America;}
        else if(country.equals(VipInfomationConst.countryUruguay)) {language = VipInfomationConst.LANG_Uruguay;}
        else if(country.equals(VipInfomationConst.countryUzbekistan)) {language = VipInfomationConst.LANG_Uzbekistan;}
//        else if(country.equals(VipInfomationConst.countryVaticanCityTheHolySee)) {language = VipInfomationConst.LANG_VaticanCityTheHolySee;}
//        else if(country.equals(VipInfomationConst.countryStVincenttheGrenadines)) {language = VipInfomationConst.LANG_StVincenttheGrenadines;}
        else if(country.equals(VipInfomationConst.countryVenezuela)) {language = VipInfomationConst.LANG_Venezuela;}
//        else if(country.equals(VipInfomationConst.countryBritishVirginIslands)) {language = VipInfomationConst.LANG_BritishVirginIslands;}
//        else if(country.equals(VipInfomationConst.countryUnitedStatesVirginIslands)) {language = VipInfomationConst.LANG_UnitedStatesVirginIslands;}
        else if(country.equals(VipInfomationConst.countryVietnam)) {language = VipInfomationConst.LANG_Vietnam;}
//        else if(country.equals(VipInfomationConst.countryVanuatu)) {language = VipInfomationConst.LANG_Vanuatu;}
//        else if(country.equals(VipInfomationConst.countryWallisandFutuna)) {language = VipInfomationConst.LANG_WallisandFutuna;}
//        else if(country.equals(VipInfomationConst.countrySamoa)) {language = VipInfomationConst.LANG_Samoa;}
        else if(country.equals(VipInfomationConst.countryYemen)) {language = VipInfomationConst.LANG_Yemen;}
//        else if(country.equals(VipInfomationConst.countryMayotte)) {language = VipInfomationConst.LANG_Mayotte;}
        else if(country.equals(VipInfomationConst.countrySouthAfrica)) {language = VipInfomationConst.LANG_SouthAfrica;}
//        else if(country.equals(VipInfomationConst.countryZambia)) {language = VipInfomationConst.LANG_Zambia;}
//        else if(country.equals(VipInfomationConst.countryZimbabwe)) {language = VipInfomationConst.LANG_Zimbabwe;}

    	return language;
    }
}
