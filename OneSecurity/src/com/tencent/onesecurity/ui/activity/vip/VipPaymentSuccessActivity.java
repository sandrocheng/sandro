package com.tencent.onesecurity.ui.activity.vip;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.dao.UserInfoDao;
import com.tencent.onesecurity.ui.activity.commonComponent.BaseActivity;
import com.tencent.onesecurity.ui.activity.vip.VipZoneActivity;
import com.tencent.onesecurity.ui.customview.widget.CustomIconButton;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.usage.qq.ActionStatsManager;
import com.tencent.onesecurity.usage.qq.EModelID;

/**
 * VIP 支付成功
 * 
 * @author Allan
 * 
 */
public class VipPaymentSuccessActivity extends BaseActivity {

	private CustomIconButton layoutEnjoyVip = null;
	private long upgradeDays = 30;
	private String strType = "VipUpgradeDays";
	View view;
	UserInfoDao userInfoDao = DaoCreator.createUserInfoDao();
	/**
	 * 构造VipPaymentSuccessActivity
	 */
	@Override
	protected void onCreate(Bundle savedInstanceState) {

		super.onCreate(savedInstanceState);

		view = LayoutInflater.from(this).inflate(
				R.layout.layout_vip_payment_success, null);
	
		setContentView(view);
		layoutEnjoyVip = (CustomIconButton)view.findViewById(R.id.vip_payment_success_btn_enjoy);
		userInfoDao.setNeedToShowPayResult(false);
		Intent i = getIntent();
		if (i != null ) {
			upgradeDays = i.getLongExtra("VipUpgradeDays", userInfoDao.getUpgradeDays());
			strType = i.getStringExtra("VipOpened");
		}
		userInfoDao.clearAllPayInformation();
		
		refeshRemainingDaysImage();
		// 绑监听器
		layoutEnjoyVip.setOnClickListener(new ViewOcl());
		//add by tony google analytics
		
        if (i != null && strType != null && strType.equals("Member") )
        {
            GoogleAnalyticsTracker.getInstance().trackView("付费VIP获取成功");
            
            ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_VIP_Pay_Success);
        }
        
        userInfoDao.clearUserGetFreeTrialFlag();
        
	}

	/**
	 * 按钮点击
	 */
	private class ViewOcl implements View.OnClickListener {
		@Override
		public void onClick(View v) {
		    ReturnVipZone();
	        GoogleAnalyticsTracker.getInstance().ClickButton("VIP", "点击体验功能", "试用", 1L);
		}
	}
	
	
	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
	    if (keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount() == 0) {
	        ReturnVipZone();
	        return true;
        }
	    return super.onKeyDown(keyCode, event);
	}
	private void ReturnVipZone() {
        Intent i = new Intent();
        i.setClass(VipPaymentSuccessActivity.this,VipZoneActivity.class);
        i.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP) ;
        startActivity(i);
    }
	
	private void refeshRemainingDaysImage() {
        if (upgradeDays > 0) {
            //个位数
            int remaingDaysB = (int)(this.upgradeDays%10);
            //十位数
            int remaingDaysT = (int)(this.upgradeDays/10%10);
            //百位数
            int remaingDaysH = (int)(this.upgradeDays/100%10);

            ImageView imageDayView = null;

            int[] imageDays = { R.drawable.img_vip_main_counter_0, R.drawable.img_vip_main_counter_1,
                    R.drawable.img_vip_main_counter_2, R.drawable.img_vip_main_counter_3,
                    R.drawable.img_vip_main_counter_4, R.drawable.img_vip_main_counter_5,
                    R.drawable.img_vip_main_counter_6, R.drawable.img_vip_main_counter_7,
                    R.drawable.img_vip_main_counter_8, R.drawable.img_vip_main_counter_9 };
			/* boone fix bug:9581697----2012120----s----*/
            imageDayView = (ImageView)view.findViewById(R.id.image_days_b);

            imageDayView.setImageResource(imageDays[remaingDaysB]);
            
            if (upgradeDays > 9)
            {
                imageDayView = (ImageView)view.findViewById(R.id.image_days_t);

                imageDayView.setImageResource(imageDays[remaingDaysT]);              
            }
            if (upgradeDays > 99)
            {
                imageDayView = (ImageView)view.findViewById(R.id.image_days_h);
                
                imageDayView.setImageResource(imageDays[remaingDaysH]);
            }
			/* boone fix bug:9581697----2012120---e----*/
            imageDayView = null;
        }
    }
	
	
	
	
}
