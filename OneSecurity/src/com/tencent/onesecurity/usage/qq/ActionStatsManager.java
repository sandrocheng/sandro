package com.tencent.onesecurity.usage.qq;

import java.io.File;
import java.util.ArrayList;

import QQPIM.SUI;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.dao.UserInfoDao;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.usage.winmess.WinmessDataReportManager;
import com.tencent.onesecurity.util.Log;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import com.tencent.tmsecure.utils.ScriptHelper;

/**
 * 行为统计管理类 (非线程)行为统计数据 (注意：退出程序的时候需要 调用 destroyAndSave() 进行销毁操作) 进行保存到数据库的机会：
 * 1、数据有变化的时候保存一次 2、调用clean 清理数据之后
 * 
 * @author potatoxu
 * 
 */
public class ActionStatsManager {

	private SharedPreferences setting = null;
	private Editor editor = null;
	private static final String actionPreferenceName = "actionStats";
	
	/**
	 * add by eddy - 2012-11-12
	 * 为One Sec 2.0.0版本增加44项feature数据上报项
	 */
	private static final String Editor_Secure_INTO_QQPIMSECURE = "Editor_Secure_INTO_QQPIMSECURE"; 				    						//使用小火箭、点击浮窗、点击桌面图片进入UI
	private static final String Editor_Secure_Open_desktop_asistant = "Editor_Secure_Open_desktop_asistant"; 								//打开桌面助手
	private static final String Editor_RUNNING_ONEKEY_DO = "Editor_RUNNING_ONEKEY_DO"; 														//任务管理的“一键加速
	private static final String Editor_Secure_ASSISTANT_ROCKET_LAUNCH_SUCCESS = "Editor_Secure_ASSISTANT_ROCKET_LAUNCH_SUCCESS"; 			//拖动未展开的桌面快捷助手到火焰，火箭成功发射
	private static final String Editor_Secure_desktop_asistant_into_OS = "Editor_Secure_desktop_asistant_into_OS"; 							//通过桌面助手进入OS
	private static final String Editor_INTO_MAIN_MENU = "Editor_INTO_MAIN_MENU"; 															//进入首页菜单
	private static final String Editor_INTO_PHONE_UP = "Editor_INTO_PHONE_UP"; 																//首页-手机加速
	private static final String Editor_Secure_PROCESSMAIN_ONE_KEY_Boost = "Editor_Secure_PROCESSMAIN_ONE_KEY_Boost"; 						//使用加速功能
	private static final String Editor_INTO_MAINVIEW_VIRUS_SCAN = "Editor_INTO_MIANVIEW_VIRUS_SCAN";										//首页-病毒查杀
	private static final String Editor_Secure_VirusTabView_Finish_QuickScan = "Editor_Secure_VirusTabView_Finish_QuickScan"; 				//病毒查杀-完成快速扫描
	private static final String Editor_Secure_VirusTabView_Finish_FullScan = "Editor_Secure_VirusTabView_Finish_FullScan"; 					//病毒查杀-完成全盘扫描
	private static final String Editor_Secure_VirusTabView_Cancel_QuickScan = "Editor_Secure_VirusTabView_Cancel_QuickScan"; 				//病毒查杀-快速扫描-取消
	private static final String Editor_Secure_VirusTabView_Cancel_FullScan = "Editor_Secure_VirusTabView_Cancel_FullScan"; 					//病毒查杀-全盘扫描-取消
	private static final String Editor_INTO_VIRUS_UPDATE = "Editor_INTO_VIRUS_UPDATE";														//病毒查杀-病毒更新
	private static final String Editor_Secure_Notification_VirusLib_Update_Cancel = "Editor_Secure_Notification_VirusLib_Update_Cancel"; 	//增加系统通知栏提示病毒库更新-取消	
	private static final String Editor_Secure_Outside_VirusTabView_Dont_Kill_Now = "Editor_Secure_Outside_VirusTabView_Dont_Kill_Now";		//发现病毒后提示-暂不处理
	private static final String Editor_Secure_Outside_VirusTabView_Kill_Immediately = "Editor_Secure_Outside_VirusTabView_Kill_Immediately";//发现病毒后提示-立即清除
    private static final String Editor_INTO_US_MAANGER = "Editor_INTO_US_MAANGER";															//首页-隐私保护
    private static final String Editor_Secure_MV_Create_PASSWORD = "Editor_Secure_MV_Create_PASSWORD";										//设置私密空间
    private static final String Editor_Secure_MV_Forgot_PASSWORD= "Editor_Secure_MV_Forgot_PASSWORD";										//使用忘记密码
    private static final String Editor_Secure_MV_INTO_Enter_Correct_PASSWORD = "Editor_Secure_MV_INTO_Enter_Correct_PASSWORD";				//成功输入密码进入私密箱
    private static final String Editor_Secure_MV_Wrong_PASSWORD= "Editor_Secure_MV_Wrong_PASSWORD";											//密码输入错误无法进入私密箱
    private static final String Editor_Secure_MV_Memo_Enter_PASSWORD= "Editor_Secure_MV_Memo_Enter_PASSWORD";								//成功录入备忘录
    private static final String Editor_Secure_MV_MultiM_Click = "Editor_Secure_MV_MultiM_Click";											//多媒体点击
    private static final String Editor_Secure_MV_MultiM_Enter = "Editor_Secure_MV_MultiM_Enter";											//多媒体进入
    private static final String Editor_Secure_MV_PIC_Imp_OK = "Editor_Secure_MV_PIC_Imp_OK";			  									//成功导入图片
    private static final String Editor_Secure_MV_Video_Imp_OK = "Editor_Secure_MV_Video_Imp_OK";			 								//成功导入视频
    private static final String Editor_Secure_MV_Audio_Imp_OK = "Editor_Secure_MV_Audio_Imp_OK";											//成功导入音频
    private static final String Editor_Secure_MV_PIC_Exp_OK = "Editor_Secure_MV_PIC_Exp_OK";												//成功导出图片
    private static final String Editor_Secure_MV_Video_Exp_OK = "Editor_Secure_MV_Video_Exp_OK";											//成功导出视频
    private static final String Editor_Secure_MV_Audio_Exp_OK = "Editor_Secure_MV_Audio_Exp_OK";											//成功导出音频
    private static final String Editor_Secure_MV_Del_Origin_OK = "Editor_Secure_MV_Del_Origin_OK";											//删除原文件
    private static final String Editor_Secure_PRIVATE_PROTECT_password_setting = "Editor_Secure_PRIVATE_PROTECT_password_setting";			//隐私保护-设置-密码中心
    private static final String Editor_Secure_MV_Setting_Modify = "Editor_Secure_MV_Setting_Modify";										//修改私密设置选项（有一项变动并保存就算）
    private static final String Editor_Secure_Boost_INTO_VIP = "Editor_Secure_Boost_INTO_VIP";												//通过加速页面进入VIP
    private static final String Editor_Secure_Virus_INTO_VIP = "Editor_Secure_Virus_INTO_VIP";												//通过病毒查杀进入VIP
    private static final String Editor_Secure_MV_INTO_VIP = "Editor_Secure_MV_INTO_VIP";													//通过私密箱进入VIP
    private static final String Editor_Secure_VIP_Get_Click = "Editor_Secure_VIP_Get_Click";												//点击获取VIP
    private static final String Editor_Secure_Trial_Get_Click = "Editor_Secure_Trial_Get_Click";											//点击获取试用权限
    private static final String Editor_Secure_Trial_Get_SMS_Share = "Editor_Secure_Trial_Get_SMS_Share";									//点击发送分享短信
    private static final String Editor_Secure_Trial_Obtain = "Editor_Secure_Trial_Obtain";													//成功获取试用权限
    private static final String Editor_Secure_VIP_Pay_Success = "Editor_Secure_VIP_Pay_Success";											//成功付费
    private static final String Editor_Secure_MAINVIEW_Into_Menu_Setting = "Editor_Secure_MAINVIEW_Into_Menu_Setting";						//首页面-右上角菜单-系统设置
    private static final String Editor_Secure_Menu_Setting_SMS_Share = "Editor_Secure_Menu_Setting_SMS_Share";								//通过设置分享短信
    private static final String Editor_Secure_User_Status_VIP = "Editor_Secure_User_Status_VIP";											//是Vip用户
    private static final String Editor_Secure_User_Status_Trial = "Editor_Secure_User_Status_Trial"; 										//是试用用户
    private static final String Editor_Secure_User_Status_Normal = "Editor_Secure_User_Status_Normal";										//是标准用户 
    //end by eddy
    
    
    /**
     *  行为统计，用于判断状态，不需要上报
     */
    public static final String Editor_ACTION_TrafficAutoAdjust_Close
    											= "Editor_ACTION_TrafficAutoAdjust_Close";	//  关闭自动校正流量开关
    public static final String Editor_ACTION_NetWorkTraffic_Window_Close
    											= "Editor_ACTION_NetWorkTraffic_Window_Close"; //关闭流量监控窗口
    
    
	private static ActionStatsManager instance = null;

