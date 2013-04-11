package com.tencent.onesecurity.ui.activity.vip;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.TranslateAnimation;
import android.view.animation.Animation.AnimationListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.dao.UserInfoDao;
import com.tencent.onesecurity.dao.UserInfoMode;
import com.tencent.onesecurity.manager.viewnotify.MainViewNotify;
import com.tencent.onesecurity.manager.vip.INotifcatePayResult;
import com.tencent.onesecurity.manager.vip.VipInfomationConst;
import com.tencent.onesecurity.manager.vip.VipPaymentManager;
import com.tencent.onesecurity.receiver.PaymentBroadcastReceiver;
import com.tencent.onesecurity.service.ChargeService;
import com.tencent.onesecurity.ui.activity.MainActivity;
import com.tencent.onesecurity.ui.activity.commonComponent.BaseActivity;
import com.tencent.onesecurity.ui.customview.dialog.CustomLoadingDialog;
import com.tencent.onesecurity.ui.customview.widget.CustomIconButton;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.usage.qq.ActionStatsManager;
import com.tencent.onesecurity.usage.qq.EModelID;
import com.tencent.onesecurity.util.Log;
import com.tencent.onesecurity.util.PaymentInformationUtil;
import com.tencent.onesecurity.util.PhoneInfoUtil;
import com.tencent.onesecurity.util.ToastUtil;

public class VipZoneActivity  extends BaseActivity implements OnClickListener{
	private ImageView imgvVipSign = null;
	private Button btnGetTrial = null;
	private CustomIconButton btnGetVip = null;
	private UserInfoDao mUserInfoDao;
	private CustomLoadingDialog mDialog;
	private TextView textRemainingDaysTip= null;
	private LinearLayout layoutRemainingDaysText= null;
	private LinearLayout layoutRemainingDaysImage= null;
	private LinearLayout layoutPrivatePhotos= null;
	private LinearLayout layoutVirusDatabase= null;
	private int lRemainingDays;
	private View view;
	private ImageView imageDayViewB = null;
	private ImageView imageDayViewT = null;
	private ImageView imageDayViewH = null;
	private ImageView imagePrivatePhotos = null;
	private ImageView imageVirusDatabase = null;
	private boolean bFromNoficationBar = false;
	private ImageView imageMasking = null;
	
	private boolean getTrialBtnTranslateAnimation = false;
	private boolean bShowVIPMasking = false;
	
	private PaymentBroadcastReceiver mGetStatus = new PaymentBroadcastReceiver();
	private VipZoneNotifcatePayResultCB payReusltCB = new VipZoneNotifcatePayResultCB();
	
	private final int HANDLE_ON_GET_STATUS = 200;
	
	/* (non-Javadoc)
	 * @see android.app.Activity#onCreate(android.os.Bundle)
	 */
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		view = LayoutInflater.from(this).inflate(R.layout.layout_vip_main_activity, null);
		setContentView(view);
		
		updateSubTitleBar(this, view, getString(R.string.vip_zone_title), -1, null, -1, null, true);
		mUserInfoDao = DaoCreator.createUserInfoDao();
		imgvVipSign = (ImageView)view.findViewById(R.id.vip_main_activity_vip_image);
		btnGetVip = (CustomIconButton)view.findViewById(R.id.vip_main_get_more_days);
		btnGetTrial = (Button)view.findViewById(R.id.vip_main_activity_btn_get_trial);
		textRemainingDaysTip = (TextView)view.findViewById(R.id.vip_remaingdays_0);
		layoutRemainingDaysText = (LinearLayout)view.findViewById(R.id.vip_remaingdays_text_layout);
		layoutRemainingDaysImage = (LinearLayout)view.findViewById(R.id.vip_remaingdays_image_layout);
        imageDayViewB = (ImageView) view.findViewById(R.id.vip_main_activity_remaing_days_b);
        imageDayViewT = (ImageView) view.findViewById(R.id.vip_main_activity_remaing_days_t);
        imageDayViewH = (ImageView) view.findViewById(R.id.vip_main_activity_remaing_days_h);
        layoutPrivatePhotos = (LinearLayout)view.findViewById(R.id.vip_main_layout_vip_right_private_photos);
        layoutVirusDatabase = (LinearLayout)view.findViewById(R.id.vip_main_layout_vip_right_virus_database);
        
