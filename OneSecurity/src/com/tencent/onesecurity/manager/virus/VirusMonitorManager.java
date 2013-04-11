/**
 * @ClassName: VirusMonitorManager
 * @Description:新应用安装后的监听器管理类
 * @author: hunt
 * @date: 2012-11-22
 */
package com.tencent.onesecurity.manager.virus;

import java.util.ArrayList;
import java.util.List;

import android.content.Intent;
import android.os.Bundle;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.manager.notification.StatusBarManager;
import com.tencent.onesecurity.manager.permission.PermissionCheckManager;
import com.tencent.onesecurity.model.AppReportEntity;
import com.tencent.onesecurity.ui.activity.virus.VirusInstallSoftwareDialogActivity;
import com.tencent.onesecurity.ui.helper.UIConstants;
import com.tencent.onesecurity.usage.winmess.WinmessAppReportManager;
import com.tencent.onesecurity.util.Log;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.qscanner.QScanConstants;
import com.tencent.tmsecure.module.qscanner.QScanListener;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import com.tencent.tmsecure.module.qscanner.QScannerManager;

/**
 * @ClassName: VirusMonitorManager
 * @Description:新应用安装后的监听器管理类
 * @author: hunt
 * @date: 2012-11-22
 */
public class VirusMonitorManager implements VirusScanFinishListener{

//	private static QScannerManager qScannerMananger = null;
	/**
	 * 扫描指定包名的apk
	 * @param pkgName
	 */
	public void doAppScan(String pkgName) {
		/** 病毒扫描引擎 */
		QScannerManager qScannerMananger = null;

		Log.d("TEST", "VirusMonitorManager: start of doAppScan.");
		if (qScannerMananger == null) {
			qScannerMananger = ManagerCreator.getManager(QScannerManager.class);
		}
		List<String> pkgNames = new ArrayList<String>();
		pkgNames.add(pkgName);
		
		qScannerMananger.scanPackages(pkgNames, new QScanListener() {

			@Override
			public void onCloudScan() {
				super.onCloudScan();
			}

			@Override
			public void onCloudScanError(int arg0) {
				super.onCloudScanError(arg0);
			}

			@Override
			public void onPackageScanProgress(int arg0,
					QScanResultEntity arg1) {
				super.onPackageScanProgress(arg0, arg1);
			}

			@Override
			public void onScanCanceled() {
				super.onScanCanceled();
			}

			@Override
			public void onScanContinue() {
				super.onScanContinue();
			}

			@Override
			public void onScanFinished(ArrayList<QScanResultEntity> results) {
				QScanResultEntity entity = null;
				boolean isVirus = false;
				
				if (results != null && results.size() != 0) {
					entity = results.get(0);
					
					if (entity.type != QScanConstants.TYPE_OK && entity.type != QScanConstants.TYPE_UNKNOWN) {

						// 广告无详细描述时,设置默认文案
						if ((QScanConstants.TYPE_AD_BLOCK == entity.type)
								&& (null == entity.discription || entity.discription
										.length() == 0)) {
							entity.discription = MainApplication
									.getContext()
									.getResources()
									.getString(R.string.vvcl_the_software_has_YYY_needed);
						}else
						// 风险无详细描述，设置默认文案
						if ((QScanConstants.TYPE_RISK == entity.type)
								&& (null == entity.discription || entity.discription.length() == 0)) {
							entity.discription = MainApplication.getContext().getResources().getString(
									R.string.vvcl_the_software_has_YYYY_needed);
						}
						
						//风险、病毒上报
						WinmessAppReportManager.getInstance().saveVirusData(entity.softName, entity.packageName, AppReportEntity.APP_VIRUS, entity.name, entity.type);
						isVirus = true;	
					}
				}
				
				// 杀毒后的处理
				VirusMonitorManager.this.OnScanFinishListner(isVirus, entity);
			}

			@Override
			public void onScanPaused() {
				super.onScanPaused();
			}

			@Override
			public void onScanStarted() {
				super.onScanStarted();
			}

			@Override
			public void onSdcardScanProgress(int arg0,
					QScanResultEntity arg1) {
				super.onSdcardScanProgress(arg0, arg1);
			}
		}, false);
		
		qScannerMananger.freeScanner();
		Log.d("TEST", "VirusMonitorManager: end of doAppScan.");
	}

	@Override
	public void OnScanFinishListner(boolean isVirus, QScanResultEntity entity) {
		
		if (entity == null) {
			Log.e("VirusMonitorManager", "entity == null");
		}
		
		// 病毒扫描后对该应用进行隐私Permission检查
		PermissionCheckManager prmsCheck = new PermissionCheckManager();
		
		// 检查是否包含隐私Permission
		// 去掉隐私监控检查的逻辑
		ArrayList<String> tipIDs = prmsCheck.checkPermission(entity.packageName);
		
		// -------------  以下根据扫描的结果进行UI展示   ------------------
		// 系统状态栏及默认Notification管理类
		StatusBarManager statusBarManager = StatusBarManager.getInstance();

		// 无病毒也无隐私报告，不弹pop
		if (!isVirus && (tipIDs == null || tipIDs.size() == 0)) return;
				
		// 封装需要UI显示的数据
		Bundle result = new Bundle();
		// 是否包含病毒
		result.putBoolean(UIConstants.VIRUS_MONITOR_IS_VIRUS_KEY, isVirus);
		// 病毒监控 Intent 参数 Key:软件名
		result.putString(UIConstants.VIRUS_MONITOR_SOFTNAME_INTENT_KEY, entity.softName);
		// 病毒监控 Intent 参数 Key:描述
		result.putString(UIConstants.VIRUS_MONITOR_DESC_INTENT_KEY, entity.discription);
		// 病毒监控 Intent 参数 Key:包名
		result.putString(UIConstants.VIRUS_MONITOR_PKGNAME_INTENT_KEY, entity.packageName);
		// 病毒监控 Intent 参数 Key:病毒类型
		result.putInt(UIConstants.VIRUS_MONITOR_TYPE_INTENT_KEY, entity.type);
		// 追加检查出来的隐私信息
		result.putStringArrayList(UIConstants.VIRUS_MONITOR_PRIVACY_IDS_KEY, tipIDs);
		
		// 安装应用 自动查杀通知
		statusBarManager.showAutoScanNotification(!isVirus, entity.softName, result);
		
		// 将扫描的结果pop给用户
		Intent t = new Intent();
		t.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK|Intent.FLAG_ACTIVITY_MULTIPLE_TASK);
		t.setClass(MainApplication.getContext(), VirusInstallSoftwareDialogActivity.class);
		t.putExtra(UIConstants.VIRUS_MONITOR_RESULT_INTENT_KEY, result);
		MainApplication.getContext().startActivity(t);
	}
}

interface VirusScanFinishListener {
	void OnScanFinishListner(boolean isVirus, QScanResultEntity entity);
}
