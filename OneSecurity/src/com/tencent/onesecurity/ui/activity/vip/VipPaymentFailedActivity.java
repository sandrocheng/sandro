package com.tencent.onesecurity.ui.activity.vip;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.ui.activity.commonComponent.BaseActivity;
import com.tencent.onesecurity.ui.activity.vip.VipUpgradeActivity;
import com.tencent.onesecurity.ui.activity.vip.VipZoneActivity;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.util.Log;

/**
 * VIP 支付失败
 * 
 * @author hunt
 * 
 */
public class VipPaymentFailedActivity extends BaseActivity {

	private Button layoutTryOthers = null;
	
	private Button layoutTryAgainLater = null;

	/**
	 * 构造VipRemainingActivity
	 */
	@Override
	protected void onCreate(Bundle savedInstanceState) {

		super.onCreate(savedInstanceState);
		Log.i("QQDOCTOR", "VipPaymentFailedActivity :: onCreate");
		View view = LayoutInflater.from(this).inflate(
				R.layout.layout_vip_payment_failed, null);

		//updateSubTitleBar(view, getString(R.string.string_vip_payment_result), true, new BackPress(),true);
		setContentView(view);

		DaoCreator.createUserInfoDao().setNeedToShowPayResult(false);
		DaoCreator.createUserInfoDao().clearAllPayInformation();
		// 初始化View
		layoutTryOthers = (Button)view.findViewById(R.id.vip_payment_failed_btn_try_others);
		layoutTryAgainLater = (Button)view.findViewById(R.id.vip_payment_failed_btn_try_go_back);

		// 绑监听器
		layoutTryOthers.setOnClickListener(new ViewOcl());
		layoutTryAgainLater.setOnClickListener(new ViewOcl());
		//add by tony google analytics
		GoogleAnalyticsTracker.getInstance().trackView("付费失败");
	}
	
	@Override
	protected void onStart() {
	    super.onStart();
	}
	
	@Override
	protected void onResume() {
	    super.onResume();
	}
	
	/**
	 * 按钮点击
	 */
	private class ViewOcl implements View.OnClickListener {
		@Override
		public void onClick(View v) {
			if (R.id.vip_payment_failed_btn_try_others == v.getId()){
			    Intent i = new Intent();
                i.setClass(VipPaymentFailedActivity.this, VipUpgradeActivity.class);
                i.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP) ;
                startActivity(i);
			    finish();
			} else if (R.id.vip_payment_failed_btn_try_go_back == v.getId()){
			    ReturnVipZone();
			}
		}
	}
	
	@Override
	public boolean onKeyUp(int keyCode, KeyEvent event) {
	    if (keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount() == 0) {
	        ReturnVipZone();
	        return true;
        }
	    return super.onKeyUp(keyCode, event);
	}
	
	private void ReturnVipZone() {
	    Intent i = new Intent(VipPaymentFailedActivity.this,VipZoneActivity.class);
        i.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP) ;
        startActivity(i);
	}
}
