package com.tencent.onesecurity.ui.activity.vip;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;

import com.mindmatics.mopay.android.api.IMopayResult;
import com.mindmatics.mopay.android.api.MopayActivityResult;
import com.mindmatics.mopay.android.api.MopayClient;
import com.mindmatics.mopay.android.api.MopayResultFactory;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.dao.UserInfoDao;
import com.tencent.onesecurity.manager.vip.INotifcatePayResult;
import com.tencent.onesecurity.manager.vip.VipInfomationConst;
import com.tencent.onesecurity.manager.vip.VipPaymentManager;
import com.tencent.onesecurity.receiver.PaymentBroadcastReceiver;
import com.tencent.onesecurity.service.ChargeService;
import com.tencent.onesecurity.ui.activity.commonComponent.BaseActivity;
import com.tencent.onesecurity.ui.customview.dialog.CustomLoadingDialog;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.util.Log;
import com.tencent.onesecurity.util.PayWebviewClient;
import com.tencent.onesecurity.util.ToastUtil;
import com.tencent.onesecurity.util.PayWebviewClient.IWebClientCallback;

/**
 * 
 * @ClassName: VipUpgradeActivity
 * @Description:vip升级页面
 * @author: Sandro
 * @date: 2012-10-22 上午11:50:58
 * 
 */
public class VipUpgradeActivity extends BaseActivity {

	private WebView webView;
	private CustomLoadingDialog mDialog;
	private WebviewClientCB mWebviewClientCB = new WebviewClientCB();
	
	private PayWebviewClient webviewClient = new PayWebviewClient(this, mWebviewClientCB);
	private VipUpgradeNotifcatePayResultCB payReusltCB = new VipUpgradeNotifcatePayResultCB();

	private final MopayClient mopayClient = new MopayClient(this);
	private UserInfoDao userInfoDao = DaoCreator.createUserInfoDao();
	private VipPaymentManager mVipManager = VipPaymentManager.getInstance();
	private String curURL = "";
	private boolean bLoadingFistUrl = false;
	
	private final int SHOW_PROGRESS_BAR = 200;
	private final int HIDE_PROGRESS_BAR = 201;
	private final int HANDLE_ON_RECEIVED_ERROR = 202;
	
	private PaymentBroadcastReceiver mReceiver = null;
	private boolean bEntryFromVipZone = false;
	private boolean bLoadingFirstFailed = false;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		View view = LayoutInflater.from(this).inflate(R.layout.layout_vip_upgrade_activity, null);
		setContentView(view);
		
		Intent intent = this.getIntent();
		if(intent != null) {
			bEntryFromVipZone = intent.getBooleanExtra("Entry_from_vip_zone", false);
		}
		
		updateSubTitleBar(this, view, getString(R.string.string_vip_upgrade_title_bar), -1, null, -1, null, true);
		webView = (WebView)view.findViewById(R.id.vip_upgrade_activity_webview);
		
		webView.getSettings().setJavaScriptEnabled(true);
		webView.requestFocus(View.FOCUS_DOWN);
		webView.setVerticalScrollBarEnabled(false);
		webView.setHorizontalScrollBarEnabled(false);
		//webView.setBackgroundColor(R.color.color_vip_upgrade_webview_bg);
		//webView.setHorizontalScrollbarOverlay(false);webView.setHorizontalFadingEdgeEnabled(true);
		//webView.setVerticalScrollbarOverlay(false);
		//webView.loadUrl("file:///android_asset/index2.html");
		
		userInfoDao.setPaymentStatus(VipInfomationConst.paymentPayBegin);
		//mDialog = DialogUtil.createSimpleLoading(this, getString(R.string.vip_upgrade_loading_page), false);
		mDialog =  new CustomLoadingDialog(this,false);
		Log.i("QQDOCTOR", "VipUpgradeActivity::     onCreate");
		mReceiver = new PaymentBroadcastReceiver();
		
