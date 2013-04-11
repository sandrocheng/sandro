package com.tencent.onesecurity.ui.customview.layout;


import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.RotateAnimation;
import android.view.animation.Animation.AnimationListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.dao.UserInfoMode;
import com.tencent.onesecurity.safebox.dao.DaoConstant;
import com.tencent.onesecurity.safebox.manager.AuthorityManager;
import com.tencent.onesecurity.safebox.manager.EncryptConvertManager;
import com.tencent.onesecurity.safebox.manager.PopStackManager;
import com.tencent.onesecurity.safebox.service.SDCardListener.SDCardChangeListener;
import com.tencent.onesecurity.safebox.ui.NoteListActivity;
import com.tencent.onesecurity.safebox.ui.SecurePicGridActivity;
import com.tencent.onesecurity.safebox.ui.SetPwdActivity;
import com.tencent.onesecurity.safebox.util.SdCardNotExistException;
import com.tencent.onesecurity.ui.activity.MainActivity.SubViewListener;
import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine;
import com.tencent.onesecurity.ui.customview.layout.vault.CircleView;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.usage.qq.ActionStatsManager;
import com.tencent.onesecurity.usage.qq.EModelID;
import com.tencent.onesecurity.util.FileUtil;
import com.tencent.onesecurity.util.Log;
import com.tencent.onesecurity.util.ToastUtil;

/**
 * 
 * @ClassName: VaultLayout
 * @Description:私密箱主页面
 * @author: Gordon Bi
 * @date: 2012-11-20 下午8:44:09
 * 
 */
public class VaultLayout extends FrameLayout implements SubViewListener, OnTouchListener{

	public static final String EXTRAS_VALUME_TYPE_GOTOSAFEBOXHOMEPAGE = "goto_safebox_homepage";// 具体值为下面的四个常量之一
	public static final int BACK_FROM_LOCK_BACK = 204;// 在私密箱具体业务内容子界面的锁屏状态中，直接按手机的back键，要求返回私密箱主界面，且为锁屏状态
	public static final int BACK_FROM_LOCK_FORGOT = 205;// 在私密箱具体业务内容子界面的锁屏状态中，完成密码找回操作，要求返回私密箱主界面，且为锁屏状态
	public static final int BACK_SDCARD_OUT = 206;// 在私密箱具体业务内容子界面发生SD卡拔出事件
	public static final int SELF_SDCARD_IN = 207;// 本身所在Activity处于栈顶时发生SD卡插入事件

	public static final int NOR_OPEN_A = 1;// 解锁状态动画 
	public static final int UNLOCK_A = 2;// 开锁动画 
	public static final int SDCARD_OUT_A = 3;// sd卡拔出动画
	public static final int SDCARD_IN_A = 4;//  sd卡插入动画
	public static final int LOCK_BREATHE = 5;//  锁按钮文字 呼吸动画
	public static final int SHOW_ICON = 6;//显示icon
	public static final int NOR_A_NO_DURATION = 7;//
	public static final int HIDE_CIRCLE = 8;//
	public static final int SHOW_CIRCLE = 9;//
	public static final int LOCK_A = 10;// 锁状态动画 

	/**
	 * 正常情况下文字大小26sp
	 */
	public static final float NORMAL_TEXT_SIZE = 15f;
	
	/**
	 * 按下时候24sp
	 */
	public static final float PRESS_TEXT_SIZE = 13.67f;

	/** 圆环外圈 */
	private CircleView outsideIv;

	/** 圆环中圈 */
	private CircleView middleIv;

	/** 圆环内圈 */
	private CircleView insideIv;

	/** note图标*/
	private ImageView noteIv;

	/** photo图标 */
	private ImageView photoIv;
	private LinearLayout underlayer;

//	/** 整个圆圈的布局 */
//	private FrameLayout lockFrameFl;
//
//	/** 下面2个icon的布局 */
//	private RelativeLayout iconFrameRl;

	/** 圆圈下光线图标 */
	private ImageView lightIv;

	/** note的文字 */
	private TextView noteTv;

	/** photo的文字 */
	private TextView photoTv;

	/** note的文字LinearLayout */
	private LinearLayout noteLl;

	/** photo的文字LinearLayout */
	private LinearLayout photoLl;

	private Context context;

	/** tips的文字 */
	private TextView tipsTv;

	/** lock的文字 */
	private TextView lockTv;

	/** 是否设置过密码 */
	private boolean hasSetPassword;

	/** 没有sd卡图标 */
	private ImageView withoutSdCardIv;

//	/** note图标模型 */
//	private IconModel noteModel;

//	/** photo图标模型 */
//	private IconModel photoModel;

	/** 是否需要播放解锁动画 */
	public static boolean needUnlockCarton;
	
	/** 是否有sd卡 */
	public boolean hasSdcard;
	
	/**2012.12.13 add by tony 私密箱按钮触控范围变小使用的布局文件 */
	private LinearLayout touckLock;