	private Context mContext;
	private ActionStatsManager(Context context) {
		setting = context.getSharedPreferences(actionPreferenceName,
				Context.MODE_PRIVATE);
		editor = setting.edit();
		mContext = context;
	}

	/**
	 * 获取行为统计管理实例
	 * 
	 * @param context
	 * @return 行为统计管理实例
	 */
	public synchronized static ActionStatsManager getInstance() {
		if (instance == null) {
			instance = new ActionStatsManager(MainApplication.getContext());
		}
		
		return instance;
	}

	
	/**
	 * 保存行为统计数据，即时写入数据库
	 * 
	 * @param actionType
	 *            行为类型
	 */
	public void saveActionData(int actionType) {
		Log.e("数据上报 ",  "actionType = " + actionType + "time = " + System.currentTimeMillis());
		//winmess后台 储存除了用户类型以外的 feature
		if(actionType < EModelID._EMID_Secure_User_Status_Trial
				||actionType > EModelID._EMID_Secure_User_Status_Normal){
			WinmessDataReportManager.getInstance().saveActionData(actionType);
		}
		switch (actionType) {
		case EModelID._EMID_Secure_INTO_QQPIMSECURE:
			doSaveStatsData(actionType, Editor_Secure_INTO_QQPIMSECURE);
			break;
		case EModelID._EMID_Secure_Open_desktop_asistant:
			doSaveStatsData(actionType, Editor_Secure_Open_desktop_asistant);
			break;
		case EModelID._EMID_Secure_RUNNING_ONEKEY_DO:
			doSaveStatsData(actionType, Editor_RUNNING_ONEKEY_DO);
			break;
		case EModelID._EMID_Secure_ASSISTANT_ROCKET_LAUNCH_SUCCESS:
			doSaveStatsData(actionType, Editor_Secure_ASSISTANT_ROCKET_LAUNCH_SUCCESS);
			break;
		case EModelID._EMID_Secure_desktop_asistant_into_OS:
			doSaveStatsData(actionType, Editor_Secure_desktop_asistant_into_OS);
			break;
		case EModelID._EMID_Secure_INTO_MAIN_MENU:
			doSaveStatsData(actionType, Editor_INTO_MAIN_MENU);
			break;
		case EModelID._EMID_Secure_INTO_PHONE_UP:
			doSaveStatsData(actionType, Editor_INTO_PHONE_UP);
			break;
		case EModelID._EMID_Secure_PROCESSMAIN_ONE_KEY_Boost:
			doSaveStatsData(actionType, Editor_Secure_PROCESSMAIN_ONE_KEY_Boost);
			break;
		case EModelID._EMID_Secure_INTO_MIANVIEW_VIRUS_SCAN:
			doSaveStatsData(actionType, Editor_INTO_MAINVIEW_VIRUS_SCAN);
			break;
		case EModelID._EMID_Secure_VirusTabView_Finish_QuickScan:
			doSaveStatsData(actionType, Editor_Secure_VirusTabView_Finish_QuickScan);
			break;
		case EModelID._EMID_Secure_VirusTabView_Finish_FullScan:
			doSaveStatsData(actionType, Editor_Secure_VirusTabView_Finish_FullScan);
			break;
		case EModelID._EMID_Secure_VirusTabView_Cancel_QuickScan:
			doSaveStatsData(actionType, Editor_Secure_VirusTabView_Cancel_QuickScan);
			break;
		case EModelID._EMID_Secure_VirusTabView_Cancel_FullScan:
			doSaveStatsData(actionType, Editor_Secure_VirusTabView_Cancel_FullScan);
			break;
		case EModelID._EMID_Secure_INTO_VIRUS_UPDATE:
			doSaveStatsData(actionType, Editor_INTO_VIRUS_UPDATE);
			break;	
		case EModelID._EMID_Secure_Notification_VirusLib_Update_Cancel:
			doSaveStatsData(actionType, Editor_Secure_Notification_VirusLib_Update_Cancel);
			break;
		case EModelID._EMID_Secure_Outside_VirusTabView_Dont_Kill_Now:
			doSaveStatsData(actionType, Editor_Secure_Outside_VirusTabView_Dont_Kill_Now);
			break;
		case EModelID._EMID_Secure_Outside_VirusTabView_Kill_Immediately:
			doSaveStatsData(actionType, Editor_Secure_Outside_VirusTabView_Kill_Immediately);
			break;
		case EModelID._EMID_Secure_INTO_US_MAANGER:
			doSaveStatsData(actionType, Editor_INTO_US_MAANGER);
			break;
		case EModelID._EMID_Secure_MV_Create_PASSWORD:
			doSaveStatsData(actionType, Editor_Secure_MV_Create_PASSWORD);
			break;
		case EModelID._EMID_Secure_MV_Forgot_PASSWORD:
			doSaveStatsData(actionType, Editor_Secure_MV_Forgot_PASSWORD);
			break;
		case EModelID._EMID_Secure_MV_INTO_Enter_Correct_PASSWORD:
			doSaveStatsData(actionType, Editor_Secure_MV_INTO_Enter_Correct_PASSWORD);
			break;
		case EModelID._EMID_Secure_MV_Wrong_PASSWORD:
			doSaveStatsData(actionType, Editor_Secure_MV_Wrong_PASSWORD);
			break;
		case EModelID._EMID_Secure_MV_Memo_Enter_PASSWORD:
			doSaveStatsData(actionType, Editor_Secure_MV_Memo_Enter_PASSWORD);
			break;
		case EModelID._EMID_Secure_MV_MultiM_Click:
			doSaveStatsData(actionType, Editor_Secure_MV_MultiM_Click);
			break;
		case EModelID._EMID_Secure_MV_MultiM_Enter:
			doSaveStatsData(actionType, Editor_Secure_MV_MultiM_Enter);
			break;
		case EModelID._EMID_Secure_MV_PIC_Imp_OK:
			doSaveStatsData(actionType, Editor_Secure_MV_PIC_Imp_OK);
			break;
		case EModelID._EMID_Secure_MV_Video_Imp_OK:
			doSaveStatsData(actionType, Editor_Secure_MV_Video_Imp_OK);
			break;
		case EModelID._EMID_Secure_MV_Audio_Imp_OK:
			doSaveStatsData(actionType, Editor_Secure_MV_Audio_Imp_OK);
			break;
		case EModelID._EMID_Secure_MV_PIC_Exp_OK:
			doSaveStatsData(actionType, Editor_Secure_MV_PIC_Exp_OK);
			break;
		case EModelID._EMID_Secure_MV_Video_Exp_OK:
			doSaveStatsData(actionType, Editor_Secure_MV_Video_Exp_OK);
			break;
		case EModelID._EMID_Secure_MV_Audio_Exp_OK:
			doSaveStatsData(actionType, Editor_Secure_MV_Audio_Exp_OK);
			break;
		case EModelID._EMID_Secure_MV_Del_Origin_OK:
			doSaveStatsData(actionType, Editor_Secure_MV_Del_Origin_OK);
			break;
		case EModelID._EMID_Secure_PRIVATE_PROTECT_password_setting:
			doSaveStatsData(actionType, Editor_Secure_PRIVATE_PROTECT_password_setting);
			break;
		case EModelID._EMID_Secure_MV_Setting_Modify:
			doSaveStatsData(actionType, Editor_Secure_MV_Setting_Modify);
			break;	
		case EModelID._EMID_Secure_Boost_INTO_VIP:
			doSaveStatsData(actionType, Editor_Secure_Boost_INTO_VIP);
			break;	
		case EModelID._EMID_Secure_Virus_INTO_VIP:
			doSaveStatsData(actionType, Editor_Secure_Virus_INTO_VIP);
			break;	
		case EModelID._EMID_Secure_MV_INTO_VIP:
			doSaveStatsData(actionType, Editor_Secure_MV_INTO_VIP);
			break;	
		case EModelID._EMID_Secure_VIP_Get_Click:
			doSaveStatsData(actionType, Editor_Secure_VIP_Get_Click);
			break;	
		case EModelID._EMID_Secure_Trial_Get_Click:
			doSaveStatsData(actionType, Editor_Secure_Trial_Get_Click);
			break;	
		case EModelID._EMID_Secure_Trial_Get_SMS_Share:
			doSaveStatsData(actionType, Editor_Secure_Trial_Get_SMS_Share);
			break;			
		case EModelID._EMID_Secure_Trial_Obtain:
			doSaveStatsData(actionType, Editor_Secure_Trial_Obtain);
			break;
		case EModelID._EMID_Secure_VIP_Pay_Success:
			doSaveStatsData(actionType, Editor_Secure_VIP_Pay_Success);
			break;
		case EModelID._EMID_Secure_MAINVIEW_Into_Menu_Setting:
			doSaveStatsData(actionType, Editor_Secure_MAINVIEW_Into_Menu_Setting);
			break;
		case EModelID._EMID_Secure_Menu_Setting_SMS_Share:
			doSaveStatsData(actionType, Editor_Secure_Menu_Setting_SMS_Share);
			break;
		case EModelID._EMID_Secure_User_Status_VIP:
			doSaveStatsDataForReportUserType(actionType, Editor_Secure_User_Status_VIP);
			break;
		case EModelID._EMID_Secure_User_Status_Trial:
			doSaveStatsDataForReportUserType(actionType, Editor_Secure_User_Status_Trial);
			break;
		case EModelID._EMID_Secure_User_Status_Normal:
			doSaveStatsDataForReportUserType(actionType, Editor_Secure_User_Status_Normal);
			break;
		}
//		this.readAllActionStantsData();
		GoogleAnalyticsTracker.getInstance().ClickButton(actionType + "");
	}
	
	
	//得到系统标识网络流量信息的表的相关信息
	public ArrayList<String[]> getTrafficStatisticsProfiles(){
		
		String mDevNetFilePath = null;
		String dev_net_file = mDevNetFilePath;

		String PROC_SELF_NET_DEV = "/proc/self/net/dev";
		String PROC_NET_DEV = "/proc/net/dev";
		
		if (dev_net_file == null || dev_net_file.equals("")) {
			
			if (!new File(PROC_SELF_NET_DEV).exists()) {
				if (!new File(PROC_NET_DEV).exists()) {
					mDevNetFilePath = "error";
				} else {
					mDevNetFilePath = PROC_NET_DEV;
				}
			} else {
				mDevNetFilePath = PROC_SELF_NET_DEV;
			}

			dev_net_file = mDevNetFilePath;
		}

		StringBuilder scriptresult = new StringBuilder();
	
		ScriptHelper.runScript(scriptresult, "cat " + dev_net_file);
		String[] lines = scriptresult.toString().split("\\n");
		
		ArrayList<String[]> netActionStatsList = new ArrayList<String[]>();
		
		int i = -1; 
		for (String line : lines) {
			i++;
			if(i <= 2)
				continue;	
			line = line.trim();
			String[] segs = line.trim().split("[: ]+");
			String title = segs[0].trim();
			String[] data = new String[5];
			data[0] = title;
			data[1] = segs[1];
			data[2] = segs[2];	
			data[3] = segs[9];
			data[4] = segs[10];
        	netActionStatsList.add(data);		
		}
		return netActionStatsList;
	}
	
	
	
