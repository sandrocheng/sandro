package com.tencent.onesecurity.ui.activity.virus;

import java.util.ArrayList;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.ui.activity.commonComponent.BaseActivity;
import com.tencent.onesecurity.ui.helper.UIConstants;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.util.ToastUtil;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.qscanner.QScanConstants;
import com.tencent.tmsecure.module.software.SoftwareManager;

/**
 * 病毒扫描Activity
 * 
 * @ClassName: VirusInstallSoftwareDialogActivity
 * @Description:病毒扫描Activity
 * @author: Jess Yan
 * @date: 2012-10-17 上午09:53:12
 * 
 */
public class VirusInstallSoftwareDialogActivity extends BaseActivity {

	// 卸载按钮
	private LinearLayout btnUninstall = null;
	
	// 忽略按钮
	private LinearLayout btnIgnore = null;
	private TextView content = null;
	private String pkgName = null;
	private String softName = null;
	
	// 隐私描述用到的TextView等
	//private View dividerLine = null; // 20130328 nina 去除白色分割线 
	private TextView privacyTitle = null;
	private TextView privacyContent = null;
	private TextView leftBtn, rightBtn;
	private ImageView iconVirusType = null;
	
	private boolean isVirus = false;
	
//	// 软件管理相关管理器 Manager
//	private SoftwareManager softwareManager = null;

	@Override
	protected void onCreate(Bundle savedInstanceState) {

		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.layout_virus_install_software_dialog);

		// 卸载按钮 忽略按钮
		this.btnUninstall = (LinearLayout) findViewById(R.id.btn_virus_dialog_uninstall);
		this.btnIgnore = (LinearLayout) findViewById(R.id.btn_virus_dialog_cancel);
		
		// 病毒部分的描述TextView
		content = (TextView) findViewById(R.id.text_virus_dialog_desc);
		
		// 隐私部分的描述TextView
		//dividerLine = findViewById(R.id.divider_line);
		privacyTitle = (TextView)findViewById(R.id.text_virus_dialog_privacy_title);
		privacyContent = (TextView)findViewById(R.id.text_virus_dialog_privacy_content);
		
		// 取得传过来的数据
		Bundle result = this.getIntent().getBundleExtra(
				UIConstants.VIRUS_MONITOR_RESULT_INTENT_KEY);
		isVirus = result.getBoolean(UIConstants.VIRUS_MONITOR_IS_VIRUS_KEY);
		softName = result.getString(UIConstants.VIRUS_MONITOR_SOFTNAME_INTENT_KEY);
		
		// 数据上报点 跳转来源
		String from = result.getString("FROM_WHERE");
		if (from != null && "NOTIFICATION".equals(from)) {
			GoogleAnalyticsTracker.getInstance().ClickButton("杀毒", "点击通知栏notification进入pop页面", "imei", 1l);
		}

		
		// 病毒类型 
		final int appType = result.getInt(UIConstants.VIRUS_MONITOR_TYPE_INTENT_KEY) ;
		// 设置icon
		iconVirusType = (ImageView) findViewById(R.id.icon_viurs_type);
		if (isVirus) {
			if (appType == QScanConstants.TYPE_VIRUS){
				iconVirusType.setBackgroundResource(R.drawable.icon_notification_logo_antivirus_virus);
			} else {
				iconVirusType.setBackgroundResource(R.drawable.icon_notification_logo_antivirus_caution);
			}
		}
		
		
		// 数据上报点 是否有毒
		if (appType == QScanConstants.TYPE_VIRUS) {

			GoogleAnalyticsTracker.getInstance().trackView("隐私监控有毒");

		} else if (appType == QScanConstants.TYPE_AD_BLOCK || appType == QScanConstants.TYPE_NOT_OFFICIAL
				|| appType == QScanConstants.TYPE_RISK) {

			GoogleAnalyticsTracker.getInstance().trackView("隐私监控风险");

		} else {

			GoogleAnalyticsTracker.getInstance().trackView("隐私监控无毒");

		}
		
		
		// 设置按钮文案
		leftBtn = (TextView) findViewById(R.id.tv_left);
		rightBtn = (TextView) findViewById(R.id.tv_right);
		if (!isVirus) {	// 不是病毒，需要变按钮文案
			this.leftBtn.setText(this.getString(R.string.common_cancel));
			this.rightBtn.setText(this.getString(R.string.vvcl_open));
		}
		
		// 设置描述颜色
		if (isVirus) {
			if (result.getInt(UIConstants.VIRUS_MONITOR_TYPE_INTENT_KEY) == QScanConstants.TYPE_VIRUS){
				content.setTextColor(0xffff0000);
			} else {  // caution
				content.setTextColor(0xffff5400);
			}
		} else {
			content.setTextColor(0xff389b02);
		}