	private AuthorityManager authorityManager = AuthorityManager.getInstance();
	
	private Handler handler;
	/** true刚刚解锁的状态;               
	false未解锁或解锁后去过其他页面   */
	private boolean justOpen = false;
	
	private boolean onShow = false;
	/**2013.02.01 add by tony 私密按钮 点击标志位 */
	public static boolean btnEnabled = true;

	public VaultLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
		this.context = context;
	}

	public VaultLayout(Context context) {
		super(context);
	}

	/**
	 * 初始化私密箱界面
	 * @param cartonEngine 动画引擎
	 */
	public void init(CartonEngine cartonEngine) {
		// 初始化私密空间主界面提示功能文字View对象
		tipsTv = (TextView) this.findViewById(R.id.tv_vault_main_tips);// 提示textview对象
		// 初始化锁区域的全部View对象
//		lockFrameFl = (FrameLayout) this
//				.findViewById(R.id.fl_valut_main_lockframe);// 整个锁区域
		lightIv = (ImageView) this.findViewById(R.id.iv_valut_main_light);// 锁口光晕
		outsideIv = (CircleView) this.findViewById(R.id.iv_valut_main_outside);// 外圈
		outsideIv.setAdjustViewBounds(true);
		middleIv = (CircleView) this.findViewById(R.id.iv_valut_main_middle);// 中圈
		middleIv.setAdjustViewBounds(true);
		insideIv = (CircleView) this.findViewById(R.id.iv_valut_main_inside);// 内圈
		insideIv.setAdjustViewBounds(true);
		lockTv = (TextView) this.findViewById(R.id.tv_valut_main_lock);// 中间文字(Lock;Unlock)
		withoutSdCardIv = (ImageView) this
				.findViewById(R.id.iv_valut_main_withoutsdcard);// 中间无SD卡提示图片
		// 记事本功能项目View初始化
		noteIv = (ImageView) this.findViewById(R.id.iv_vault_main_note);// "记事本"图片对象
		noteIv.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				if(btnEnabled){
					toNoteView();
				}else{
					GoogleAnalyticsTracker.getInstance().ClickButton("置灰点击统计", "点击私密文本", "", 1l);
				}
			}
		});
		noteLl = (LinearLayout) this.findViewById(R.id.ll_vault_main_note);// "记事本"文字对象LinearLayout
		noteTv = (TextView) this.findViewById(R.id.tv_vault_main_note);// "记事本"文字对象
		noteLl.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				if(btnEnabled){
					toNoteView();
				}else{
					GoogleAnalyticsTracker.getInstance().ClickButton("置灰点击统计", "点击私密文本", "", 1l);
				}
			}
		});

		// 像册功能项目View初始化
		photoIv = (ImageView) this.findViewById(R.id.iv_vault_main_photo);// "像册"图片对象
		photoIv.setImageResource(getVipResourceId());// 为"像册"图片对象设置当前具体内容
		photoIv.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				if(btnEnabled){
					toPhotoView();
				}else{
					GoogleAnalyticsTracker.getInstance().ClickButton("置灰点击统计", "点击私密图片", "", 1l);
				}
			}
		});
		underlayer = (LinearLayout) findViewById(R.id.ll_vault_main_underlayer);
		photoLl = (LinearLayout) this.findViewById(R.id.ll_vault_main_photo);// "像册"文字对象LinearLayout
		photoTv = (TextView) this.findViewById(R.id.tv_vault_main_photo);// "像册"文字对象
		photoLl.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				if(btnEnabled){
					toPhotoView();
				}else{
					GoogleAnalyticsTracker.getInstance().ClickButton("置灰点击统计", "点击私密图片", "", 1l);
				}
			}
		});

		noteIv.setOnTouchListener(this);
		noteTv.setOnTouchListener(this);
		noteLl.setOnTouchListener(this);
		photoIv.setOnTouchListener(this);
		photoTv.setOnTouchListener(this);
		photoLl.setOnTouchListener(this);
		//
