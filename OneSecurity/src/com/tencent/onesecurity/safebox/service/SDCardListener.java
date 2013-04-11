/**
 * FileName: SDCardListener.java
 * @Description: TODO(用一句话描述该文件做什么)
 * All rights Reserved, Designed By 21winmess
 * Copyright: Copyright(C) 2010-2011 
 * Company 21winmess DaLian LTD.
 * @author: Matrix xu
 * @version V2.0
 * Createdate: 2012-10-31 上午10:41:06
 *
 * Modification History:
 * Date Author Version Discription
 * -----------------------------------------------------------------------------------
 * 2012-10-31 Qute_Android2.0
 * Why & What is modified: <修改原因描述>
 */
package com.tencent.onesecurity.safebox.service;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.tencent.onesecurity.safebox.manager.AuthorityManager;
import com.tencent.onesecurity.safebox.manager.EncryptConvertManager;
import com.tencent.onesecurity.safebox.manager.SecurePicManager;
import com.tencent.onesecurity.ui.activity.MainActivity;
import com.tencent.onesecurity.ui.customview.layout.VaultLayout;
import com.tencent.onesecurity.util.FileUtil;

/**
 * @ClassName: SDCardListener
 * @Description:SDCard插拔监听器
 * @author: Matrix
 * @date: 2012-10-31 上午10:41:06
 * 
 */
public class SDCardListener extends BroadcastReceiver {

	//public static boolean IS_SDCARD_CHANGE = false;

	/**
	 * sdcard状态只要发生变化了,不管是被插入还是被拔出，这里都通知MainActivity
	 * SafeBoxLayout会根据FileUtil.hasStorageCard()判断当时sdcard是否挂载
	 */
	@Override
	public void onReceive(Context context, Intent intent) {
		// add by joy 加密算法版本兼容 start
		EncryptConvertManager.getInstance().resetVisitFlag();
		// add by joy 加密算法版本兼容 end
		
		ActivityManager am = (ActivityManager) context
				.getSystemService(Activity.ACTIVITY_SERVICE);
		boolean flag = (am.getRunningTasks(1).get(0).topActivity.getClassName()
				.toString().startsWith("com.tencent.onesecurity.safebox"))
				|| (am.getRunningTasks(1).get(0).topActivity.getClassName()
						.toString()
						.equals("com.tencent.onesecurity.ui.activity.MainActivity"));
		//IS_SDCARD_CHANGE = true;
		try {
			if (!flag) {// 如果当前画面不是私密箱功能的所属画面 或者
						// 不是主画面(MainActivity),那么不需要做画面跳转的,可以提示一下
				return;
			}
			if (Intent.ACTION_MEDIA_UNMOUNTED.equals(intent.getAction())) {
				// 拔出SD卡，如果有内置SD卡，不跳转主页面
				if(FileUtil.hasStorageCard()){
					return;
				}
				AuthorityManager.getInstance().notifyUnmount();// 通知私密箱首页
				goToSafeBoxHomePage(context, VaultLayout.BACK_SDCARD_OUT);
			}
			//  无用代码
			/*	else if (Intent.ACTION_MEDIA_SCANNER_FINISHED.equals(intent.getAction())) {//scard插入，没有扫描结束时候，点击unlock会重新设置密码,现更新业务触发状态点
				AuthorityManager.getInstance().notifyMount();
				goToSafeBoxHomePage(context, VaultLayout.SELF_SDCARD_IN);// 通知私密箱首页
				// Intent i = new Intent(context, MainActivity.class);
				// i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
				// context.startActivity(i);
			}*/
			else if (Intent.ACTION_MEDIA_MOUNTED.equals(intent.getAction())) {//scard插入，没有扫描结束时候，点击unlock会重新设置密码,现更新业务触发状态点
				// 程序自己发的广播加加了falgs ,sdk 2.3以上 默认flag 是16
				if (intent.getFlags() == ImportFileService.FLAG_SDCARD_SCAN
						|| intent.getFlags() == ImportFileService.FLAG_SDCARD_SCAN + 16) {
					SecurePicManager.isMediaScanStart = false ; // 此时媒体扫描服务已经启动
					return;
				}
				// 只能在主画面收到挂载广播，此时FileUtil.hasStorageCard()==ture， 刷新画面，但不跳转
				AuthorityManager.getInstance().notifyMount();
				if(FileUtil.hasStorageCard()){
					return;
				}
				goToSafeBoxHomePage(context, VaultLayout.SELF_SDCARD_IN);// 通知私密箱首页
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void goToSafeBoxHomePage(Context _context,
			int typeGotoSafeBoxHomePage) {
//		if(FileUtil.hasStorageCard()){
//			return;
//		}
		
		Intent intent = new Intent();
		intent.setClass(_context, MainActivity.class);
		intent.putExtra(VaultLayout.EXTRAS_VALUME_TYPE_GOTOSAFEBOXHOMEPAGE,
				typeGotoSafeBoxHomePage);
		intent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP | Intent.FLAG_ACTIVITY_NEW_TASK);
		_context.startActivity(intent);
	}

	public interface SDCardChangeListener {

		void onMount();

		void onUnmount();
	}
}