	public String[] getPhoneInfo(){
		
		String[] info = new String[4];	
		//手机型号
		String model=android.os.Build.MODEL;   // 手机型号		
		info[0] = model;
		
		//手机固件版本，一般是指android系统
		String release=android.os.Build.VERSION.RELEASE;  // android系统版本号
		info[1] = release;
		
		//CPU频率，这里获取CPU型号
		String CPUInfo = null;
		String cpu_args_file = "/proc/cpuinfo";
		StringBuilder scriptresult = new StringBuilder();
		
		ScriptHelper.runScript(scriptresult, "cat " + cpu_args_file);
		String[] lines = scriptresult.toString().split("\\n");
		CPUInfo = lines[0]; //获得CPU型号
		info[2] = CPUInfo;
		
		//手机分辨率
	    String displayMetrics =  Integer.toString(PhoneInfoUtil.getScreenWidth(mContext))+"*"
		                           +Integer.toString(PhoneInfoUtil.getScreenHeight(mContext));
	    info[3] = displayMetrics;
		
	    return info;
	}
	
    public String getReportInfo(){
       String reportinfo = new String();
       ArrayList<String[]> netActionStatsList = new ArrayList<String[]>();
       
       netActionStatsList = getTrafficStatisticsProfiles();
       
       for(int i = 0;i<netActionStatsList.size();i++){
    	   for(int j = 0;j < 5;j++){
    		   reportinfo += netActionStatsList.get(i)[j];
    		   reportinfo += " " ;   
    	   }
    	   reportinfo += ";" ;   
       }

       String[] info = new String[4];	
       info = getPhoneInfo();
       reportinfo += ("MODEL "+info[0]+";");
       reportinfo += ("ANDROID "+info[1]+";");
       reportinfo += ("CPU "+info[2]+";");
       reportinfo += ("resolution  "+info[3]+";");
       
       return reportinfo;
        
    }	