//		iconFrameRl = (RelativeLayout) this
//				.findViewById(R.id.rl_vault_main_iconframe);
		lightIv.setVisibility(View.INVISIBLE);
		touckLock = (LinearLayout)findViewById(R.id.ll_touck);
		touckLock.setOnClickListener(lockOnClickListener);

		// add by joy 20130116 start
		initIconAnim(); // 初始化动画 
		initCircleAnim();
		
		hideIconWihtoutAnimation();
		
		lockNor(false); 
		// add by joy 20130116 end
	}
	
    private Animation iconAnimHideNoAnim;
	private Animation iconAnimShow;
	
	private Animation animOut;
	private Animation animMid;
	private Animation animIn;
	private Animation animLayer;
	
	private Animation animOut2;
	private Animation animMid2;
	private Animation animIn2;
	private Animation animLayer2;
	
	private Animation rotateInside;
	private Animation rotateMid;
	private AnimationSet rotateOutside;
	private Animation layerOpacity;
	
	/**
	 * 初始化icon按钮动画
	 */
	private void initIconAnim() {
		// 灰显
		iconAnimHideNoAnim = new AlphaAnimation(0.1f, 0.1f);
		iconAnimHideNoAnim.setFillAfter(true);
		// 渐显
		iconAnimShow = new AlphaAnimation(0.1f, 1f);
		iconAnimShow.setDuration(400);
		iconAnimShow.setFillAfter(true);
	}
	
	/**
	 * 初始化大圆的动画
	 */
	private void initCircleAnim() {
		// 渐隐
		animOut = new AlphaAnimation(1.0f, 0.15f);
		animOut.setDuration(500);
		animOut.setFillAfter(true);
		animMid = new AlphaAnimation(1.0f, 0.25f);
		animMid.setDuration(500);
		animMid.setFillAfter(true);
		animIn = new AlphaAnimation(1.0f, 0.4f);
		animIn.setDuration(500);
		animIn.setFillAfter(true);
		animLayer = new AlphaAnimation(1.0f, 0.5f);
		animLayer.setFillAfter(true);
		animLayer.setDuration(500);
		
		// 保持灰度效果（原因：有些手机在pager滑动到其他页面时会重画vault页面，动画会被打乱）
		animOut2= new AlphaAnimation(0.15f, 0.15f);
		animOut2.setFillAfter(true);
		animMid2 = new AlphaAnimation(0.25f, 0.25f);
		animMid2.setFillAfter(true);
		animIn2 = new AlphaAnimation(0.4f, 0.4f);
		animIn2.setFillAfter(true);
		animLayer2 = new AlphaAnimation(0.5f, 0.5f);
		animLayer2.setFillAfter(true);
		
		// 加锁时旋转的动画
		int duration = 300;
		
		rotateInside = new RotateAnimation(0, DEGREE_INSIDE,
				Animation.RELATIVE_TO_SELF, 0.5f, Animation.RELATIVE_TO_SELF,
				0.5f);
		rotateInside.setDuration(duration);
		rotateInside.setFillAfter(true);
		
		rotateMid = new RotateAnimation(0, DEGREE_MID,
				Animation.RELATIVE_TO_SELF, 0.5f, Animation.RELATIVE_TO_SELF,
				0.5f);
		rotateMid.setDuration(duration);
		rotateMid.setFillAfter(true);
		
		final Animation outsideAnimation = new RotateAnimation(0, DEGREE_OUTSIDE,
				Animation.RELATIVE_TO_SELF, 0.5f, Animation.RELATIVE_TO_SELF,
				0.5f);
		outsideAnimation.setDuration(duration);
		outsideAnimation.setFillAfter(true);
		
		final Animation outAlpha = new AlphaAnimation(1.0f, 1.0f);
		
		layerOpacity = new AlphaAnimation(1.0f, 1.0f); // 这个动画是针对最底层圆有时回不到非透明状态
		layerOpacity.setFillAfter(true);
		
		rotateOutside = new AnimationSet(false);
		rotateOutside.addAnimation(outAlpha);
		rotateOutside.addAnimation(outsideAnimation);
		rotateOutside.setFillAfter(true);
	}
	
	/**
	 * 清除大圆动画
	 */
	private void clearAlphaAnim(){
		outsideIv.clearAnimation();
		middleIv.clearAnimation();
		insideIv.clearAnimation();
		underlayer.clearAnimation();
		
		underlayer.invalidate();
		outsideIv.invalidate();
		insideIv.invalidate();
		underlayer.invalidate();
	}
	
	/**
	 * 清除icon按钮动画
	 */
	private void clearIconAlpha() {
		photoIv.clearAnimation();
		photoTv.clearAnimation();
		noteIv.clearAnimation();
		noteTv.clearAnimation();
		
		photoIv.invalidate();
		photoTv.invalidate();
		noteIv.invalidate();
		noteTv.invalidate();
	}


	private OnClickListener lockOnClickListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			authorityManager.resetPassWordTimeout();//重置时间
			if (hasSetPassword) {
				if (AuthorityManager.getInstance().isLock()) {
					toLoginView();
				} else {
					AuthorityManager.getInstance().setLock(true);
					clearAlphaAnim();
					handler.sendEmptyMessage(LOCK_A);
				}
			} else {
				toSetPasswordView();
			}
		}
	};


	/**
	 * 文字渐显出现 如果已经出现则不变
	 */
	private void wordFadeIn() {
		if(hasSdcard){
			tipsTv.setText(R.string.vault_main_tips);
		} else {
			tipsTv.setText(R.string.vault_main_tip_without_sdcard);
		}
		if(tipsTv.getVisibility() == View.VISIBLE){
			return;
		}
		tipsTv.setVisibility(View.VISIBLE);
		Animation fadeInAnimation = AnimationUtils.loadAnimation(context,
				android.R.anim.fade_in);
		fadeInAnimation.setDuration(1000);
		tipsTv.startAnimation(fadeInAnimation);
	}

	/**
	 * 跳转到设置密码页面
	 */
	private void toSetPasswordView() {

		Intent intent = new Intent();
		intent.setClass(context, SetPwdActivity.class);
		intent.putExtra(SetPwdActivity.EXTRAS_VALUME_STATUS,
				SetPwdActivity.SET_PWD_FIRST_STEP);// 进入输入密码登陆
		((Activity) context).startActivityForResult(intent,
				PopStackManager.POPSTACK_PASSWORD_CREATE_FIRST);
	}

	/**
	 * 跳转到登陆界面
	 */
	private void toLoginView() {
		Intent intent = new Intent();
		intent.setClass(context, SetPwdActivity.class);
		intent.putExtra(SetPwdActivity.EXTRAS_VALUME_STATUS,
				SetPwdActivity.INPUT_PWD_LOGIN);// 进入设置密码第一步
		((Activity) context).startActivityForResult(intent,
				PopStackManager.POPSTACK_PASSWORD_INPUT_FIRST);
	}

	/**
	 * 跳转到私密Note页面
	 */
	private void toNoteView() {
		// add by joy 加密版本兼容处理 start
		if (EncryptConvertManager.getInstance().isHigherVersion(DaoConstant.MEDIA_TYPE_NOTE)) {
			ToastUtil.ShowSimpleTextShortToast(getResources().getString(R.string.safebox_encrypt_version_need_heigher),R.layout.custom_toast);
			return ;
		}
		// add by joy 加密版本兼容处理 end
		
		AuthorityManager.getInstance().resetPassWordTimeout();
		// google数据上报
		GoogleAnalyticsTracker.getInstance().ClickButton("私密箱",
				"打开文本", "私密文本", 1l);
		final Intent intent = new Intent(context, NoteListActivity.class);
		context.startActivity(intent);

	}
	
	/**
	 * 跳转到私密图片页面
	 */
	private void toPhotoView() {
		// add by joy 加密版本兼容处理 start
		if (EncryptConvertManager.getInstance().isHigherVersion(DaoConstant.MEDIA_TYPE_PIC)) {
			ToastUtil.ShowSimpleTextShortToast(getResources().getString(R.string.safebox_encrypt_version_need_heigher),R.layout.custom_toast);
			return ;
		}
		// add by joy 加密版本兼容处理 end
		AuthorityManager.getInstance().resetPassWordTimeout();
		final Intent intent = new Intent(context, SecurePicGridActivity.class);
		context.startActivity(intent);
		
		GoogleAnalyticsTracker.getInstance().ClickButton("私密箱",
				"打开图片", "私密图片", 1l);
	}

	/**
	 * 显示解锁大圆的按钮文言
	 * 
	 * @param isLock
	 */
	private void showLockTextViewCarton(boolean isLock) {
		String tips = null;
		if(justOpen){
			touckLock.setEnabled(false);
			tips = null;//add by tony 如果是第一次打开不显示lcok文字
		}else if(isLock){
			touckLock.setEnabled(true);
			tips = context.getString(R.string.vault_main_open);
		}else{
			touckLock.setEnabled(true);
			tips =  context.getString(R.string.vault_main_lock);
		}
		final Animation fadeIn = AnimationUtils.loadAnimation(context,
				android.R.anim.fade_in);
		fadeIn.setDuration(2000);
		lockTv.setText(tips);
		lockTv.startAnimation(fadeIn);
		lockTv.setVisibility(View.VISIBLE);
		
		fadeIn.setAnimationListener(new AnimationListener() {
			@Override
			public void onAnimationStart(Animation animation) {
			}
			@Override
			public void onAnimationRepeat(Animation animation) {
			}
			@Override
			public void onAnimationEnd(Animation animation) {
				handler.sendEmptyMessage(LOCK_BREATHE);
			}
		});

	}

	/**
	 * 播放解锁动画
	 */
	private void unlock() {
		int oneTime = 350;
		final Animation insideAnimation = new RotateAnimation(40, 0,
				Animation.RELATIVE_TO_SELF, 0.5f, Animation.RELATIVE_TO_SELF,
				0.5f);
		insideAnimation.setDuration(oneTime);
		insideAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
		insideAnimation.setRepeatCount(0);

		final Animation middleAnimation = new RotateAnimation(-45, 0,
				Animation.RELATIVE_TO_SELF, 0.5f, Animation.RELATIVE_TO_SELF,
				0.5f);
		middleAnimation.setDuration(oneTime);
		middleAnimation.setStartOffset(oneTime);
		middleAnimation.setRepeatCount(0);
		middleAnimation.setInterpolator(new AccelerateDecelerateInterpolator());

		final Animation outsideAnimation = new RotateAnimation(140, 0,
				Animation.RELATIVE_TO_SELF, 0.5f, Animation.RELATIVE_TO_SELF,
				0.5f);
		outsideAnimation.setDuration(oneTime);
		outsideAnimation.setStartOffset(oneTime*2);
		outsideAnimation.setRepeatCount(0);
		outsideAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
		outsideAnimation.setAnimationListener(new AnimationListener() {
			@Override
			public void onAnimationStart(Animation animation) { }
			@Override
			public void onAnimationRepeat(Animation animation) { }
			
			@Override
			public void onAnimationEnd(Animation animation) {
				hideCircles(true);
			}
		});

		insideIv.clearDegree();
		middleIv.clearDegree();
		outsideIv.clearDegree();

		insideIv.startAnimation(insideAnimation);
		middleIv.startAnimation(middleAnimation);
		outsideIv.startAnimation(outsideAnimation);
		showLightAndBtn(oneTime*3);
		
	}
	/**
	 * 动画显示 先光线后 图标 
	 * @param StartOffset 动画延迟时间
	 */
	private void showLightAndBtn(long StartOffset) {
		wordFadeIn();
		lightIv.setVisibility(View.VISIBLE);
		Animation fadeInAnimation = AnimationUtils.loadAnimation(context,
				android.R.anim.fade_in);
		fadeInAnimation.setDuration(500);
		fadeInAnimation.setStartOffset(StartOffset);
		lightIv.startAnimation(fadeInAnimation);
		fadeInAnimation.setAnimationListener(new AnimationListener() {
			@Override
			public void onAnimationStart(Animation animation) {

			}

			@Override
			public void onAnimationRepeat(Animation animation) {

			}

			@Override
			public void onAnimationEnd(Animation animation) {
				handler.sendEmptyMessage(SHOW_ICON);
			}

		});

	}

	/**
	 * 动画 显示图标，显示文字
	 */
	private void showIcon() {
		setBtnEnabled(true);
		needUnlockCarton = false;
	}
	
	/**
	 * 隐藏图标不使用动画
	 */
	private void hideIconWihtoutAnimation() {
		setBtnEnabled(false);
	}

	/**
	 * 隐藏\显示图标使用动画
	 * @param enabled
	 */
	private void toggleIconWihAnimation(boolean enabled) {
		if (enabled) {
			photoIv.startAnimation(iconAnimShow);
			photoTv.startAnimation(iconAnimShow);
			noteIv.startAnimation(iconAnimShow);
			noteTv.startAnimation(iconAnimShow);
		} else {
			photoIv.startAnimation(iconAnimHideNoAnim);
			photoTv.startAnimation(iconAnimHideNoAnim);
			noteIv.startAnimation(iconAnimHideNoAnim);
			noteTv.startAnimation(iconAnimHideNoAnim);
		}
	}
	
	/**
	 * 判断vip状态
	 */
	private int getVipResourceId() {
		int vipStatus = DaoCreator.createUserInfoDao().getUserLevelInfo();
		int resourceId = R.drawable.img_vault_main_photos_not_vip_default;
		switch (vipStatus) {
		case UserInfoMode.STANDARD_USER:
//			resourceId = R.drawable.sel_img_vault_main_photos_not_vip; // modify by joy 2013.1.31已经重写onTouch了，不需再用select
			resourceId = R.drawable.img_vault_main_photos_not_vip_default;
			break;
		case UserInfoMode.MEMBER_OUT_OF_DATE_USER:
//			resourceId = R.drawable.sel_img_vault_main_photos_expired_vip;
			resourceId = R.drawable.img_vault_main_photos_expired_vip_default;
			break;
		case UserInfoMode.MEMBER_USER:
//			resourceId = R.drawable.sel_img_vault_main_photos_vip;
			resourceId = R.drawable.img_vault_main_photos_vip_default;
			break;
		case UserInfoMode.TRIAL_OUT_OF_DATE_USER:
//			resourceId = R.drawable.sel_img_vault_main_photos_expired_vip;
			resourceId = R.drawable.img_vault_main_photos_expired_vip_default;
			break;
		case UserInfoMode.TRIAL_USER:
//			resourceId = R.drawable.sel_img_vault_main_photos_vip;
			resourceId = R.drawable.img_vault_main_photos_vip_default;
			break;
		case UserInfoMode.MEMBER_PREOPEN_USER: // 定制VIP
//			resourceId = R.drawable.sel_img_vault_main_photos_vip;
			resourceId = R.drawable.img_vault_main_photos_vip_default;
			break ;
		default:
//			resourceId = R.drawable.sel_img_vault_main_photos_expired_vip;
			resourceId = R.drawable.img_vault_main_photos_expired_vip_default;
			break;
		}
		return resourceId;
	}

	/**
	 * 判断vipPress状态
	 */
	private int getVipPressResourceId() {
		int vipStatus = DaoCreator.createUserInfoDao().getUserLevelInfo();
		int resourceId = R.drawable.img_vault_main_photos_not_vip_press;
		switch (vipStatus) {
		case UserInfoMode.STANDARD_USER:
			resourceId = R.drawable.img_vault_main_photos_not_vip_press;
			break;
		case UserInfoMode.MEMBER_OUT_OF_DATE_USER:
			resourceId = R.drawable.img_vault_main_photos_expired_vip_press;
			break;
		case UserInfoMode.MEMBER_USER:
			resourceId = R.drawable.img_vault_main_photos_vip_press;
			break;
		case UserInfoMode.TRIAL_OUT_OF_DATE_USER:
			resourceId = R.drawable.img_vault_main_photos_expired_vip_press;
			break;
		case UserInfoMode.TRIAL_USER:
			resourceId = R.drawable.img_vault_main_photos_vip_press;
			break;
		case UserInfoMode.MEMBER_PREOPEN_USER: // 定制VIP
			resourceId = R.drawable.img_vault_main_photos_vip_press;
			break ;
		default:
			resourceId = R.drawable.img_vault_main_photos_expired_vip_press;
			break;
		}
		return resourceId;
	}
	// **************************SubViewListener start **********************/
	
	@Override
	public void onDestroy() {
		Log.d("VaultLayout", "onDestroy");
		onDestory();
	}

	@Override
	public void onShow(int from) {
		onShow = true;
		GoogleAnalyticsTracker.getInstance().trackView("私密主页面");
        ActionStatsManager.getInstance().saveActionData(
                EModelID._EMID_Secure_INTO_US_MAANGER);// 数据上报：打开私密箱页面
		AuthorityManager.getInstance().registSDCardChangeListener(
				sDCardChangeListener);
		try {
			hasSetPassword = AuthorityManager.getInstance().hasSetPassword();
		} catch (SdCardNotExistException e) {
			e.printStackTrace();
		}
		hasSdcard = FileUtil.hasStorageCard();
		if(!hasSdcard){
			clearAlphaAnim();
			handler.sendEmptyMessage(SDCARD_OUT_A);
			return;
		}
		photoIv.setImageResource(getVipResourceId());// 为"像册"图片对象设置当前具体内容
		
		if (from == SubViewListener.FROM_PAGER) {
			if (AuthorityManager.getInstance().isLock()) {
				handler.sendEmptyMessage(NOR_A_NO_DURATION);
			}else{
				handler.sendEmptyMessage(NOR_OPEN_A);
			}
		} else if (from == SubViewListener.FROM_RESUME) {
			if (!AuthorityManager.getInstance().isLock()) {
				if (needUnlockCarton) {
					touckLock.setEnabled(false);
					handler.sendEmptyMessage(UNLOCK_A);
				} else {
					handler.sendEmptyMessage(NOR_OPEN_A);
				}
			} else {
//				if (isOpenBefore) {
//					clearAlphaAnim();					
//				}
				handler.sendEmptyMessage(NOR_A_NO_DURATION);
			}
		}
	}