        imagePrivatePhotos = (ImageView) view.findViewById(R.id.image_vip_main_private_photos);
        imageVirusDatabase = (ImageView) view.findViewById(R.id.image_vip_main_virus_database);
        imageMasking = (ImageView) view.findViewById(R.id.image_vip_main_activity_masking);
        
        layoutPrivatePhotos.setOnClickListener(this);
        layoutVirusDatabase.setOnClickListener(this);
        
        imgvVipSign.setOnClickListener(this);
        textRemainingDaysTip.setOnClickListener(this);
        layoutRemainingDaysText.setOnClickListener(this);
        layoutRemainingDaysImage.setOnClickListener(this);
        imageMasking.setOnClickListener(this);
        
        getTrialBtnTranslateAnimation = false;
		
		updateUI();
		Intent intent = this.getIntent();
		if(intent != null) {
			bFromNoficationBar = intent.getBooleanExtra("from_notification_bar", false);
			if(bFromNoficationBar) {
				mUserInfoDao.setUserIsOutOfTime(0);
			}
		}
		
		mDialog =  new CustomLoadingDialog(this,false);
		mDialog.setMessage(getString(R.string.vip_zone_processing_payment));
		//mDialog = DialogUtil.createSimpleLoading(this, getString(R.string.vip_zone_processing_payment), false);
		if(btnGetTrial != null)
			btnGetTrial.setOnClickListener(this);
		if(btnGetVip != null)
			btnGetVip.setOnClickListener(this);
		
