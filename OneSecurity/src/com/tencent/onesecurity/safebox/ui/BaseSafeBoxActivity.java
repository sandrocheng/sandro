/**
 * FileName: BaseSafeBoxActivity.java
 * @Description: TODO(用一句话描述该文件做什么)
 * All rights Reserved, Designed By 21winmess
 * Copyright: Copyright(C) 2010-2011 
 * Company 21winmess DaLian LTD.
 * @author: Matrix xu
 * @version V2.0
 * Createdate: 2012-11-7 下午4:02:53
 *
 * Modification History:
 * Date Author Version Discription
 * -----------------------------------------------------------------------------------
 * 2012-11-7 Qute_Android2.0
 * Why & What is modified: <修改原因描述>
 */
package com.tencent.onesecurity.safebox.ui;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.inputmethod.InputMethodManager;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.dao.UserInfoMode;
import com.tencent.onesecurity.safebox.manager.AuthorityManager;
import com.tencent.onesecurity.safebox.util.MemoryStatus;
import com.tencent.onesecurity.ui.activity.MainActivity;
import com.tencent.onesecurity.ui.activity.commonComponent.BaseActivity;
import com.tencent.onesecurity.ui.customview.dialog.CustomDialog;
import com.tencent.onesecurity.ui.customview.layout.VaultLayout;

/**
 * @ClassName: BaseSafeBoxActivity
 * @Description:safebox父类
 * @author: Matrix
 * @date: 2012-11-7 下午4:02:53
 * 
 */
public abstract class BaseSafeBoxActivity extends BaseActivity {
	