	private void doSaveStatsData(int actionType, String editorName) {
		long currentTime = System.currentTimeMillis();
		String actionStr = setting.getString(editorName, null);
		ArrayList<ActionStatsEntity> tempActionStatsList = getActionDataByStr(
				actionStr, actionType);
		boolean isFinded = false;
		for (int i = 0; i < tempActionStatsList.size(); i++) {
			if (currentTime == tempActionStatsList.get(i).actionTime) {
				tempActionStatsList.get(i).actionCount = tempActionStatsList
						.get(i).actionCount + 1;
				isFinded = true;
//				Log.i("ActionStatsManager", "ActionStatsManager old save actionType "+actionType+" currentTime "+currentTime+" actionCount "+tempActionStatsList.get(i).actionCount);
				break;
			}
		}
		if (!isFinded) {
			ActionStatsEntity tempActionStatsEntity = new ActionStatsEntity();
			tempActionStatsEntity.actionType = actionType;
			tempActionStatsEntity.actionTime = currentTime;
			tempActionStatsEntity.actionCount = 1;
			tempActionStatsList.add(tempActionStatsEntity);
//			Log.i("ActionStatsManager", "ActionStatsManager new save actionType "+actionType+" currentTime "+currentTime+" actionCount "+tempActionStatsEntity.actionCount);
		}

		String statsStr = getActionStrByDataList(tempActionStatsList);

		editor.putString(editorName, statsStr).commit();
	}
	