		CallPayRoutine();
		//add by tony google analytics
		GoogleAnalyticsTracker.getInstance().trackView("付费选择");
	}

	/**
	 * 
	 */
	private void CallPayRoutine() {
		webviewClient.setPreviousUrl("");
		String url = VipPaymentManager.getInstance().CallPayRoutine(VipPaymentManager.FLAG_PAYMENT);
		curURL = url;
		bLoadingFistUrl = true;
		Log.i("QQDOCTOR", "CallPayRoutine:     " + url);
		launchPayWeb(url);
	}

	@Override
	protected void onStart() {
		super.onStart();
		IntentFilter intentFilter = new IntentFilter("network_change_connected");
		registerReceiver(mReceiver, intentFilter);
	}

	@Override
	protected void onStop() {
		cancelDialog();
        unregisterReceiver(mReceiver);
		super.onStop();
	}
	
	/* (non-Javadoc)
	 * @see android.app.Activity#onResume()
	 */
	@Override
	protected void onResume() {
		super.onResume();
		//Log.i("QQDOCTOR", "VipUpgradeActivity :: registerNotifcatePayResult");
		mVipManager.registerNotifcatePayResult(payReusltCB);
		int payState = userInfoDao.getPaymentStatus();
		if(userInfoDao.getNeedToShowPayResult() && (payState == VipInfomationConst.paymentPaySuceess || payState == VipInfomationConst.paymentPayFail)) {
			if(payState == VipInfomationConst.paymentPaySuceess) {
				Intent i = new Intent(this, VipPaymentSuccessActivity.class);
				i.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
				i.putExtra("VipOpened", "Member");
				i.putExtra("VipUpgradeDays", userInfoDao.getUpgradeDays());
				startActivity(i);
			}
			else {
				Intent i = new Intent(this, VipPaymentFailedActivity.class);
				i.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
				startActivity(i);
			}
			userInfoDao.setNeedToShowPayResult(false);
			userInfoDao.clearAllPayInformation();
		}
	}
	
	/* (non-Javadoc)
	 * @see android.app.Activity#onPause()
	 */
	@Override
	protected void onPause() {
		super.onPause();
		//Log.i("QQDOCTOR", "VipUpgradeActivity ::  onPause  :: unregisterNotifcatePayResult");
		mVipManager.unregisterNotifcatePayResult();
	}
	
	private void cancelDialog() {
		if(mDialog != null && mDialog.isShowing()) {
			Log.i("QQDOCTOR", "VipUpgradeActivity::  cancelDialog()");
			mDialog.dismiss();
		}
	}
	private void showDialog() {
		if(this.isFinishing() == false && mDialog != null && !mDialog.isShowing()) {
			Log.i("QQDOCTOR", "VipUpgradeActivity::  showDialog()");
			mDialog.show();
			mDialog.setMessage(getString(R.string.vip_upgrade_loading_page));
		}
	}
    
    /* This method overrides the android api.
    *
    **/
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        // only if the response is coming from payment action, the evaluation of the mopay
        // result hast to be done. Other actions are e.g mopay for android client installation done.
        if ( requestCode == MopayActivityResult.ACTION_PAYMENT) {
			final IMopayResult mopayResult = MopayResultFactory.createMopayResult(requestCode, resultCode, data) ;
			Log.i("QQDOCTOR", "Get Mopay result");
			if(mopayResult == null) {
				Log.i("QQDOCTOR", "mopayResult == null");
			}
			else {
				cancelDialog();
				userInfoDao.setNeedToShowDlgFlag(true);
//				Thread testRunnable = new Thread() {
//					
//					@Override
//					public void run() {
//						mVipManager.onPaymentCompleted(mopayResult);
//					}
//				};
//				testRunnable.start();
				mVipManager.onPaymentCompleted(mopayResult);
			}
			Log.i("QQDOCTOR", "Get Mopay result, handle finished");
		}
