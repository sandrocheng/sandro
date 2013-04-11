package com.tencent.onesecurity.safebox.ui;

import java.util.List;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.safebox.dao.ConfigDao;
import com.tencent.onesecurity.safebox.dao.DaoConstant;
import com.tencent.onesecurity.safebox.manager.AuthorityManager;
import com.tencent.onesecurity.safebox.manager.EncryptConvertManager;
import com.tencent.onesecurity.safebox.manager.PopStackManager;
import com.tencent.onesecurity.safebox.model.ConfigEntity;
import com.tencent.onesecurity.safebox.util.SdCardNotExistException;
import com.tencent.onesecurity.ui.activity.MainActivity;
import com.tencent.onesecurity.ui.customview.dialog.CustomDialog;
import com.tencent.onesecurity.ui.customview.layout.KeyboardLayout;
import com.tencent.onesecurity.ui.customview.layout.KeyboardLayout.KeyboardCallback;
import com.tencent.onesecurity.ui.customview.layout.VaultLayout;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.usage.qq.ActionStatsManager;
import com.tencent.onesecurity.usage.qq.EModelID;

/**
 * @ClassName: SetPwdActivity2
 * @Description:设置密码页
 * @author: Joy
 * @date: 2013-01-21
 * 
 */
public class SetPwdActivity extends BaseSafeBoxActivity implements
		 KeyboardCallback {

	private KeyboardLayout keyboardLayout = null;// 自定义密码输入键盘

	private Context mContext;
	
	// 当前自身状态值
	private int status = -1;// 状态值:根据不同的常量实现不同的Activity效果
	public static final int SET_PWD_FIRST_STEP = 0;// 状态常量：设置密码第一步
	public static final int SET_PWD_SECOND_STEP = 1;// 状态常量：设置密码第二步
	public static final int RESET_PWD_FIRST_STEP = 2;// 状态常量： 重置密码第一步
	public static final int RESET_PWD_SECOND_STEP = 3;// 状态常量： 重置密码第二步
	public static final int RESET_PWD_THIRD_STEP = 4;// 状态常量： 重置密码第三步
	public static final int INPUT_PWD_LOGIN = 5;// 状态常量： 正常时登陆密码输入
	public static final int INPUT_PWD_LOCKED = 6;// 状态常量： 锁屏时登陆密码输入
	public static final String EXTRAS_VALUME_STATUS = "valume_status";// 自身状态值常量
	public static final String EXTRAS_VALUME_PASSWORD = "valume_password";// 密码值常量
	public static final String EXTRAS_VALUME_FORGOT = "valume_forgot";// 密码找回常量
	private AuthorityManager authorityManager = AuthorityManager.getInstance();
	
	// 用于二次输入密码时保存前一个页的密码
	private String strPassword;
	
	private TextView textTitle;
	private TextView textTitleLit;
	
	// 当前是第几个输入框
	private int curIndex = 0;
	
	// 四个输入框
	private EditText inputText1 = null;
	private EditText inputText2 = null;
	private EditText inputText3 = null;
	private EditText inputText4 = null;
	
	// 每个输入框对于的值
	private String textVal1 = null;
	private String textVal2 = null;
	private String textVal3 = null;
	private String textVal4 = null;
	
	private ImageView inputView1;
	private ImageView inputView2;
	private ImageView inputView3;
	private ImageView inputView4;
	
	private LinearLayout ll_box;
	
	private Handler typeHandler = new Handler() {
		public void handleMessage(Message msg) {
			super.handleMessage(msg);
			int txt = msg.arg1;
			int txtLit = msg.arg2;
			clearInputTexts(true);
			showDoPwdErrorHint(txt, txtLit);
		}
	};

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		mContext = this;
		setContentView(R.layout.layout_setpwd);
		keyboardLayout = (KeyboardLayout) findViewById(R.id.keyboard);
		keyboardLayout.initView(this);
		keyboardLayout.setEye(false);
		
		ll_box = (LinearLayout)findViewById(R.id.buck);
		
		inputText1 = (EditText)findViewById(R.id.inputtext1);
		inputText2 = (EditText)findViewById(R.id.inputtext2);
		inputText3 = (EditText)findViewById(R.id.inputtext3);
		inputText4 = (EditText)findViewById(R.id.inputtext4);
		
		inputView1 = (ImageView)findViewById(R.id.inputview1);
		inputView2 = (ImageView)findViewById(R.id.inputview2);
		inputView3 = (ImageView)findViewById(R.id.inputview3);
		inputView4 = (ImageView)findViewById(R.id.inputview4);
		
		textTitle = (TextView)findViewById(R.id.pwd_title);
		textTitleLit = (TextView)findViewById(R.id.pwd_title_lit);
		
		Intent intent = getIntent();
		Bundle bundle = intent.getExtras();
		status = bundle.getInt(EXTRAS_VALUME_STATUS);
		
		
		switch (status) {
		case SET_PWD_FIRST_STEP:
			GoogleAnalyticsTracker.getInstance().trackView("初次进入设置密码");
			break;
		case SET_PWD_SECOND_STEP:
			strPassword = bundle.getString(EXTRAS_VALUME_PASSWORD);
			break;
		case RESET_PWD_FIRST_STEP:
			findViewById(R.id.imageUnlock).setVisibility(View.GONE);
			break;
		case RESET_PWD_SECOND_STEP:
			findViewById(R.id.imageUnlock).setVisibility(View.GONE);
			break;
		case RESET_PWD_THIRD_STEP:
			findViewById(R.id.imageUnlock).setVisibility(View.GONE);
			strPassword = bundle.getString(EXTRAS_VALUME_PASSWORD);
			break;
		case INPUT_PWD_LOGIN:
			GoogleAnalyticsTracker.getInstance().trackView("进入前输入密码");
			break;
		case INPUT_PWD_LOCKED:

			break;
		}
		initUIByStep();
	}
	
	@Override
	protected void onPause() {
		authorityManager.setDontCareLock(false);
		super.onPause();
	}

	@Override
	protected void onResume() {
		authorityManager.setDontCareLock(true);
		
		clearInputTexts(true);
		super.onResume();
	}
	
	@Override
	protected void onDestroy() {
		super.onDestroy();
		if (textTitle != null) {
			textTitle.clearAnimation();
		}
	}
	
	@Override
	public void onBackPressed() {
		if (status == INPUT_PWD_LOCKED) {
			goToSafeBoxHomePage(VaultLayout.BACK_FROM_LOCK_BACK);
		}
		super.onBackPressed();
	}
	
	private void updateTitle(int resId) {
		textTitle.setText(resId);
	}

	/**
	 * 初始化title
	 */
	private void initUIByStep() {
		switch (status) {
		case SET_PWD_FIRST_STEP:
			updateTitle(R.string.textview_setpwd_1);
			break;
		case SET_PWD_SECOND_STEP:
			updateTitle(R.string.textview_setpwd_2);
			break;
		case RESET_PWD_FIRST_STEP:
			findViewById(R.id.imageUnlock).setVisibility(View.GONE);
			updateTitle(R.string.textview_resetpwd_1);
			break;
		case RESET_PWD_SECOND_STEP:
			updateTitle(R.string.textview_resetpwd_2);
			break;
		case RESET_PWD_THIRD_STEP:
			updateTitle(R.string.textview_resetpwd_3);
			break;
		case INPUT_PWD_LOGIN:
			updateTitle(R.string.title_inputpwd);
			// 第一次进入时清空旧密码
			clearOldPwd();
			break;
		case INPUT_PWD_LOCKED:
			updateTitle(R.string.title_inputpwd);
			break;
		}
		
//		if (textTitle.getText() !=null && textTitle.getText().length() > 23) {
//			textTitle.setTextSize(TypedValue.COMPLEX_UNIT_PX, textTitle.getTextSize() - 5);
//		}
	}
	
	/**
	 * 清除旧密码
	 */
	private void clearOldPwd() {
		List<ConfigEntity> list = null;
		try {
			list = ConfigDao.getInstance().findListByType(DaoConstant.CONFIG_TYPE_PWDSET_KYE);
		} catch (SdCardNotExistException e1) {
		}
		
		boolean isNeedReset = false;
		if (list == null || list.size() == 0) {
			isNeedReset = true;
		}
		if (isNeedReset) {
			try {
				updateTitle(R.string.textview_setpwd_1);
				
				authorityManager.createAuthorityEntity();
				authorityManager.setPassword(null);
				checkDone();
				
				Dialog dialog = CustomDialog.createCustomDialogCommonBlack(this, getResources().getString(R.string.safebox_update_pwd_clear), null, getResources().getString(R.string.common_ok), new DialogInterface.OnClickListener() {
					
					@Override
					public void onClick(DialogInterface dialog, int which) {
						dialog.dismiss();
						// 跳到设置密码页
						Intent intent = new Intent();
						intent.setClass(SetPwdActivity.this, SetPwdActivity.class);
						intent.putExtra(SetPwdActivity.EXTRAS_VALUME_STATUS,
								SetPwdActivity.SET_PWD_FIRST_STEP);
						startActivityForResult(intent, PopStackManager.POPSTACK_PASSWORD_CREATE_FIRST_RESULT);
					}
				});
				
				dialog.setOnCancelListener(new OnCancelListener() {
					@Override
					public void onCancel(DialogInterface dialog) {
						SetPwdActivity.this.finish();
					}
				});
				dialog.setCanceledOnTouchOutside(false);
				dialog.show();
				
			} catch (SdCardNotExistException e) {
				showDialogNoSDCard();
				return;
			}
		}
	}
	
	private void checkDone() {
		// 不用再提示旧密码清空
		ConfigEntity entity = new ConfigEntity();
		entity.setContent(DaoConstant.CONFIG_TYPE_PWDSET_VALUE);
		entity.setType(DaoConstant.CONFIG_TYPE_PWDSET_KYE);
		try {
			ConfigDao.getInstance().insert(entity);
		} catch (SdCardNotExistException e) {
		}
	}

	/**
	 * 页面跳转
	 */
	private void sendIntent() {

		switch (status) {
		case SET_PWD_FIRST_STEP:
			GoogleAnalyticsTracker.getInstance().ClickButton("私密箱",
					"提交输入密码（第一次）", "设置密码", 1l);
			//
			startHideBoxAnim(new AnimationListener() {
				@Override
				public void onAnimationStart(Animation animation) { }
				@Override
				public void onAnimationRepeat(Animation animation) { }
				@Override
				public void onAnimationEnd(Animation animation) {
					ll_box.clearAnimation();
					
					clearInputTexts(false);
					
					Intent intent = new Intent();
					intent.setClass(SetPwdActivity.this, SetPwdActivity.class);
					intent.putExtra(SetPwdActivity.EXTRAS_VALUME_STATUS,
							SetPwdActivity.SET_PWD_SECOND_STEP);
					intent.putExtra(SetPwdActivity.EXTRAS_VALUME_PASSWORD, getPwdText());
					startActivityForResult(intent,
							PopStackManager.POPSTACK_PASSWORD_CREATE_SECOND);
				}
			});
			//
			break;
		case SET_PWD_SECOND_STEP:
			GoogleAnalyticsTracker.getInstance().ClickButton("私密箱",
					"提交输入密码（重复）", "设置密码", 1l);
			ActionStatsManager.getInstance().saveActionData(
					EModelID._EMID_Secure_MV_Create_PASSWORD);// 数据上报buck：初次设置密码
			
			this.setResult(PopStackManager.POPSTACK_PASSWORD_CREATE_SECOND_RESULT);
			this.finish();
			break;
		case RESET_PWD_FIRST_STEP:
			//
			startHideBoxAnim(new AnimationListener() {
				@Override
				public void onAnimationStart(Animation animation) { }
				@Override
				public void onAnimationRepeat(Animation animation) { }
				@Override
				public void onAnimationEnd(Animation animation) {
					ll_box.clearAnimation();
					
					clearInputTexts(false);
					
					Intent intent = new Intent();
					intent.setClass(SetPwdActivity.this, SetPwdActivity.class);
					intent.putExtra(SetPwdActivity.EXTRAS_VALUME_STATUS,
							SetPwdActivity.RESET_PWD_SECOND_STEP);
					startActivity(intent);
				}
			});
			//
			break;
		case RESET_PWD_SECOND_STEP:
			//
			startHideBoxAnim(new AnimationListener() {
				@Override
				public void onAnimationStart(Animation animation) { }
				@Override
				public void onAnimationRepeat(Animation animation) { }
				@Override
				public void onAnimationEnd(Animation animation) {
					ll_box.clearAnimation();
					
					clearInputTexts(false);
					
					Intent intent = new Intent();
					intent.setClass(SetPwdActivity.this, SetPwdActivity.class);
					intent.putExtra(SetPwdActivity.EXTRAS_VALUME_STATUS,
							SetPwdActivity.RESET_PWD_THIRD_STEP);
					intent.putExtra(SetPwdActivity.EXTRAS_VALUME_PASSWORD, getPwdText());
					startActivity(intent);
				}
			});
			//
			break;
		case RESET_PWD_THIRD_STEP:
			GoogleAnalyticsTracker.getInstance().ClickButton("私密箱",
					"提交修改私密箱密码", "设置", 1l);// google数据上报
			ActionStatsManager.getInstance().saveActionData(
					EModelID._EMID_Secure_MV_Setting_Modify);// 数据上报buck：修改私密设置选项
			
			goToSafeBoxHomePage(-1);
			break;
		case INPUT_PWD_LOGIN:
			GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "提交输入密码（二次进入）", "输入密码", 1l);
			ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_MV_INTO_Enter_Correct_PASSWORD);//数据上报buck：成功输入密码进入私密箱
			
			this.setResult(PopStackManager.POPSTACK_PASSWORD_INPUT_FIRST_RESULT);
			this.finish();
			break;
		}
	}
	
	/**
	 * 离开页面时密码输入框的动画
	 * @param listener
	 */
	private void startHideBoxAnim(AnimationListener listener) {
		Animation anim = new TranslateAnimation(0,  -1*  ll_box.getWidth(), 0,  0);
		anim.setFillAfter(true);
		anim.setDuration(300);
		anim.setAnimationListener(listener);
		ll_box.startAnimation(anim);
	}
	
	/**
	 * 获取当前已输入的密码
	 * @return
	 */
	private String getPwdText() {
		return textVal1 + textVal2 + textVal3 + textVal4;
	}
	
	/**
	 * 输入文字是否可见
	 */
	private boolean isMask = false;

	/**
	 * 变更可见/不可见状态
	 */
	private void changeTextShowState() {
		if (isMask) {
			inputView1.setVisibility(View.GONE);
			inputView2.setVisibility(View.GONE);
			inputView3.setVisibility(View.GONE);
			inputView4.setVisibility(View.GONE);
			
			switch (curIndex) {
			case 1:
				inputText1.setText(textVal1);
				break;
			case 2:
				inputText1.setText(textVal1);
				inputText2.setText(textVal2);
				break;
			case 3:
				inputText1.setText(textVal1);
				inputText2.setText(textVal2);
				inputText3.setText(textVal3);
				break;
			case 4:
				inputText1.setText(textVal1);
				inputText2.setText(textVal2);
				inputText3.setText(textVal3);
				inputText4.setText(textVal4);
				break;
			default:
				inputText1.setText(textVal1);
				inputText2.setText(textVal2);
				inputText3.setText(textVal3);
				inputText4.setText(textVal4);
				break;
			}
		} else {
			inputText1.setText("");
			inputText2.setText("");
			inputText3.setText("");
			inputText4.setText("");
			
			switch (curIndex) {
			case 1:
				inputView1.setVisibility(View.VISIBLE);
				break;
			case 2:
				inputView1.setVisibility(View.VISIBLE);
				inputView2.setVisibility(View.VISIBLE);
				break;
			case 3:
				inputView1.setVisibility(View.VISIBLE);
				inputView2.setVisibility(View.VISIBLE);
				inputView3.setVisibility(View.VISIBLE);
				
				break;
			case 4:
				inputView1.setVisibility(View.VISIBLE);
				inputView2.setVisibility(View.VISIBLE);
				inputView3.setVisibility(View.VISIBLE);
				inputView4.setVisibility(View.VISIBLE);
				
				break;
			}
		}
	}
	
	/**
	 * 清除所有输入框
	 */
	private void clearInputTexts(boolean isRealClear){
		if (isRealClear) {
			textVal1 = null;
			textVal2 = null;
			textVal3 = null;
			textVal4 = null;
		}
		
		inputText1.setText("");
		inputText2.setText("");
		inputText3.setText("");
		inputText4.setText("");
		
		inputView1.setVisibility(View.GONE);
		inputView2.setVisibility(View.GONE);
		inputView3.setVisibility(View.GONE);
		inputView4.setVisibility(View.GONE);
		
		curIndex = 0;
	}
	
	/**
	 * 显示错误信息
	 * @param _residTextView
	 */
	private void showDoPwdErrorHint(int _residTextView, int litText) {
		textTitle.setTextColor(mContext.getResources().getColor(
				R.color.red_1_ff6459));
		textTitle.setText(_residTextView);
		final Animation anim = new AlphaAnimation(1.0f,0f);
		anim.setDuration(200);
		anim.setRepeatCount(1);
		
		textTitle.startAnimation(anim);
		
		textTitleLit.setVisibility(View.VISIBLE);
		textTitleLit.setText(litText);
		textTitleLit.startAnimation(anim);
	}
	
	@Override
	public void OnKeyDown(int key) {
		if (key < 9 || key == 10) {// 点击数字0键到数字9键
			if (curIndex >= 4) {
				return ;
			}
			String keyStr = String.valueOf(key + 1);
			if (key == 10) {
				keyStr = "0";
			}
			
			switch (curIndex) {
			case 0:
				textVal1 = keyStr;
				inputText1.setText(keyStr);
				break;
			case 1:
				textVal2 = keyStr;
				inputText2.setText(keyStr);
				break;
			case 2:
				textVal3 = keyStr;
				inputText3.setText(keyStr);
				break;
			case 3:
				textVal4 = keyStr;
				inputText4.setText(keyStr);
				break;
			}
			curIndex++;
			changeTextShowState();
			
			if (curIndex >= 4) {
				typeFull();
			}
		} else {
			switch (key) {
			case 9:// 点击隐现切换功能键
				isMask = !isMask;
				keyboardLayout.setEye(isMask);
				changeTextShowState();
				break;
			case 11:// 点击单个删除功能键
				switch (curIndex) {
				case 1:
					textVal1 = "";
					inputText1.setText("");
					inputView1.setVisibility(View.GONE);
					break;
				case 2:
					textVal2 = "";
					inputText2.setText("");
					inputView2.setVisibility(View.GONE);
					break;
				case 3:
					textVal3 = "";
					inputText3.setText("");
					inputView3.setVisibility(View.GONE);
					break;
				case 4:
					textVal4 = "";
					inputText4.setText("");
					inputView4.setVisibility(View.GONE);
					break;
				}
				curIndex--;
				if (curIndex < 0 ) {
					curIndex=0;
				}
				
				break;
			case KeyboardLayout.BACK_KEY_ON_LONG_CLICK:// 点击全部删除功能键
				clearInputTexts(true);
				break;
			}
		}
	}
	
	/**
	 * 输入到第四个数字后触发的方法
	 */
	private void typeFull() {
		String pwd = getPwdText();
		
		switch (status) {
		case INPUT_PWD_LOGIN:
			try {
				authorityManager.createAuthorityEntity();
			} catch (SdCardNotExistException e) {
				showDialogNoSDCard();
				return;
			}
			if (authorityManager.comparePassWordWithMD5(pwd)) {
				AuthorityManager.getInstance().setLock(false);
				sendIntent();
			} else {
				Message msg = new Message();
				msg.arg1 = R.string.error_password_message1;
				msg.arg2 = R.string.error_password_message2;
				typeHandler.sendMessage(msg);
			}
			break;
		case INPUT_PWD_LOCKED:
			try {
				authorityManager.createAuthorityEntity();
			} catch (SdCardNotExistException e) {
				showDialogNoSDCard();
				return;
			}
			if (authorityManager.comparePassWordWithMD5(pwd)) {
				AuthorityManager.getInstance().setLock(false);
				this.finish();
			} else {
				Message msg = new Message();
				msg.arg1 = R.string.error_password_message1;
				msg.arg2 = R.string.error_password_message2;
				typeHandler.sendMessage(msg);
			}
			break;
		case SET_PWD_FIRST_STEP:
			sendIntent();
			
			break;
		case SET_PWD_SECOND_STEP:
			
			if (!getPwdText().equals(strPassword)) {
				Message msg = new Message();
				msg.arg1 = R.string.error_password_not_match1;
				msg.arg2 = R.string.error_password_not_match2;
				typeHandler.sendMessage(msg);
			} else {
				try {
					authorityManager.createAuthorityEntity();
					try {
						AuthorityManager.getInstance().setPassword(strPassword);
						checkDone();
					} catch (SdCardNotExistException e) {
					}
					
					// 密码版本兼容处理
					EncryptConvertManager.getInstance().startEncryptionVersionCheck(this);
					
					sendIntent();
				} catch (SdCardNotExistException e) {
					showDialogNoSDCard();
				}
			}
			break;
		case RESET_PWD_FIRST_STEP:
			if (!authorityManager.comparePassWordWithMD5(pwd)) {
				Message msg = new Message();
				msg.arg1 = R.string.error_password_message1;
				msg.arg2 = R.string.error_password_message2;
				typeHandler.sendMessage(msg);
			} else {
				sendIntent();
			}
			break;
		case RESET_PWD_SECOND_STEP:
			sendIntent();
			break;
		case RESET_PWD_THIRD_STEP:
			if (!pwd.equals(strPassword)) {
				Message msg = new Message();
				msg.arg1 = R.string.error_password_not_match1;
				msg.arg2 = R.string.error_password_not_match2;
				typeHandler.sendMessage(msg);
			} else {
				try {
					authorityManager.createAuthorityEntity();
					authorityManager.setPassword(strPassword);
					sendIntent();
				} catch (SdCardNotExistException e) {
					showDialogNoSDCard();
				}
			}
			break;

		default:
			break;
		}
	}

	public void goToSafeBoxHomePage(int typeGotoSafeBoxHomePage){
		Intent intent = new Intent();
		intent.setClass(this, MainActivity.class);
		intent.putExtra(VaultLayout.EXTRAS_VALUME_TYPE_GOTOSAFEBOXHOMEPAGE,typeGotoSafeBoxHomePage);		
		intent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
		startActivity(intent);
	}
	
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		super.onActivityResult(requestCode, resultCode, data);
		switch (requestCode) {
		case PopStackManager.POPSTACK_PASSWORD_CREATE_SECOND:
			if (resultCode == PopStackManager.POPSTACK_PASSWORD_CREATE_SECOND_RESULT) {
				switch (status) {
				case SET_PWD_FIRST_STEP:
					this.setResult(PopStackManager.POPSTACK_PASSWORD_CREATE_FIRST_RESULT);
					this.finish();
					break;
				}
			}
		break;
		// 针对新流程密码清空的情况
		case PopStackManager.POPSTACK_PASSWORD_CREATE_FIRST_RESULT:
				this.setResult(PopStackManager.POPSTACK_PASSWORD_INPUT_FIRST_RESULT);
				this.finish();
			break;
//		case PopStackManager.POPSTACK_PASSWORD_FORGOT_THIRD:
//			if (resultCode == PopStackManager.POPSTACK_PASSWORD_FORGOT_THIRD_RESULT) {
//				switch (status) {
//				case RESET_PWD_SECOND_STEP:
//					this.setResult(PopStackManager.POPSTACK_PASSWORD_FORGOT_SECOND_RESULT);
//					this.finish();
//					break;
//				}
//			}
//			break;
//		case PopStackManager.POPSTACK_PASSWORD_FORGOT_FIRST:
//			if (resultCode == PopStackManager.POPSTACK_PASSWORD_FORGOT_FIRST_RESULT) {
//				switch (status) {
//				case INPUT_PWD_LOGIN:					
//					this.setResult(PopStackManager.POPSTACK_PASSWORD_INPUT_FIRST_RESULT_FORGOT);
//					ActionStatsManager.getInstance().saveActionData(
//							EModelID._EMID_Secure_MV_Forgot_PASSWORD);// 数据上报buck：使用忘记密码(登陆用)
//					GoogleAnalyticsTracker.getInstance().ClickButton("私密箱",
//							"使用忘记密码", "设置", 1l);// google数据上报				
//					this.finish();
//					break;
//				case INPUT_PWD_LOCKED:
//					ActionStatsManager.getInstance().saveActionData(
//							EModelID._EMID_Secure_MV_Forgot_PASSWORD);// 数据上报buck：使用忘记密码(锁屏用)					
//					GoogleAnalyticsTracker.getInstance().ClickButton("私密箱",
//							"使用忘记密码", "设置", 1l);// google数据上报				
//					goToSafeBoxHomePage(VaultLayout.BACK_FROM_LOCK_FORGOT);
//					break;
//				}
//			}
//			break;
//		case PopStackManager.POPSTACK_PASSWORD_RESET_FIRST:
//			if (resultCode == PopStackManager.POPSTACK_PASSWORD_RESET_FIRST_RESULT) {
//				switch (status) {
//				case RESET_PWD_FIRST_STEP:
//					ActionStatsManager.getInstance().saveActionData(
//							EModelID._EMID_Secure_MV_Setting_Modify);// 数据上报buck：修改私密设置选项
//					// google数据上报buck:007
//					GoogleAnalyticsTracker.getInstance().ClickButton("私密箱",
//							"提交修改私密箱密码", "设置", 1l);// google数据上报
//					this.finish();
//					break;
//				}
//			}
//			break;
//		case PopStackManager.POPSTACK_PASSWORD_RESET_SECOND:
//			if (resultCode == PopStackManager.POPSTACK_PASSWORD_RESET_SECOND_RESULT) {
//				switch (status) {
//				case RESET_PWD_SECOND_STEP:
//					this.setResult(PopStackManager.POPSTACK_PASSWORD_RESET_FIRST_RESULT);
//					this.finish();
//					break;
//				}
//			}
//			break;
//		case PopStackManager.POPSTACK_PASSWORD_Question_ADD: // joy add 20121204
//            if (resultCode == PopStackManager.POPSTACK_PASSWORD_Question_ADD_RESULT) {
//            	this.setResult(PopStackManager.POPSTACK_PASSWORD_Question_ADD_RESULT);
//            	this.finish();
//            }
//            break;
		}
	}
}