	// vip按钮 状态nor
	public static final int BTN_TYPE_NOR = 1001;
	// vip按钮 状态press
	public static final int BTN_TYPE_PRESS = 1002;
	// vip按钮 状态disable
	public static final int BTN_TYPE_DISABLE = 1003;
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.tencent.one.ui.activity.commonComponent.BaseActivity#onCreate(android
	 * .os.Bundle)
	 */
	private AuthorityManager authorityManager = AuthorityManager.getInstance();

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see android.app.Activity#onPause()
	 */
	@Override
	protected void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
		authorityManager.resetPassWordTimeout();
	}

	@Override
	protected void onStart() {
		super.onStart();
		if (!MemoryStatus.externalMemoryAvailable()) {
			goToSafeBoxHomePage(this, VaultLayout.BACK_SDCARD_OUT);
			finish();
		}

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see android.app.Activity#onResume()
	 */
	@Override
	protected void onResume() {
		super.onResume();
		if (authorityManager.isLock()) {
			hideSoftKeyBoard();
			showPwdActivity();
		}
	}

	/**
	 * 隐藏软键盘
	 */
	private void hideSoftKeyBoard() {
		InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
		if (imm != null && imm.isActive()) {
			imm.hideSoftInputFromWindow(getWindow().peekDecorView().getWindowToken(), 0);
		}

	}

	protected void showPwdActivity() {
		Intent i = new Intent();
		i.setClass(this, SetPwdActivity.class);
		i.putExtra(SetPwdActivity.EXTRAS_VALUME_STATUS, SetPwdActivity.INPUT_PWD_LOCKED);
		startActivity(i);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see android.app.Activity#onStop()
	 */
	@Override
	protected void onStop() {
		// TODO Auto-generated method stub
		super.onStop();
	}

	/**
	 * 跳转到主页
	 * 
	 * @param _context
	 * @param typeGotoSafeBoxHomePage
	 */
	public void goToSafeBoxHomePage(Context _context, int typeGotoSafeBoxHomePage) {
		Intent intent = new Intent();
		intent.setClass(_context, MainActivity.class);
		intent.putExtra(VaultLayout.EXTRAS_VALUME_TYPE_GOTOSAFEBOXHOMEPAGE, typeGotoSafeBoxHomePage);
		intent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP | Intent.FLAG_ACTIVITY_NEW_TASK);
		_context.startActivity(intent);
	}

	public void showDialogNoSDCard() {	
		Dialog mDialog = CustomDialog.createCustomDialogCommonBlack(this,
				this.getString(R.string.vault_main_tip_without_sdcard2),
				this.getString(R.string.common_ok), null,
				new DialogInterface.OnClickListener() {
					@Override
					public void onClick(DialogInterface dialog, int which) {
						switch (which) {
						case CustomDialog.LEFT_BUTTON_CLICK:
							// OK
							dialog.dismiss();
							break;
						}
					}
				});
		mDialog.show();
	}
	
	/**
	 * 判断vip状态
	 */
	public int getVipResourceId(int type) {
		int vipStatus = DaoCreator.createUserInfoDao().getUserLevelInfo();
		int resourceId = R.drawable.btn_vault_photos_import_not_vip_nor;
		if(type == BTN_TYPE_NOR){
			switch (vipStatus) {
			case UserInfoMode.STANDARD_USER:
				resourceId = R.drawable.btn_vault_photos_import_not_vip_nor;
				break;
			case UserInfoMode.MEMBER_OUT_OF_DATE_USER:
				resourceId = R.drawable.btn_vault_photos_import_vip_expired_nor;
				break;
			case UserInfoMode.MEMBER_USER:
				resourceId = R.drawable.btn_vault_photos_import_vip_nor;
				break;
			case UserInfoMode.TRIAL_OUT_OF_DATE_USER:
				resourceId = R.drawable.btn_vault_photos_import_vip_expired_nor;
				break;
			case UserInfoMode.TRIAL_USER:
				resourceId = R.drawable.btn_vault_photos_import_vip_nor;
				break;
			case UserInfoMode.MEMBER_PREOPEN_USER: // 定制VIP
				resourceId = R.drawable.btn_vault_photos_import_vip_nor;
				break ;
			default:
				resourceId = R.drawable.btn_vault_photos_import_not_vip_nor;
				break;
			}
		}else if(type == BTN_TYPE_PRESS){
			switch (vipStatus) {
			case UserInfoMode.STANDARD_USER:
				resourceId = R.drawable.btn_vault_photos_import_not_vip_press;
				break;
			case UserInfoMode.MEMBER_OUT_OF_DATE_USER:
				resourceId = R.drawable.btn_vault_photos_import_vip_expired_press;
				break;
			case UserInfoMode.MEMBER_USER:
				resourceId = R.drawable.btn_vault_photos_import_vip_press;
				break;
			case UserInfoMode.TRIAL_OUT_OF_DATE_USER:
				resourceId = R.drawable.btn_vault_photos_import_vip_expired_press;
				break;
			case UserInfoMode.TRIAL_USER:
				resourceId = R.drawable.btn_vault_photos_import_vip_press;
				break;
			case UserInfoMode.MEMBER_PREOPEN_USER: // 定制VIP
				resourceId = R.drawable.btn_vault_photos_import_vip_press;
				break ;
			default:
				resourceId = R.drawable.btn_vault_photos_import_not_vip_press;
				break;
			}
		}else if(type == BTN_TYPE_DISABLE){
			switch (vipStatus) {
			case UserInfoMode.STANDARD_USER:
				resourceId = R.drawable.btn_vault_photos_import_not_vip_disable;
				break;
			case UserInfoMode.MEMBER_OUT_OF_DATE_USER:
				resourceId = R.drawable.btn_vault_photos_import_vip_disabled;
				break;
			case UserInfoMode.MEMBER_USER:
				resourceId = R.drawable.btn_vault_photos_import_vip_disabled;
				break;
			case UserInfoMode.TRIAL_OUT_OF_DATE_USER:
				resourceId = R.drawable.btn_vault_photos_import_vip_disabled;
				break;
			case UserInfoMode.TRIAL_USER:
				resourceId = R.drawable.btn_vault_photos_import_vip_disabled;
				break;
			case UserInfoMode.MEMBER_PREOPEN_USER: // 定制VIP
				resourceId = R.drawable.btn_vault_photos_import_vip_disabled;
				break ;
			default:
				resourceId = R.drawable.btn_vault_photos_import_not_vip_disable;
				break;
			}
		}
		return resourceId;
	}
}