//        this.finish();
        startVipZone();
    }
    
    private void startVipZone() {
    	if(bEntryFromVipZone) {
        	this.finish();
        }
        else {
        	Intent i = new Intent(VipUpgradeActivity.this, VipZoneActivity.class);
        	i.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
        	startActivity(i);
        	this.finish();
        }
    }

	/**
	 * 启动webview
	 * @param url
	 */
	public void launchPayWeb( String url ) 
    {
	    CookieSyncManager.createInstance(this);
		CookieManager cookieManager = CookieManager.getInstance();
		cookieManager.removeAllCookie();
	    
	    webView.setWebViewClient(webviewClient);
	    showDialog();
	    webView.loadUrl(url);
	    Log.i("QQDOCTOR", "webview loading url: " + url);

	    //webView.clearCache(true);
	    //webView.clearHistory();
    }
	
	Handler handler = new Handler() 
	{
	   @Override
	   public void handleMessage(Message msg) 
	   {
		   super.handleMessage(msg);
		   switch( msg.what )
		   {
		   	   case SHOW_PROGRESS_BAR:
		   	   {
		   		   showDialog();
		   		   break;
		   	   }
		   	   case HIDE_PROGRESS_BAR:
		   	   {
		   		   cancelDialog();
		   		   break;
		   	   }
		   	   case HANDLE_ON_RECEIVED_ERROR:
		   	   {
			   		if(userInfoDao.getPaymentStatus() == VipInfomationConst.paymentPayCommit)
						userInfoDao.setNeedToShowDlgFlag(true);
					Thread queryThread = new Thread() {
						@Override
						public void run() {
							Intent i = new Intent(VipUpgradeActivity.this, ChargeService.class);
							i.setFlags(ChargeService.QUERY_PAY_STATE);
							startService(i);
						}
					};
					queryThread.start();
//					VipUpgradeActivity.this.finish();
					if(bLoadingFistUrl && !bEntryFromVipZone) {
						bLoadingFirstFailed = true;
						webView.stopLoading();
						webView.loadUrl("file:///android_asset/ConnectionFailed.html");
					}
					else {
						ToastUtil.ShowSimpleTextShortToast(getString(R.string.vip_network_error),R.layout.custom_toast);
						startVipZone();
					}
		   		   break;
		   	   }
		       default:
		    	   break;
		   }
	   }
	};
	
	private class WebviewClientCB implements IWebClientCallback {

		/* (non-Javadoc)
		 * @see com.tencent.onesecurity.util.PayWebviewClient.IWebClientCallback#handleOnReceivedError()
		 */
		@Override
		public void handleOnReceivedError() {
			Message message = new Message();
			message.what = HANDLE_ON_RECEIVED_ERROR;
			handler.sendMessageAtFrontOfQueue(message);
		}

		/* (non-Javadoc)
		 * @see com.tencent.onesecurity.util.PayWebviewClient.IWebClientCallback
		 * #returnMopayParams(int, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String)
		 */
		@Override
		public void returnMopayParams(int startMode, String buttonId,
				String country, String tariffKey, String myId, String time) {
//			long curLocalTime = System.currentTimeMillis();
//			if(curLocalTime > VipInfomationConst.mopaySslValidTimeMin && curLocalTime < VipInfomationConst.mopaySslValidTimeMax) {
				if(startMode == VipInfomationConst.paymentMopayModeButtonId) {
//					if((country == null || "".equals(country))
//		    				|| (buttonId == null || "".equals(buttonId))
//		    				|| (myId == null && "".equals(myId))) {
//		    			ToastUtil.ShowSimpleTextShortToast("Can not start Mopay SDK");
//		    			VipUpgradeActivity.this.finish();
//		    		}
//					else {
						mVipManager.startMopaySDK(mopayClient, startMode, buttonId, country, tariffKey, myId, time);
//					}
				}
				else {
//					if((tariffKey == null || "".equals(tariffKey))
//		    				|| (myId == null && "".equals(myId))) {
//		    			ToastUtil.ShowSimpleTextShortToast("Can not start Mopay SDK");
//		    			VipUpgradeActivity.this.finish();
//		    		}
//					else {
						mVipManager.startMopaySDK(mopayClient, startMode, buttonId, country, tariffKey, myId, time);
//					}
				}
//			}
//			else{
////				VipUpgradeActivity.this.finish();
//				startVipZone();
//				ToastUtil.ShowSimpleTextShortToast("Pleas check your calander and set correct time");
//			}
		}

		/* (non-Javadoc)
		 * @see com.tencent.onesecurity.util.PayWebviewClient.IWebClientCallback#handleOnPageStart(java.lang.String)
		 */
		@Override
		public void handleOnPageStart(String url) {
			if(bLoadingFistUrl && (url.equals(curURL) == false)) {
				bLoadingFistUrl = false;
			}
			curURL = url;
//			if(url.contains(VipInfomationConst.paymentJspSuccess)){
//				VipUpgradeActivity.this.finish();
//			}
		}
		@Override
		public void handleShowDialog(boolean bShow) {
			Message message = new Message();
			if(bShow)
			    message.what = SHOW_PROGRESS_BAR;
			else 
			    message.what = HIDE_PROGRESS_BAR;
			handler.sendMessageAtFrontOfQueue(message);
		}
	}
	
	public void stopPayRoutine()
	{
		Intent msgIntent = new Intent(this, ChargeService.class);
		msgIntent.setFlags(ChargeService.PAY_STOP);
		startService(msgIntent);
	}
    
    @Override
    protected void onDestroy() {
        Log.i("QQDOCTOR", "VipUpgradeActivity::onDestroy()");
        cancelDialog();
        webView.destroy();
        super.onDestroy();
    }
    
    /* (non-Javadoc)
     * @see android.app.Activity#generated(int, android.view.KeyEvent)
     */
    @Override
    public boolean onKeyUp(int keyCode, KeyEvent event) {
    	if(keyCode == KeyEvent.KEYCODE_BACK) {
    		if(curURL.contains(ChargeService.DOMAIN_NAME) && curURL.contains(ChargeService.AGREEMENT_NAME) && webView.canGoBack()) {
    			webView.goBack();
    			return true;
    		}
    		else {
    			if(bLoadingFirstFailed) {
    				bLoadingFirstFailed = false;
    				this.finish();
    			}
    			else {
    				startVipZone();
    			}
    		}
    	}
    	return super.onKeyUp(keyCode, event);
    }
    
    private class VipUpgradeNotifcatePayResultCB implements INotifcatePayResult {

		/* (non-Javadoc)
		 * @see com.tencent.onesecurity.ui.activity.vip.INotifcatePayResult#notificateGetStatus()
		 */
		@Override
		public void notificateGetStatus() {
			Log.i("QQDOCTOR",  "VipUpgradeNotifcatePayResultCB :: notificateGetStatus");
		}

		/* (non-Javadoc)
		 * @see com.tencent.onesecurity.ui.activity.vip.INotifcatePayResult#notificatePayResult(int)
		 */
		@Override
		public void notificatePayResult(int payState, long days) {
			Log.i("QQDOCTOR",  "VipUpgradeNotifcatePayResultCB :: notificatePayResult");
			if(payState == VipInfomationConst.paymentPaySuceess) {
				cancelDialog();
				userInfoDao.clearAllPayInformation();
				//Log.i("QQDOCTOR",  "Show payment success activity");
				Intent i = new Intent(VipUpgradeActivity.this, VipPaymentSuccessActivity.class);
				i.putExtra("VipOpened", "Member");
				i.putExtra("VipUpgradeDays", days);
				i.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
				startActivity(i);
			}
			else if(payState == VipInfomationConst.paymentPayFail) {
				cancelDialog();
				userInfoDao.clearAllPayInformation();
				Intent i = new Intent(VipUpgradeActivity.this, VipPaymentFailedActivity.class);
				i.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
				startActivity(i);
			}
			else if(payState == VipInfomationConst.paymentPayMopayUnknown) {
				cancelDialog();
				if(!userInfoDao.getMopayShowUnknownMsgFlag())
					ToastUtil.ShowSimpleTextShortToast(getString(R.string.vip_zone_processing_payment),R.layout.custom_toast);
				userInfoDao.setMopayShowUnknownMsgFlag(true);
//				VipUpgradeActivity.this.finish();
				startVipZone();
			}
		}

		/* (non-Javadoc)
		 * @see com.tencent.onesecurity.ui.activity.vip.INotifcatePayResult#notificateNetworkError()
		 */
		@Override
		public void notificateNetworkError() {
			Log.i("QQDOCTOR",  "VipUpgradeNotifcatePayResultCB :: notificateNetworkError");
			userInfoDao.setNeedToShowDlgFlag(false);
			cancelDialog();
//			VipUpgradeActivity.this.finish();
			startVipZone();
			ToastUtil.ShowSimpleTextShortToast(getString(R.string.vip_network_error),R.layout.custom_toast);
		} 
    }

	/**
	 * 
	 */
	public void reconnectUrl() {
		if(bLoadingFistUrl && webView.getProgress() < 100) {
		    webView.loadUrl(curURL);
			Log.i("QQDOCTOR",  "reconnect initial url");
		}
	}
}