	/**
	 * 保存用户类型到上报数据中
	 * @param actionType
	 * @param editorName
	 */
	private void doSaveStatsDataForReportUserType(int actionType, String editorName) {
		long time = 0l;
		switch (actionType) {
		case EModelID._EMID_Secure_User_Status_Normal:
			time = System.currentTimeMillis();
			break;
		case EModelID._EMID_Secure_User_Status_VIP:
			time = UserInfoDao.getInstance().getMemberStartTime();
			break;
		case EModelID._EMID_Secure_User_Status_Trial:
			time = UserInfoDao.getInstance().getMemberStartTime();
			break;
		default:
			break;
		}
		String actionStr = setting.getString(editorName, null);
		ArrayList<ActionStatsEntity> tempActionStatsList = getActionDataByStr(
				actionStr, actionType);
		ActionStatsEntity tempActionStatsEntity = new ActionStatsEntity();
		tempActionStatsEntity.actionType = actionType;
		tempActionStatsEntity.actionTime = time;
		tempActionStatsEntity.actionCount = 1;
		tempActionStatsList.add(tempActionStatsEntity);
		String statsStr = getActionStrByDataList(tempActionStatsList);

		editor.putString(editorName, statsStr).commit();
	}

	/**
	 * 将ActionStatsEntity转换成上报格式
	 * 
	 * @param actionStatsEntityList
	 *            所有的行为统计数据
	 * @return 转换后的上报数据
	 */
	public static ArrayList<SUI> toSUIArrayList(
			ArrayList<ActionStatsEntity> actionStatsEntityList) {
		if (actionStatsEntityList == null) {
			return null;
		}
		ArrayList<SUI> suis = new ArrayList<SUI>();
		
		for (ActionStatsEntity action : actionStatsEntityList) {
			if (action.actionCount > 0) {
				SUI sui = new SUI();
				// set id
				switch (action.actionType) {
				case EModelID._EMID_Secure_INTO_QQPIMSECURE:
					sui.setId(EModelID._EMID_Secure_INTO_QQPIMSECURE);
					break;
				case EModelID._EMID_Secure_Open_desktop_asistant:
					sui.setId(EModelID._EMID_Secure_Open_desktop_asistant);
					break;
				case EModelID._EMID_Secure_RUNNING_ONEKEY_DO:
					sui.setId(EModelID._EMID_Secure_RUNNING_ONEKEY_DO);
					break;
				case EModelID._EMID_Secure_ASSISTANT_ROCKET_LAUNCH_SUCCESS:
					sui.setId(EModelID._EMID_Secure_ASSISTANT_ROCKET_LAUNCH_SUCCESS);
					break;
				case EModelID._EMID_Secure_desktop_asistant_into_OS:
					sui.setId(EModelID._EMID_Secure_desktop_asistant_into_OS);
					break;
				case EModelID._EMID_Secure_INTO_MAIN_MENU:
					sui.setId(EModelID._EMID_Secure_INTO_MAIN_MENU);
					break;
				case EModelID._EMID_Secure_INTO_PHONE_UP:
					sui.setId(EModelID._EMID_Secure_INTO_PHONE_UP);
					break;
				case EModelID._EMID_Secure_PROCESSMAIN_ONE_KEY_Boost:
					sui.setId(EModelID._EMID_Secure_PROCESSMAIN_ONE_KEY_Boost);
					break;
				case EModelID._EMID_Secure_INTO_MIANVIEW_VIRUS_SCAN:
					sui.setId(EModelID._EMID_Secure_INTO_MIANVIEW_VIRUS_SCAN);
					break;
				case EModelID._EMID_Secure_VirusTabView_Finish_QuickScan:
					sui.setId(EModelID._EMID_Secure_VirusTabView_Finish_QuickScan);
					break;
				case EModelID._EMID_Secure_VirusTabView_Finish_FullScan:
					sui.setId(EModelID._EMID_Secure_VirusTabView_Finish_FullScan);
					break;
				case EModelID._EMID_Secure_VirusTabView_Cancel_QuickScan:
					sui.setId(EModelID._EMID_Secure_VirusTabView_Cancel_QuickScan);
					break;
				case EModelID._EMID_Secure_VirusTabView_Cancel_FullScan:
					sui.setId(EModelID._EMID_Secure_VirusTabView_Cancel_FullScan);
					break;
				case EModelID._EMID_Secure_INTO_VIRUS_UPDATE:
					sui.setId(EModelID._EMID_Secure_INTO_VIRUS_UPDATE);
					break;	
				case EModelID._EMID_Secure_Notification_VirusLib_Update_Cancel:
					sui.setId(EModelID._EMID_Secure_Notification_VirusLib_Update_Cancel);
					break;
				case EModelID._EMID_Secure_Outside_VirusTabView_Dont_Kill_Now:
					sui.setId(EModelID._EMID_Secure_Outside_VirusTabView_Dont_Kill_Now);
					break;
				case EModelID._EMID_Secure_Outside_VirusTabView_Kill_Immediately:
					sui.setId(EModelID._EMID_Secure_Outside_VirusTabView_Kill_Immediately);
					break;
				case EModelID._EMID_Secure_INTO_US_MAANGER:
					sui.setId(EModelID._EMID_Secure_INTO_US_MAANGER);
					break;
				case EModelID._EMID_Secure_MV_Create_PASSWORD:
					sui.setId(EModelID._EMID_Secure_MV_Create_PASSWORD);
					break;
				case EModelID._EMID_Secure_MV_Forgot_PASSWORD:
					sui.setId(EModelID._EMID_Secure_MV_Forgot_PASSWORD);
					break;
				case EModelID._EMID_Secure_MV_INTO_Enter_Correct_PASSWORD:
					sui.setId(EModelID._EMID_Secure_MV_INTO_Enter_Correct_PASSWORD);
					break;
				case EModelID._EMID_Secure_MV_Wrong_PASSWORD:
					sui.setId(EModelID._EMID_Secure_MV_Wrong_PASSWORD);
					break;
				case EModelID._EMID_Secure_MV_Memo_Enter_PASSWORD:
					sui.setId(EModelID._EMID_Secure_MV_Memo_Enter_PASSWORD);
					break;
				case EModelID._EMID_Secure_MV_MultiM_Click:
					sui.setId(EModelID._EMID_Secure_MV_MultiM_Click);
					break;
				case EModelID._EMID_Secure_MV_MultiM_Enter:
					sui.setId(EModelID._EMID_Secure_MV_MultiM_Enter);
					break;
				case EModelID._EMID_Secure_MV_PIC_Imp_OK:
					sui.setId(EModelID._EMID_Secure_MV_PIC_Imp_OK);
					break;
				case EModelID._EMID_Secure_MV_Video_Imp_OK:
					sui.setId(EModelID._EMID_Secure_MV_Video_Imp_OK);
					break;
				case EModelID._EMID_Secure_MV_Audio_Imp_OK:
					sui.setId(EModelID._EMID_Secure_MV_Audio_Imp_OK);
					break;
				case EModelID._EMID_Secure_MV_PIC_Exp_OK:
					sui.setId(EModelID._EMID_Secure_MV_PIC_Exp_OK);
					break;
				case EModelID._EMID_Secure_MV_Video_Exp_OK:
					sui.setId(EModelID._EMID_Secure_MV_Video_Exp_OK);
					break;
				case EModelID._EMID_Secure_MV_Audio_Exp_OK:
					sui.setId(EModelID._EMID_Secure_MV_Audio_Exp_OK);
					break;
				case EModelID._EMID_Secure_MV_Del_Origin_OK:
					sui.setId(EModelID._EMID_Secure_MV_Del_Origin_OK);
					break;
				case EModelID._EMID_Secure_PRIVATE_PROTECT_password_setting:
					sui.setId(EModelID._EMID_Secure_PRIVATE_PROTECT_password_setting);
					break;
				case EModelID._EMID_Secure_MV_Setting_Modify:
					sui.setId(EModelID._EMID_Secure_MV_Setting_Modify);
					break;	
				case EModelID._EMID_Secure_Boost_INTO_VIP:
					sui.setId(EModelID._EMID_Secure_Boost_INTO_VIP);
					break;	
				case EModelID._EMID_Secure_Virus_INTO_VIP:
					sui.setId(EModelID._EMID_Secure_Virus_INTO_VIP);
					break;	
				case EModelID._EMID_Secure_MV_INTO_VIP:
					sui.setId(EModelID._EMID_Secure_MV_INTO_VIP);
					break;	
				case EModelID._EMID_Secure_VIP_Get_Click:
					sui.setId(EModelID._EMID_Secure_VIP_Get_Click);
					break;	
				case EModelID._EMID_Secure_Trial_Get_Click:
					sui.setId(EModelID._EMID_Secure_Trial_Get_Click);
					break;	
				case EModelID._EMID_Secure_Trial_Get_SMS_Share:
					sui.setId(EModelID._EMID_Secure_Trial_Get_SMS_Share);
					break;			
				case EModelID._EMID_Secure_Trial_Obtain:
					sui.setId(EModelID._EMID_Secure_Trial_Obtain);
					break;
				case EModelID._EMID_Secure_VIP_Pay_Success:
					sui.setId(EModelID._EMID_Secure_VIP_Pay_Success);
					break;
				case EModelID._EMID_Secure_MAINVIEW_Into_Menu_Setting:
					sui.setId(EModelID._EMID_Secure_MAINVIEW_Into_Menu_Setting);
					break;
				case EModelID._EMID_Secure_Menu_Setting_SMS_Share:
					sui.setId(EModelID._EMID_Secure_Menu_Setting_SMS_Share);
					break;
				case EModelID._EMID_Secure_User_Status_Trial:
					sui.setId(EModelID._EMID_Secure_User_Status_Trial);
					break;
				case EModelID._EMID_Secure_User_Status_VIP:
					sui.setId(EModelID._EMID_Secure_User_Status_VIP);
					break;
				case EModelID._EMID_Secure_User_Status_Normal:
					sui.setId(EModelID._EMID_Secure_User_Status_Normal);
					break;
				default:
					sui.setId(action.actionType);
					break;
				}

				// set desc
				sui.setDesc("" + action.actionCount);
				// set time
				int curTime = (int) (action.actionTime / 1000);
				sui.setTime(curTime);

				suis.add(sui);
			}
		}
		
//		for (int i = 0; i < suis.size(); i++) {
//			Log.i("ReportService", " ActionStatsManager upload getId "+suis.get(i).getId()
//					+" getDesc "+suis.get(i).getDesc()+" getTime "+suis.get(i).getTime());
//		}        
        
		return suis;
	}