		// 卸载/Open按钮处理
		this.btnUninstall.setOnClickListener(new View.OnClickListener() {

			@Override
			public void onClick(View v) {

				if (VirusInstallSoftwareDialogActivity.this.isVirus) {
					
					// 软件管理相关管理器 Manager
					SoftwareManager softwareManager = ManagerCreator.getManager(SoftwareManager.class);
					
					// 卸载逻辑
					softwareManager.uninstallApp(pkgName,
							VirusInstallSoftwareDialogActivity.this, 0);
					
					if (appType == QScanConstants.TYPE_VIRUS) {

						GoogleAnalyticsTracker.getInstance().ClickButton("杀毒", "隐私监控有毒状态点卸载", "imei", 1l);

					} else if (appType == QScanConstants.TYPE_AD_BLOCK || appType == QScanConstants.TYPE_NOT_OFFICIAL
							|| appType == QScanConstants.TYPE_RISK) {

						GoogleAnalyticsTracker.getInstance().ClickButton("杀毒", "隐私监控风险状态点卸载", "imei", 1l);

					}
					
					
				} else {
				
					// 打开应用逻辑
					PackageManager packageManager = VirusInstallSoftwareDialogActivity.this.getPackageManager();
					Intent intent = new Intent();
					intent = packageManager.getLaunchIntentForPackage(pkgName);
					if (intent != null) {
						startActivity(intent);	
					} else {
						
						// 没打开，toast用户
						String msg = String.format(
								VirusInstallSoftwareDialogActivity.this.getString(R.string.vvcl_X_is_uninstalled), "\"" + softName + "\"");
						ToastUtil.ShowSimpleTextLongToast(msg,R.layout.custom_toast);
					}
					GoogleAnalyticsTracker.getInstance().ClickButton("杀毒", "隐私监控无毒状态点击打开", "imei", 1l);
				}

				VirusInstallSoftwareDialogActivity.this.finish();
			}
		});
		
		// 忽略/Cancel按钮处理
		this.btnIgnore.setOnClickListener(new View.OnClickListener() {

			@Override
			public void onClick(View v) {
				VirusInstallSoftwareDialogActivity.this.finish();
			}
		});
		

		// 显示Pop页面上的内容。
		String desc = null;
		if (result != null) {

			// 病毒监控 Intent 参数 Key:包名
			pkgName = result.getString(UIConstants.VIRUS_MONITOR_PKGNAME_INTENT_KEY);

			// 病毒信息
			StringBuffer softNameBuffer = new StringBuffer();
			
			if (isVirus) {		// 包含病毒时，上部病毒区域显示的内容

				softNameBuffer.append("\"");
				softNameBuffer.append(softName);
				softNameBuffer.append("\"");
	        	
				// 区分病毒和风险
				if (result.getInt(UIConstants.VIRUS_MONITOR_TYPE_INTENT_KEY) == QScanConstants.TYPE_VIRUS){
					softNameBuffer.append(super.getString(R.string.vvcl_Z_is_a_virus_YYY_now));
				} else {
					softNameBuffer.append(super.getString(R.string.vvcl_Z_is_a_threat_YYY_now));
				} 

				desc = result.getString(UIConstants.VIRUS_MONITOR_DESC_INTENT_KEY);
				softNameBuffer.append("\n\n");
				softNameBuffer.append(desc);
			} else {																// 不包含病毒时，上部病毒区域显示的内容
				
				softNameBuffer.append(String.format(super.getString(R.string.antivirus_safe), softName));
			}

			content.setText(softNameBuffer.toString());
			
			// 设置权限信息
			String privacyMsgs = getPrivacyPermissionMsg(result.getStringArrayList(UIConstants.VIRUS_MONITOR_PRIVACY_IDS_KEY));
			
			if (privacyMsgs == null || "".equals(privacyMsgs)) {
				//dividerLine.setVisibility(View.GONE);
				privacyTitle.setVisibility(View.GONE);
				privacyContent.setVisibility(View.GONE);
			} else {
				privacyContent.setText(privacyMsgs);
			}
				
		}
	}
	
	/**
	 * 输出隐私报告
	 * @param msgIds
	 * @return
	 */
	private String getPrivacyPermissionMsg(ArrayList<String> msgIds) {
		if (msgIds == null) return "";
		String[] privacyMsgs = this.getResources().getStringArray(R.array.privacy_msgs);
		
		// 根据msgId查找Msg内容
		StringBuffer sb = new StringBuffer();
		String id = null;
		int showMsgIdSize = msgIds.size();
		for (int i = 0; i < showMsgIdSize; i++) {
			id = msgIds.get(i);
			int privacyMsgsCnt = privacyMsgs.length;
			for (int j = 0; j < privacyMsgsCnt; j++) {
				if (privacyMsgs[j].startsWith(id)) {
					sb.append(privacyMsgs[j].substring(id.length() + 1) + "\n");
					break;
				}
			}
		}
		return sb.toString().trim();
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
	}
}