		GoogleAnalyticsTracker.getInstance().trackView("VIP主页面");
	}

	/* (non-Javadoc)
	 * @see android.view.View.OnClickListener#onClick(android.view.View)
	 */
	@Override
	public void onClick(View v) {
		int viewID = v.getId();
		if(viewID == R.id.vip_main_activity_btn_get_trial) {
			if (mUserInfoDao.getUsedTrialFlag() == 0) {
				Intent i = new Intent(this, ChargeService.class);
    			i.addFlags(ChargeService.TRAIL_OPEN);
    			startService(i);
    			mUserInfoDao.setTrialHasSendFlag(1);
    			showDialog();
            }
            ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_Trial_Get_Click);
            
            GoogleAnalyticsTracker.getInstance().ClickButton("VIP", "点击试用", "试用", 1L);
		}
		else if(viewID == R.id.vip_main_get_more_days) {
    			Intent i = new Intent();
    			i.putExtra("Entry_from_vip_zone", true);
                i.setClass(VipZoneActivity.this, VipUpgradeActivity.class);
                startActivity(i);
        	
            ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_VIP_Get_Click);

        	GoogleAnalyticsTracker.getInstance().ClickButton("VIP", "点击付费", "付费", 1L);
		}
		else if(viewID == R.id.vip_main_layout_vip_right_private_photos) {
            if (mUserInfoDao.getUserIsVIP()) {
                MainViewNotify.notifyChange(MainActivity.VAULT_INDEX, VipZoneActivity.this,
                        MainActivity.ACTION_NULL_INDEX);
                //add by kevin 20130312
                GoogleAnalyticsTracker.getInstance().ClickButton("VIP", "VIP点击私密介绍", "VIP点击私密介绍", 1L);
            } else {
                ToastUtil.ShowSimpleTextShortToast(getString(R.string.vip_exclusive_function),R.layout.custom_toast);
                //add by kevin 20130312
                GoogleAnalyticsTracker.getInstance().ClickButton("VIP", "非VIP点击私密介绍", "非VIP点击私密介绍", 1L);
            }
		}
		else if(viewID == R.id.vip_main_layout_vip_right_virus_database) {
            if (mUserInfoDao.getUserIsVIP()) {
                MainViewNotify.notifyChange(MainActivity.ANTIVIRUS_INDEX, VipZoneActivity.this,
                        MainActivity.ACTION_UPDATE_DB_INDEX);
                //add by kevin 20130312
                GoogleAnalyticsTracker.getInstance().ClickButton("VIP", "VIP点击杀毒介绍", "VIP点击杀毒介绍", 1L);
            } else {
               ToastUtil.ShowSimpleTextShortToast(getString(R.string.vip_exclusive_function),R.layout.custom_toast);
               //add by kevin 20130312
               GoogleAnalyticsTracker.getInstance().ClickButton("VIP", "非VIP点击杀毒介绍", "非VIP点击杀毒介绍", 1L);
            }
		}
		else if(viewID == R.id.vip_main_activity_vip_image ) {
			ToastUtil.ShowSimpleTextShortToast(getString(R.string.vip_zone_vip_introduction),R.layout.custom_toast);
            //add by kevin 20130312
			GoogleAnalyticsTracker.getInstance().ClickButton("VIP", "点击VIPICON", "VIPICON", 1L);
		}
		else if(viewID == R.id.vip_remaingdays_0
				|| viewID == R.id.vip_remaingdays_text_layout
				|| viewID == R.id.vip_remaingdays_image_layout) {
			long mRemainingTime = mUserInfoDao.getUserSurplusSecond() + 1;
			if(mRemainingTime < 0) 
				mRemainingTime = 0;
			//long days = mRemainingTime/60/60/24;
			if(mUserInfoDao.getUserLevelInfo() == UserInfoMode.STANDARD_USER) {
				ToastUtil.ShowSimpleTextShortToast(getString(R.string.vip_zone_vip_remainding_days_introduction_1),R.layout.custom_toast);
			}
			else {
				ToastUtil.ShowSimpleTextShortToast(getString(R.string.vip_zone_vip_remainding_days_introduction_2),R.layout.custom_toast);
			}
			
            //add by kevin 20130312
			GoogleAnalyticsTracker.getInstance().ClickButton("VIP", "点击时间", "点击时间", 1L);
		}
		else if(viewID == R.id.image_vip_main_activity_masking ) {
			cancelVIPMasking();
		}
	}
	
	/**
	 * 
	 */
	private void cancelVIPMasking() {
		bShowVIPMasking = false;
		Animation anim = AnimationUtils.loadAnimation(this,R.anim.anim_vip_main_activity_masking_exit);
		anim.setAnimationListener(new AnimationListener() {
			@Override
			public void onAnimationStart(Animation animation) {}
			@Override
			public void onAnimationRepeat(Animation animation) {}
			@Override
			public void onAnimationEnd(Animation animation) {
				imageMasking.setVisibility(View.GONE);
				mUserInfoDao.setHasShowMaskingFlag(true);
			}
		});
		imageMasking.setAnimation(anim);
		imageMasking.startAnimation(anim);
	}

	/* (non-Javadoc)
     * @see android.app.Activity#onResume()
     */
    @Override
    protected void onResume() {
    	super.onResume();
//		Log.i("QQDOCTOR", "VipZoneActivity :: registerNotifcatePayResult");
    	VipPaymentManager.getInstance().registerNotifcatePayResult(payReusltCB);
    	updateUI();
    }
    
    /* (non-Javadoc)
     * @see android.app.Activity#onPause()
     */
    @Override
    protected void onPause() {
    	super.onPause();
		//Log.i("QQDOCTOR", "VipZoneActivity :: unregisterNotifcatePayResult");
    	VipPaymentManager.getInstance().unregisterNotifcatePayResult();
    }

    @Override
    protected void onStart() {
        super.onStart();
        IntentFilter intentFilter = new IntentFilter(VipInfomationConst.paymentGetStatus);  
        intentFilter.addAction(VipInfomationConst.paymentOpenTrialSucc);
        intentFilter.addAction(VipInfomationConst.paymentOpenTrialFailed);
        intentFilter.addAction(VipInfomationConst.paymentOpenTrialNetError);
        registerReceiver(mGetStatus, intentFilter);
    }
    
    /* (non-Javadoc)
     * @see com.tencent.onesecurity.ui.activity.commonComponent.BaseActivity#onDestroy()
     */
    @Override
    protected void onDestroy() {
//        Log.i("QQDOCTOR", "VipZoneActivity::onDestroy()");
    	super.onDestroy();
    }
    
    @Override
    protected void onStop() {
        super.onStop();
        unregisterReceiver(mGetStatus);
    }
	
    private void refeshRemainingDaysImage() {

        // 取得 Intent 中 VIP剩余时间天数没,判断是否需要更新 VIP剩余时间天数图片
        if (this.getIntentData()) {

            int[] imageDays = { R.drawable.img_vip_main_counter_0, R.drawable.img_vip_main_counter_1,
                    R.drawable.img_vip_main_counter_2, R.drawable.img_vip_main_counter_3,
                    R.drawable.img_vip_main_counter_4, R.drawable.img_vip_main_counter_5,
                    R.drawable.img_vip_main_counter_6, R.drawable.img_vip_main_counter_7,
                    R.drawable.img_vip_main_counter_8, R.drawable.img_vip_main_counter_9 };
            
            imageDayViewB.setImageResource(imageDays[this.lRemainingDays%10]);
            
            if(lRemainingDays > 9)
            {
                imageDayViewT.setImageResource(imageDays[((this.lRemainingDays)/10)%10]);         
            }
            
            if(lRemainingDays > 99)
            {
                imageDayViewH.setImageResource(imageDays[((this.lRemainingDays)/100)%10]);            
            }

            textRemainingDaysTip.setVisibility(View.GONE);
            layoutRemainingDaysText.setVisibility(View.VISIBLE);
            layoutRemainingDaysImage.setVisibility(View.VISIBLE);
        }
        else{
        	if(mUserInfoDao.getUserIsVIP() && (mUserInfoDao.getUserSurplusSecond()/60/60/24 == 0)) {
        		textRemainingDaysTip.setVisibility(View.VISIBLE);
                layoutRemainingDaysText.setVisibility(View.GONE);
                layoutRemainingDaysImage.setVisibility(View.GONE);
        	}
        	else {
        		textRemainingDaysTip.setVisibility(View.GONE);
            	imageDayViewB.setImageResource(R.drawable.img_vip_main_counter_0);
            	imageDayViewT.setImageResource(R.drawable.img_vip_main_counter_0);
            	imageDayViewH.setImageResource(R.drawable.img_vip_main_counter_0);
        	}
        } 
    }

    /**
     * 取得 Intent 中 VIP剩余时间天数没,判断是否需要更新 VIP剩余时间天数图片
     * 
     * @return boolean 是否需要更新 VIP剩余时间天数图片
     */
    private boolean getIntentData() {
        this.lRemainingDays = 0;
        if(mUserInfoDao.getUserSurplusSecond() > 0) {
            this.lRemainingDays = (int)((mUserInfoDao.getUserSurplusSecond() + 1)/60/60/24);
        }
        //如果天数大于999，只显示999
        if(lRemainingDays > 999)
        {
            lRemainingDays = 999;
        }
           
        if(lRemainingDays > 0)
        {
            return true;
        }
        return false;
    }

	public void cancelDialog() {
		if(mDialog != null && mDialog.isShowing()) {
			Log.i("QQDOCTOR", "VipZoneActivity::  cancelDialog()");
			mDialog.dismiss();
		}
	}

	public void showDialog() {
		if(this.isFinishing() == false && mDialog != null && !mDialog.isShowing()) {
			Log.i("QQDOCTOR", "VipZoneActivity::  showDialog()");
			mDialog.show();
		}
	}
	
	/* (non-Javadoc)
	 * @see android.app.Activity#onKeyDown(int, android.view.KeyEvent)
	 */
	@Override
	public boolean onKeyUp(int keyCode, KeyEvent event) {
		if (keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount() == 0) {
			if(bShowVIPMasking) {
				cancelVIPMasking();
				return true;
			}
			else {
				Intent i = new Intent();
	            i.setClass(VipZoneActivity.this,MainActivity.class);
	            i.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
	            i.addFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP);
	            startActivity(i);
	            this.finish();
			}
        }
		return super.onKeyUp(keyCode, event);
	}
    
    public void updateUI() {
        this.refeshRemainingDaysImage();
        
        boolean bUserIsVip = mUserInfoDao.getUserIsVIP();
        
        if(!bUserIsVip) {
        	imagePrivatePhotos.setAlpha(255*3/10);
        	imageVirusDatabase.setAlpha(255*3/10);
        }
        else {
        	imagePrivatePhotos.setAlpha(255);
        	imageVirusDatabase.setAlpha(255);
        }
        int screenWidth = PhoneInfoUtil.getScreenWidth(this);

        int payState = mUserInfoDao.getPaymentStatus();
        if(payState == VipInfomationConst.paymentPayNetError || mUserInfoDao.getTrialHasSendFlag() == 4) {
        	if(btnGetTrial != null) {
            	btnGetTrial.setVisibility(View.VISIBLE);
            	btnGetTrial.setEnabled(false);
            	btnGetTrial.setText(R.string.string_vip_main_vip_confirming);
            	float width = screenWidth * 0.45f;
            	btnGetTrial.setMinimumWidth((int) width);
        	}
        }
        else {
            if(mUserInfoDao.getUserLevelInfo() ==  UserInfoMode.STANDARD_USER) {
                
                //如果是普通用户且未试用过，那么显示开通试用的按钮；否则，不显示
                if(mUserInfoDao.getUsedTrialFlag() == 0 && PaymentInformationUtil.getInstance().getNetworConnectionState() == true) {
                    //如果没有从服务器拉取到用户信息，不用户点击试用
                    if (mUserInfoDao.getMemberEndTime() != -1
                            && mUserInfoDao.getMemberStartTime() != -1)
                    {
                        btnGetTrial.setVisibility(View.VISIBLE);

                        if (mUserInfoDao.getTrialHasSendFlag() == 4)
                        {
                            btnGetTrial.setEnabled(false);
                            btnGetTrial.setText(R.string.string_vip_main_vip_confirming);
                        	float width = screenWidth * 0.45f;
                        	btnGetTrial.setMinimumWidth((int) width);
                            mUserInfoDao.clearUserGetFreeTrialFlag();
                        }
                        else {      
                        	if(!(payState == VipInfomationConst.paymentPayNetError || mUserInfoDao.getTrialHasSendFlag() == 4) 
                        			&& !getTrialBtnTranslateAnimation){
                        		if(mUserInfoDao.getHasShowMaskingFlag() == false) {
                        			bShowVIPMasking = true;
                        			if(PhoneInfoUtil.getScreenHeight(this) == 1280) {
                        				imageMasking.setImageDrawable(
                        						VipZoneActivity.this.getResources().getDrawable(R.drawable.img_vip_main_masking1280));
                        			}
                        			imageMasking.setVisibility(View.VISIBLE);
                        		}
                                float startX = screenWidth * 260.0f / 480;
                                float endX = screenWidth * 30.0f / 480;
                                final float width = screenWidth * 280.0f / 480;
                                TranslateAnimation translateAnimation = new TranslateAnimation(startX, endX, 0f, 0.0f);
                                translateAnimation.setDuration(2000);
                                translateAnimation.setFillAfter(true);
                                translateAnimation.setFillEnabled(true);
                                translateAnimation.setStartTime(0);
                                translateAnimation.setInterpolator(AnimationUtils.loadInterpolator(this, android.R.anim.overshoot_interpolator));
                                translateAnimation.setAnimationListener(new AnimationListener() {
                        			
                        			@Override
                        			public void onAnimationStart(Animation animation) {
                        				btnGetTrial.setWidth((int) width);
                        			}
                        			
                        			@Override
                        			public void onAnimationRepeat(Animation animation) {
                        			}
                        			
                        			@Override
                        			public void onAnimationEnd(Animation animation) {
                        			}
                        		});
                                btnGetTrial.startAnimation(translateAnimation);
                                getTrialBtnTranslateAnimation = true;
                            }
                        }
                    }
            	    else {
            	    	btnGetTrial.setVisibility(View.INVISIBLE);
            	    }
                }
                else {
                	btnGetTrial.setVisibility(View.INVISIBLE);
                }
            	
            	//显示普通用户的开通VIP按钮
            	btnGetVip.setIconResource(R.drawable.btn_vip_main_notvip_nor);
            	btnGetVip.setIconResourcePress(R.drawable.btn_vip_main_notvip_press);
            	btnGetVip.setButtonText(getString(R.string.string_vip_main_join_now));
            	
            }
            else {
            	//显示会员用户的开通VIP按钮
            	btnGetVip.setIconResource(R.drawable.btn_vip_main_isvip_nor);
            	btnGetVip.setIconResourcePress(R.drawable.btn_vip_main_isvip_press);
            	btnGetVip.setButtonText(getString(R.string.string_vip_main_get_more_days));
            	btnGetTrial.setVisibility(View.INVISIBLE);
            }
        }

        //会员有效期内显示VIP会员标志
        if(mUserInfoDao.getUserIsVIP()) {
        	imgvVipSign.setImageResource(R.drawable.img_vip_main_state_vip);
        }
        else {
        	imgvVipSign.setImageResource(R.drawable.img_vip_main_state_not_vip);
        }
        
        if((mUserInfoDao.getNeedToShowDlgFlag() == true 
        		&& mUserInfoDao.getPaymentStatus() == VipInfomationConst.paymentPayCommit)
        		|| mUserInfoDao.getTrialHasSendFlag() == 1){
        	//Log.i("QQDOCTOR", "updateUI --------------");
        	showDialog();
        }
        else {
        	cancelDialog();
        }
        
		if(mUserInfoDao.getNeedToShowPayResult() && (payState == VipInfomationConst.paymentPaySuceess || payState == VipInfomationConst.paymentPayFail)) {
		    //System.out.println("VIP_Zone_upDateUI");
			if(payState == VipInfomationConst.paymentPaySuceess) {
				Intent i = new Intent(this, VipPaymentSuccessActivity.class);
				i.putExtra("VipOpened", "Member");
				i.putExtra("VipUpgradeDays", mUserInfoDao.getUpgradeDays());
				startActivity(i);
			}
			else {
				Intent i = new Intent(this, VipPaymentFailedActivity.class);
				startActivity(i);
			}
			mUserInfoDao.setNeedToShowPayResult(false);
			mUserInfoDao.clearAllPayInformation();
		}
    	
		if(mUserInfoDao.getTrialHasSendFlag() == 2) {
			cancelDialog();
			Intent i = new Intent(this, VipPaymentSuccessActivity.class);
			i.putExtra("VipOpened", "Trial");
			i.putExtra("VipUpgradeDays", mUserInfoDao.getUserGetFreeTrialFlag());
			startActivity(i);
			
            GoogleAnalyticsTracker.getInstance().trackView("试用VIP获取成功");
            ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_Trial_Obtain);
            mUserInfoDao.clearTrialHasSendFlag();
		}
		else if(mUserInfoDao.getTrialHasSendFlag() == 3) {
			Log.i("QQDOCTOR",  "intentAction.equals(VipInfomationConst.paymentOpenTrialFailed)");
    		cancelDialog();
    		mUserInfoDao.clearTrialHasSendFlag();
			GoogleAnalyticsTracker.getInstance().trackView("试用VIP获取失败");
		}
    }
    
    Handler handler = new Handler() 
	{
	   @Override
	   public void handleMessage(Message msg) 
	   {
		   super.handleMessage(msg);
		   switch( msg.what )
		   {
		   	   case HANDLE_ON_GET_STATUS:
		   	   {
		   		   updateUI();
		   		   break;
		   	   }
		       default:
		    	   break;
		   }
	   }
	};

	private class VipZoneNotifcatePayResultCB implements INotifcatePayResult {

		/* (non-Javadoc)
		 * @see com.tencent.onesecurity.ui.activity.vip.INotifcatePayResult#notificateGetStatus()
		 */
		@Override
		public void notificateGetStatus() {
			//ActivityManager am = (ActivityManager) VipZoneActivity.this.getSystemService(Activity.ACTIVITY_SERVICE);
			//if(am.getRunningTasks(1).get(0).topActivity.getClassName().toString()
			//		.equals("com.tencent.onesecurity.ui.activity.VipZoneActivity")) {
				Log.i("QQDOCTOR",  "VipZoneNotifcatePayResultCB :: notificateGetStatus");
				Message message = new Message();
				message.what = HANDLE_ON_GET_STATUS;
				handler.sendMessageAtFrontOfQueue(message);
			//}
		}

		/* (non-Javadoc)
		 * @see com.tencent.onesecurity.ui.activity.vip.INotifcatePayResult#notificatePayResult(int)
		 */
		@Override
		public void notificatePayResult(int payState, long days) {
			Log.i("QQDOCTOR",  "VipZoneNotifcatePayResultCB :: notificatePayResult");
			cancelDialog();
			
			if(payState == VipInfomationConst.paymentPaySuceess) {
				mUserInfoDao.clearAllPayInformation();
				//Log.i("QQDOCTOR",  "Show payment success activity");
				Intent i = new Intent(VipZoneActivity.this, VipPaymentSuccessActivity.class);
				i.putExtra("VipOpened", "Member");
				i.putExtra("VipUpgradeDays", days);
				startActivity(i);
			}
			else if(payState == VipInfomationConst.paymentPayFail) {
				cancelDialog();
				mUserInfoDao.clearAllPayInformation();
				//Log.i("QQDOCTOR",  "Show payment failed activity");
				Intent i = new Intent(VipZoneActivity.this, VipPaymentFailedActivity.class);
				startActivity(i);
			}
			else if(payState == VipInfomationConst.paymentPayMopayUnknown) {
				cancelDialog();
				if(!mUserInfoDao.getMopayShowUnknownMsgFlag())
					ToastUtil.ShowSimpleTextShortToast(getString(R.string.vip_zone_processing_payment),R.layout.custom_toast);
				mUserInfoDao.setMopayShowUnknownMsgFlag(true);
			}
		}

		/* (non-Javadoc)
		 * @see com.tencent.onesecurity.ui.activity.vip.INotifcatePayResult#notificateNetworkError()
		 */
		@Override
		public void notificateNetworkError() {
			Log.i("QQDOCTOR",  "VipZoneNotifcatePayResultCB :: notificateNetworkError");
			mUserInfoDao.setNeedToShowDlgFlag(false);
			cancelDialog();
			ToastUtil.ShowSimpleTextShortToast(getString(R.string.vip_network_error),R.layout.custom_toast);
			
//			ActivityManager am = (ActivityManager) VipZoneActivity.this.getSystemService(Activity.ACTIVITY_SERVICE);
//			if(am.getRunningTasks(1).get(0).topActivity.getClassName().toString()
//					.equals("com.tencent.onesecurity.ui.activity.VipZoneActivity")) {
//				Log.i("QQDOCTOR",  "VipZoneNotifcatePayResultCB :: notificateNetworkError");
//				updateUI();
//			}
		}
		
	}
}