	/**
	 * 获取目前所有的行为统计数据
	 * 
	 * @return 所有的行为统计数据
	 */
	public ArrayList<ActionStatsEntity> readAllActionStantsData() {
		ArrayList<ActionStatsEntity> actionStatsEntityList = new ArrayList<ActionStatsEntity>();
		
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_INTO_QQPIMSECURE, EModelID._EMID_Secure_INTO_QQPIMSECURE);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_Open_desktop_asistant, EModelID._EMID_Secure_Open_desktop_asistant);
		doReadAllActionStants(actionStatsEntityList, Editor_RUNNING_ONEKEY_DO, EModelID._EMID_Secure_RUNNING_ONEKEY_DO);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_ASSISTANT_ROCKET_LAUNCH_SUCCESS, EModelID._EMID_Secure_ASSISTANT_ROCKET_LAUNCH_SUCCESS);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_desktop_asistant_into_OS, EModelID._EMID_Secure_desktop_asistant_into_OS);
		doReadAllActionStants(actionStatsEntityList, Editor_INTO_MAIN_MENU, EModelID._EMID_Secure_INTO_MAIN_MENU);
		doReadAllActionStants(actionStatsEntityList, Editor_INTO_PHONE_UP, EModelID._EMID_Secure_INTO_PHONE_UP);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_PROCESSMAIN_ONE_KEY_Boost, EModelID._EMID_Secure_PROCESSMAIN_ONE_KEY_Boost);
		doReadAllActionStants(actionStatsEntityList, Editor_INTO_MAINVIEW_VIRUS_SCAN, EModelID._EMID_Secure_INTO_MIANVIEW_VIRUS_SCAN);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_VirusTabView_Finish_QuickScan, EModelID._EMID_Secure_VirusTabView_Finish_QuickScan);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_VirusTabView_Finish_FullScan, EModelID._EMID_Secure_VirusTabView_Finish_FullScan);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_VirusTabView_Cancel_QuickScan, EModelID._EMID_Secure_VirusTabView_Cancel_QuickScan);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_VirusTabView_Cancel_FullScan, EModelID._EMID_Secure_VirusTabView_Cancel_FullScan);
		doReadAllActionStants(actionStatsEntityList, Editor_INTO_VIRUS_UPDATE, EModelID._EMID_Secure_INTO_VIRUS_UPDATE);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_Notification_VirusLib_Update_Cancel, EModelID._EMID_Secure_Notification_VirusLib_Update_Cancel);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_Outside_VirusTabView_Dont_Kill_Now, EModelID._EMID_Secure_Outside_VirusTabView_Dont_Kill_Now);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_Outside_VirusTabView_Kill_Immediately, EModelID._EMID_Secure_Outside_VirusTabView_Kill_Immediately);
		doReadAllActionStants(actionStatsEntityList, Editor_INTO_US_MAANGER, EModelID._EMID_Secure_INTO_US_MAANGER);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_MV_Create_PASSWORD, EModelID._EMID_Secure_MV_Create_PASSWORD);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_MV_Forgot_PASSWORD, EModelID._EMID_Secure_MV_Forgot_PASSWORD);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_MV_INTO_Enter_Correct_PASSWORD, EModelID._EMID_Secure_MV_INTO_Enter_Correct_PASSWORD);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_MV_Wrong_PASSWORD, EModelID._EMID_Secure_MV_Wrong_PASSWORD);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_MV_Memo_Enter_PASSWORD, EModelID._EMID_Secure_MV_Memo_Enter_PASSWORD);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_MV_MultiM_Click, EModelID._EMID_Secure_MV_MultiM_Click);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_MV_MultiM_Enter, EModelID._EMID_Secure_MV_MultiM_Enter);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_MV_PIC_Imp_OK, EModelID._EMID_Secure_MV_PIC_Imp_OK);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_MV_Video_Imp_OK, EModelID._EMID_Secure_MV_Video_Imp_OK);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_MV_Audio_Imp_OK, EModelID._EMID_Secure_MV_Audio_Imp_OK);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_MV_PIC_Exp_OK, EModelID._EMID_Secure_MV_PIC_Exp_OK);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_MV_Video_Exp_OK, EModelID._EMID_Secure_MV_Video_Exp_OK);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_MV_Audio_Exp_OK, EModelID._EMID_Secure_MV_Audio_Exp_OK);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_MV_Del_Origin_OK, EModelID._EMID_Secure_MV_Del_Origin_OK);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_PRIVATE_PROTECT_password_setting, EModelID._EMID_Secure_PRIVATE_PROTECT_password_setting);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_MV_Setting_Modify, EModelID._EMID_Secure_MV_Setting_Modify);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_Boost_INTO_VIP, EModelID._EMID_Secure_Boost_INTO_VIP);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_Virus_INTO_VIP, EModelID._EMID_Secure_Virus_INTO_VIP);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_MV_INTO_VIP, EModelID._EMID_Secure_MV_INTO_VIP);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_VIP_Get_Click, EModelID._EMID_Secure_VIP_Get_Click);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_Trial_Get_Click, EModelID._EMID_Secure_Trial_Get_Click);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_Trial_Get_SMS_Share, EModelID._EMID_Secure_Trial_Get_SMS_Share);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_Trial_Obtain, EModelID._EMID_Secure_Trial_Obtain);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_VIP_Pay_Success, EModelID._EMID_Secure_VIP_Pay_Success);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_MAINVIEW_Into_Menu_Setting, EModelID._EMID_Secure_MAINVIEW_Into_Menu_Setting);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_Menu_Setting_SMS_Share, EModelID._EMID_Secure_Menu_Setting_SMS_Share);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_User_Status_VIP, EModelID._EMID_Secure_User_Status_VIP);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_User_Status_Trial, EModelID._EMID_Secure_User_Status_Trial);
		doReadAllActionStants(actionStatsEntityList, Editor_Secure_User_Status_Normal, EModelID._EMID_Secure_User_Status_Normal);
		
		
