/**
* FileName: PaymentBroadcastReceiver.java
* @Description: TODO(用一句话描述该文件做什么)
* All rights Reserved, Designed By 21winmess
* Copyright: Copyright(C) 2010-2011 
* Company 21winmess DaLian LTD.
* @author: Allan Zhang
* @version V1.3
* Createdate: 2012-10-30 下午05:53:18
*
* Modification History:
* Date Author Version Discription
* -----------------------------------------------------------------------------------
* 2012-10-30 Qute_Android2.0
* Why & What is modified: <修改原因描述>
*/
package com.tencent.onesecurity.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.manager.scheduletask.SystemTimerManager;
import com.tencent.onesecurity.manager.vip.VipInfomationConst;
import com.tencent.onesecurity.service.MemberTimerService;
import com.tencent.onesecurity.ui.activity.MainActivity;
import com.tencent.onesecurity.ui.activity.vip.VipPaymentSuccessActivity;
import com.tencent.onesecurity.ui.activity.vip.VipUpgradeActivity;
import com.tencent.onesecurity.ui.activity.vip.VipZoneActivity;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.usage.qq.ActionStatsManager;
import com.tencent.onesecurity.usage.qq.EModelID;
import com.tencent.onesecurity.util.Log;
import com.tencent.onesecurity.util.ToastUtil;

/**
 * @ClassName: PaymentBroadcastReceiver
 * @Description:监听支付相关的广播
 * @author: Allan
 * @date: 2012-10-30 下午05:53:18
 *
 */
public class PaymentBroadcastReceiver extends BroadcastReceiver{

	/* (non-Javadoc)
	 * @see android.content.BroadcastReceiver#onReceive(android.content.Context, android.content.Intent)
	 */
	@Override
	public void onReceive(Context context, Intent intent) {
	    if (!DaoCreator.createConfigDao().isLicenseAgreed()) {
            return;
        }
		String intentAction =  intent.getAction();
		Class<?> c = context.getClass();
//		String name = c.getName();
		
		if(intentAction.equals(VipInfomationConst.paymentOpenTrialSucc)) {
			Log.i("QQDOCTOR",  "intentAction.equals(VipInfomationConst.paymentOpenTrialSucc)");
			if(c.equals(VipZoneActivity.class)){
			    VipZoneActivity act = (VipZoneActivity)context;
                act.cancelDialog();
                DaoCreator.createUserInfoDao().clearTrialHasSendFlag();
                long days = intent.getLongExtra("VipUpgradeDays", 15);
	            Intent i = new Intent(context, VipPaymentSuccessActivity.class);
	            i.putExtra("VipOpened", "Trial");
	            i.putExtra("VipUpgradeDays", days);
	            context.startActivity(i);
	            act.finish();
			}
			
			/****添加google数据上报试用申请成功**********************/
            GoogleAnalyticsTracker.getInstance().trackView("试用VIP获取成功");
            ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_Trial_Obtain);
		}
		else if(intentAction.equals(VipInfomationConst.paymentOpenTrialNetError)) {
			Log.i("QQDOCTOR", "intentAction.equals(VipInfomationConst.paymentOpenTrialNetError)");
			if(c.equals(VipZoneActivity.class)){
				ToastUtil.ShowSimpleTextLongToast2(R.string.vip_network_error,R.layout.custom_toast);
			    VipZoneActivity act = (VipZoneActivity)context;
                act.cancelDialog();
                act.updateUI();
			}
		}
		else if(intentAction.equals(VipInfomationConst.paymentOpenTrialFailed)) {
			Log.i("QQDOCTOR",  "intentAction.equals(VipInfomationConst.paymentOpenTrialFailed)");
			if(c.equals(VipZoneActivity.class)){
			    VipZoneActivity act = (VipZoneActivity)context;
                act.cancelDialog();
			}
			/****添加google数据上报试用申请失败**********************/
			GoogleAnalyticsTracker.getInstance().trackView("试用VIP获取失败");
			ToastUtil.ShowSimpleTextLongToast2(R.string.vip_trial_contact_message_has_been_sent,R.layout.custom_toast);
		}
		else if(intentAction.equals(VipInfomationConst.vipOutOfTime)) {
            if(c.equals(MainActivity.class)) {
                MainActivity act = (MainActivity)context;
                act.buildVipOutOfTimeDialog();
            }
        }
		else if(intentAction.equals(VipInfomationConst.paymentActionPayGetStatus)) {
            if(c.equals(MainActivity.class)) {
                MainActivity act = (MainActivity)context;
                act.setAboutUpdateShow();
                // 根据用户类型，刷新病毒库升级按钮样式
                act.setBtnVirusLibUpdateStyle();
            }
			
			// 从服务器取回支付的type类型后再进行后台数据拉取，smartconfig，推送消息等。
			if (SystemTimerManager.hasFirstStart == false) { // 系统启动初始化过一次就不用初始化了
				SystemTimerManager.hasFirstStart = true;
	            Intent intentPullSrvDat = new Intent(context, MemberTimerService.class);
	            intentPullSrvDat.setFlags(MemberTimerService.PULL_SERVER_DATA);
				context.startService(intentPullSrvDat);
				Log.d("FETCH_DATA", "Have requested user level info. Prepare to start pull server data.");	
			}
        }
		else if(intentAction.equals("network_change_connected")) {
			if(c.equals(VipUpgradeActivity.class)) {
				VipUpgradeActivity act = (VipUpgradeActivity)context;
				act.reconnectUrl();
			}
        }
	}

}