//private boolean isOpenBefore = false;
	@Override
	public void onHidden(int from) {
		if(from==SubViewListener.FROM_PAGER){
		}else {
//			if (!AuthorityManager.getInstance().isPureLock()) {
//				isOpenBefore = true;
//			} else {
//				isOpenBefore = false;
//			}
		}
		justOpen = false;
		onShow = false;
		
		// joy 在二级页面时主页被杀掉处理 2013.02.19 start
		if (AuthorityManager.getInstance().isLock()) {
			lockNor(false) ;
		} else {
			showLightAndBtn(0); // 解锁动画未跑完就滑屏
		}
		// joy 在二级页面时主页被杀掉处理 2013.02.19 end
		
		reset();
		authorityManager.resetPassWordTimeout();//脱离页面 统一重置时间
		AuthorityManager.getInstance().unRegistSDCardChangeListener();
	}
	
	// joy 在二级页面时主页被杀掉处理 2013.02.19 start
	public void onRestoreInstance(boolean isResult) {
		if (AuthorityManager.getInstance().isLock() == false) {
			
			if (isResult) {
				try {
					if (AuthorityManager.getInstance().hasSetPassword() == false) {
						return ;
					}
				} catch (SdCardNotExistException e) {
				}
				// 新注册密码成功返回点
				AuthorityManager.getInstance().setLock(false);
				needUnlockCarton = true;
				justOpen = true;
			} else {
				insideIv.clearDegree();
				middleIv.clearDegree();
				outsideIv.clearDegree();
				
				hideCircles(false);
			}
		}
		onShow(SubViewListener.FROM_RESUME);
	}
	// joy 在二级页面时主页被杀掉处理 2013.02.19 end
	/**
	 * 重置到标准状态
	 */
	private void reset() {
		lightIv.clearAnimation();
		lockTv.clearAnimation();
		tipsTv.clearAnimation();
		lightIv.setVisibility(View.INVISIBLE);
		lockTv.setVisibility(View.GONE);
		tipsTv.setVisibility(View.VISIBLE);
		withoutSdCardIv.setVisibility(View.GONE);
		lockTv.setAnimation(null);
		tipsTv.setText(R.string.vault_main_tips);
		// tony bug id: 9584572   vip进入一次私密箱页面后 vip状态发生改变，私密箱的图片按钮的vip状态没有更新
		photoIv.setImageResource(getVipResourceId());// 为"像册"图片对象设置当前具体内容
		needUnlockCarton = false;
	}

	@Override
	public void onOutOfPage() {
		Log.d("VaultLayout", "onOutOfPage");
		clearAlphaAnim();
		clearIconAlpha();
		
		onShow = true;
		if (AuthorityManager.getInstance().isLock()) {
			handler.sendEmptyMessage(SHOW_CIRCLE);
		}else{
			handler.sendEmptyMessage(HIDE_CIRCLE);
		}
	}

	// **************************SubViewListener end **********************/

	/**
	 * 播放标准动画（已锁状态）
	 */
	private void normalAnimation() {
		wordFadeIn();
		lightIv.setVisibility(View.INVISIBLE);
		lockNor(true);
		setBtnEnabled(false);
		showLockTextViewCarton(true);
	}

   /**
	 * 播放标准动画（已锁状态）
	 */
	private void normalNoAnimation() {
		handler.sendEmptyMessage(SHOW_CIRCLE);
		wordFadeIn();
		lightIv.setVisibility(View.INVISIBLE);
		
		setBtnEnabled(false);
		showLockTextViewCarton(true);
	}
	
	/**
	 * 设置按钮是否可点击
	 * @param enabled
	 */
	private void setBtnEnabled(boolean enabled) {
		if (btnEnabled && enabled) {
			return ;
		}
		
		btnEnabled = enabled;
//		if (noteIv.isEnabled() && enabled) {
//			return ;
//		}
//		
//		noteIv.setEnabled(enabled);
//		noteTv.setEnabled(enabled);
//		photoIv.setEnabled(enabled);
//		photoTv.setEnabled(enabled);
//		noteLl.setEnabled(enabled);
//		photoLl.setEnabled(enabled);
		
		toggleIconWihAnimation(enabled);
	}
	
	/**
	 * sd卡拔出
	 */
	public void sdcardOnUnmount() {
		hasSdcard = false;
		clearAlphaAnim();
		handler.sendEmptyMessage(SDCARD_OUT_A);
	}
	
	/**
	 * sd卡插入
	 */
	public void sdcardOnMount() {
		hasSdcard = true;
		handler.sendEmptyMessage(SDCARD_IN_A);
	}
	
	/**
	 * 播放动画  sd卡拔出
	 */
	private void lostSdcardAnimation() {
		reset();
		wordFadeIn();
		withoutSdCardIv.setVisibility(View.VISIBLE);
		touckLock.setEnabled(false);
		AuthorityManager.getInstance().setLock(true);
		
		lockNor(false);
		hideIconWihtoutAnimation();
	}
	
	/**
	 * 播放动画  sd卡插入
	 */
	private void getSdcardAnimation() {
		reset();
		normalAnimation();
		AuthorityManager.getInstance().setLock(true);
	}
	
	@Override
	public boolean onTouch(View view, MotionEvent me) {
		if (!btnEnabled) {
			return false;
		}
		int id = view.getId();
		switch (me.getAction()) {
		case MotionEvent.ACTION_DOWN:
			if(id == R.id.iv_vault_main_note
					||id == R.id.ll_vault_main_note||id == R.id.tv_vault_main_note){
				noteTv.setTextColor(Color.argb(50, 255, 255, 255));
				noteIv.setImageResource(R.drawable.img_vault_main_notes_press);
			}else if(id == R.id.iv_vault_main_photo
					||id == R.id.ll_vault_main_photo||id == R.id.tv_vault_main_photo){
				photoIv.setImageResource(getVipPressResourceId());
				photoTv.setTextColor(Color.argb(50, 255, 255, 255));
			}
			break;
		case MotionEvent.ACTION_UP:
		case MotionEvent.ACTION_OUTSIDE:
		case MotionEvent.ACTION_CANCEL:
			if(id == R.id.iv_vault_main_note
					||id == R.id.ll_vault_main_note||id == R.id.tv_vault_main_note){
				noteTv.setTextColor(Color.argb(255, 255, 255, 255));
//				noteIv.setImageResource(R.drawable.sel_img_vault_main_notes);// modify by joy 2013.1.31已经重写onTouch，不需要用select
				noteIv.setImageResource(R.drawable.img_vault_main_notes_default);
			}else if(id == R.id.iv_vault_main_photo
					||id == R.id.ll_vault_main_photo||id == R.id.tv_vault_main_photo){
				photoTv.setTextColor(Color.argb(255, 255, 255, 255));
				photoIv.setImageResource(getVipResourceId());
			}
			break;
		}
		return false;
	}
	public void initHandler() {
		handler = new Handler() {
			@Override
			public void handleMessage(Message msg) {
				if(!onShow){
					return;
				}
				switch (msg.what) {
					case NOR_A_NO_DURATION:
						normalNoAnimation();
						break;
					case NOR_OPEN_A:
						showLightAndBtn(0);
						break;
					case UNLOCK_A:
						unlock();
						break;
					case SDCARD_OUT_A:
						lostSdcardAnimation();
						break;
					case SDCARD_IN_A:
						justOpen = false ;// 双SD卡手机在主界面重新插入SD卡，中间文字消失问题
						getSdcardAnimation();
						break;
					case LOCK_BREATHE:
						final Animation breathe = AnimationUtils.loadAnimation(context,
								R.anim.anim_booster_alpha_go_breathe);
						lockTv.clearAnimation();
						lockTv.startAnimation(breathe);
						break;
					case SHOW_ICON:
						showIcon();// 显示icon
						showLockTextViewCarton(false);
						break;
					case HIDE_CIRCLE:
						hideCircles(false);
						break;
					case SHOW_CIRCLE:
						lockNor(false);
						outsideIv.setAlpha(255);
						setBtnEnabled(false);
						break;
					case LOCK_A:
						doLockAnim();
						break;
				}

				super.handleMessage(msg);
			}
		};

	}

	private SDCardChangeListener sDCardChangeListener = new SDCardChangeListener() {

		@Override
		public void onUnmount() {
			sdcardOnUnmount();
		}

		@Override
		public void onMount() {
			sdcardOnMount();
		}
	};
	
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		switch (requestCode) {
		case PopStackManager.POPSTACK_PASSWORD_CREATE_FIRST:
			if (resultCode == PopStackManager.POPSTACK_PASSWORD_CREATE_FIRST_RESULT) {
				try {
					if (AuthorityManager.getInstance().hasSetPassword() == false) {
						return ;
					}
				} catch (SdCardNotExistException e) {
				}
				// 新注册密码成功返回点
				AuthorityManager.getInstance().setLock(false);
				needUnlockCarton = true;
				justOpen = true;
			}
			break;
		case PopStackManager.POPSTACK_PASSWORD_INPUT_FIRST:
			try {
					if (AuthorityManager.getInstance().hasSetPassword() == false) {
						return ;
					}
				} catch (SdCardNotExistException e) {
				}
			switch (resultCode) {
			case PopStackManager.POPSTACK_PASSWORD_INPUT_FIRST_RESULT:// 输入密码登陆成功返回点
			case PopStackManager.POPSTACK_PASSWORD_INPUT_FIRST_RESULT_FORGOT:// 在登陆界面使用密码找回成功后返回主界面
				AuthorityManager.getInstance().setLock(false);
				needUnlockCarton = true;
				justOpen = true;
				break;
			}
			break;

		}
	}
	

	private void onDestory() {
		lightIv.setBackgroundDrawable(null);
		outsideIv.setBackgroundDrawable(null);
		middleIv.setBackgroundDrawable(null);
		insideIv.setBackgroundDrawable(null);
		withoutSdCardIv.setBackgroundDrawable(null);
		noteIv.setBackgroundDrawable(null);
		photoIv.setBackgroundDrawable(null);

		lightIv.setImageDrawable(null);
		outsideIv.setImageDrawable(null);
		middleIv.setImageDrawable(null);
		insideIv.setImageDrawable(null);
		withoutSdCardIv.setImageDrawable(null);
		noteIv.setImageDrawable(null);
		photoIv.setImageDrawable(null);
	}

	private static final int DEGREE_INSIDE = 40;
	private static final int DEGREE_MID = -45;
	private static final int DEGREE_OUTSIDE = 150;
	
	private void lockNor(boolean isDuration) {
		insideIv.clearAnimation();
		middleIv.clearAnimation();
		outsideIv.clearAnimation();
		underlayer.clearAnimation();
		
		insideIv.setDegree(DEGREE_INSIDE, true);
		middleIv.setDegree(DEGREE_MID, true);
		outsideIv.setDegree(DEGREE_OUTSIDE, true);
	}
	
	private void hideCircles(boolean isDuration){
		if (isDuration) {
			middleIv.startAnimation(animMid);
			insideIv.startAnimation(animIn);
			outsideIv.startAnimation(animOut);
			underlayer.startAnimation(animLayer);
		} else {
			middleIv.startAnimation(animMid2);
			insideIv.startAnimation(animIn2);
			outsideIv.startAnimation(animOut2);
			underlayer.startAnimation(animLayer2);
		}
	}
	
	private void doLockAnim() {
		wordFadeIn();
		lightIv.setVisibility(View.INVISIBLE);
		setBtnEnabled(false);
		showLockTextViewCarton(true);
		
		insideIv.startAnimation(rotateInside);
		middleIv.startAnimation(rotateMid);
		outsideIv.startAnimation(rotateOutside);
		underlayer.startAnimation(layerOpacity);
	}
}