//		for (int i = 0; i < actionStatsEntityList.size(); i++) {
//			Log.i("ActionStatsManager", "ActionStatsManager read actionType "
//					+actionStatsEntityList.get(i).actionType+" actionTime "+
//					actionStatsEntityList.get(i).actionTime+" actionCount "+actionStatsEntityList.get(i).actionCount);
//
//		}

		return actionStatsEntityList;
	}
	
	/**
	 *  增加一个状态记录
	 * @param actionStatsEntityList
	 * @param actionType
	 */
	public void addOneStateStat(ArrayList<ActionStatsEntity> actionStatsEntityList, int actionType){
		ActionStatsEntity tempActionStatsEntity = new ActionStatsEntity();
		tempActionStatsEntity.actionType = actionType;
		tempActionStatsEntity.actionTime = System.currentTimeMillis();
		tempActionStatsEntity.actionCount = 1;
		actionStatsEntityList.add(tempActionStatsEntity);
	}
	
	/**
	 *  判断是否存在某个用户行为的记录
	 * @param Editor_Str
	 * @param ACTION_TYPE_STR
	 * @return
	 */
	public boolean hasActionRecord(String Editor_Str, int ACTION_TYPE_STR) {
		String tempActionStr = setting.getString(Editor_Str, null);
		return (getActionDataByStr(tempActionStr, ACTION_TYPE_STR).size() > 0);
	}
	
	private void doReadAllActionStants(ArrayList<ActionStatsEntity> actionStatsEntityList, String Editor_Str
			, int ACTION_TYPE_STR){
		String tempActionStr = setting.getString(Editor_Str, null);
		ArrayList<ActionStatsEntity> tempStatsDataList = getActionDataByStr(tempActionStr,
				ACTION_TYPE_STR);
		actionStatsEntityList.addAll(tempStatsDataList);
	}

	/**
	 * 清理临时和数据库的数据，将其重置为初始状态
	 */
	public void cleanAllActionStantsData() {
		editor.clear().commit();
//		Log.i("", " ActionStatsManager cleanAllActionStantsData ");
	}

	/**
	 * 当不再使用的时候需要将其销毁
	 */
	public void destroyAndSave() {
		instance = null;
	}

	/**
	 * 通过记录的字符串获取一项统计数据的列表
	 * 
	 * @param statsStr
	 *            记录的字符串
	 * @param actionType
	 *            记录的类型
	 * @return
	 */
	private ArrayList<ActionStatsEntity> getActionDataByStr(String statsStr,
			int actionType) {
		ArrayList<ActionStatsEntity> tempActionStatsEntityList = new ArrayList<ActionStatsEntity>();
		if(statsStr == null){
			return tempActionStatsEntityList;
		}
		while (true) {
			int poundIndex = statsStr.indexOf(";");
			if (poundIndex != -1) {
				ActionStatsEntity tempActionStatsEntity = new ActionStatsEntity();
				String subStatsStr = statsStr.substring(0, poundIndex);
				if (subStatsStr.indexOf("&") != -1) {
					tempActionStatsEntity.actionType = actionType;
					tempActionStatsEntity.actionTime = Long
							.parseLong(subStatsStr.substring(0, subStatsStr
									.indexOf("&")));
					if (tempActionStatsEntity.actionTime == 0) {
						tempActionStatsEntity.actionTime = System
								.currentTimeMillis();
					}
					tempActionStatsEntity.actionCount = Integer
							.parseInt(subStatsStr.substring(subStatsStr
									.indexOf("&") + 1));
					tempActionStatsEntityList.add(tempActionStatsEntity);
				}
				if (poundIndex == statsStr.length()) {
					break;
				}
				statsStr = statsStr.substring(poundIndex + 1);
			} else {
				break;
			}
		}
		return tempActionStatsEntityList;
	}

	/**
	 * 通过记录的字符串获取一项统计数据的列表
	 * 
	 * @param statsStr
	 *            记录的字符串
	 * @param actionType
	 *            记录的类型
	 * @return
	 */
	private String getActionStrByDataList(
			ArrayList<ActionStatsEntity> actionStatsEntityList) {
		StringBuffer actionStrSB = new StringBuffer();

		for (int i = 0; i < actionStatsEntityList.size(); i++) {
			actionStrSB.append(actionStatsEntityList.get(i).actionTime);
			actionStrSB.append("&");
			actionStrSB.append(actionStatsEntityList.get(i).actionCount);
			actionStrSB.append(";");
		}

		return actionStrSB.toString();
	}

}
