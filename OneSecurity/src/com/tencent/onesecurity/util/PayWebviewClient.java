/**
* FileName: PayWebviewClient.java
* @Description: TODO(用一句话描述该文件做什么)
* All rights Reserved, Designed By 21winmess
* Copyright: Copyright(C) 2010-2011 
* Company 21winmess DaLian LTD.
* @author: Allan Zhang
* @version V1.3
* Createdate: 2012-11-26 下午02:59:58
*
* Modification History:
* Date Author Version Discription
* -----------------------------------------------------------------------------------
* 2012-11-26 Qute_Android2.0
* Why & What is modified: <修改原因描述>
*/
package com.tencent.onesecurity.util;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;


import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.common.ApplicationConfig;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.dao.UserInfoDao;
import com.tencent.onesecurity.manager.vip.VipInfomationConst;
import com.tencent.onesecurity.service.ChargeService;
import com.tencent.onesecurity.ui.activity.vip.VipPaymentFailedActivity;

/**
 * @ClassName: PayWebviewClient
 * @Description:
 * @author: Allan
 * @date: 2012-11-26 下午02:59:58
 *
 */
public class PayWebviewClient extends WebViewClient{
	
	UserInfoDao userInfoDao = DaoCreator.createUserInfoDao();
	Context mContext = null;
	private String previousUrl = "";
	private boolean bPageFinishedAgain = false;
    private String tariffKey = "";
    private String buttonId = "";
    private String country = "";
    private String myId = "";
    private String time = "";
    private boolean bMopayStarting = false;
    private int startMode = VipInfomationConst.paymentMopayModeButtonId;
    
    public static interface IWebClientCallback {
    	
    	public void returnMopayParams(int startMode, String buttonId, String country, String tariffKey, String myId, String time);
    	public void handleOnReceivedError();
    	public void handleOnPageStart(String url);
    	public void handleShowDialog(boolean bShow);
    }
    public IWebClientCallback iWebClientCallback = null;
	
	public PayWebviewClient(Context context, IWebClientCallback webClietnCB) {
		mContext = context;
		iWebClientCallback = webClietnCB;
	}
	
	public void setPreviousUrl(String url) {
		previousUrl = url;
	}
	
	@Override
	public void onLoadResource(WebView view, String url)
	{
//		Log.i("QQDOCTOR", "onLoadResource: " + url);
//		if(iWebClientCallback != null)
//			iWebClientCallback.handleShowDialog(true);
		super.onLoadResource(view, url);
	}
	
	/* (non-Javadoc)
	 * @see android.webkit.WebViewClient#onReceivedError(android.webkit.WebView, int, java.lang.String, java.lang.String)
	 */
	@Override
	public void onReceivedError(WebView view, int errorCode,
			String description, String failingUrl) {
		handleOnReceivedError(view, errorCode, description, failingUrl);
		super.onReceivedError(view, errorCode, description, failingUrl);
	}
	
	/* (non-Javadoc)
	 * @see android.webkit.WebViewClient#onReceivedSslError(android.webkit.WebView, android.webkit.SslErrorHandler, android.net.http.SslError)
	 */
	@Override
	public void onReceivedSslError(WebView view,
			SslErrorHandler handler, SslError error) {
		Log.i("QQDOCTOR", "onReceivedSslError: ------------" );
		handler.proceed();
	}
	
	@Override
	public boolean shouldOverrideUrlLoading(WebView view, String url) {
		//view.loadUrl(url);
		boolean rc = super.shouldOverrideUrlLoading(view, url);
		view.loadUrl(url);
		return rc;
	};
	
	/* (non-Javadoc)
	 * @see android.webkit.WebViewClient#onPageStarted(android.webkit.WebView, java.lang.String, android.graphics.Bitmap)
	 */
	@Override
	public void onPageStarted(WebView view, String url, Bitmap favicon) {
		Log.i("QQDOCTOR", "onPageStarted: " + url);
		handleOnPageStarted(view, url, favicon);
		super.onPageStarted(view, url, favicon);
	}

	@Override
	public void onPageFinished(WebView webView, String url) 
	{
		handleOnPageFinished(webView, url);
	}
	
	/**
	 * @param view
	 * @param errorCode
	 * @param description
	 * @param failingUrl
	 */
	protected void handleOnReceivedError(WebView view, int errorCode,
			String description, String failingUrl) {
		Log.i("QQDOCTOR", "handleOnReceivedError: errorCode = " + Integer.toString(errorCode) + ", failingUrl = " + failingUrl + ", description = " + description);
		
		if(iWebClientCallback != null) {
			iWebClientCallback.handleShowDialog(false);
			iWebClientCallback.handleOnReceivedError();
		}			
	}
	
	/**
	 * @param view
	 * @param url
	 * @param favicon
	 */
	protected void handleOnPageStarted(WebView view, String url, Bitmap favicon) {
			
		// 失败或返回
		if(url.contains("paypal.com")&& !(url.contains(VipInfomationConst.paymentJspSuccess))) {
			userInfoDao.setPaymentPayMode(VipInfomationConst.payModePaypal);
			userInfoDao.setPaymentStatus(VipInfomationConst.paymentPayInprocessing);
		}
		else if(url.contains(VipInfomationConst.paymentJspPaypalCommit)) {
			Log.i("QQDOCTOR", "setPaymentStatus(VipInfomationConst.paymentPayCommit)");
			userInfoDao.setPaymentStatus(VipInfomationConst.paymentPayCommit);			
		}
		else if(url.contains(VipInfomationConst.paymentJspSuccess)){
			if(iWebClientCallback != null) {
				iWebClientCallback.handleShowDialog(true);
			}
			userInfoDao.setPaymentStatus(VipInfomationConst.paymentPayCommit);
			Thread queryThread = new Thread() {
				@Override
				public void run() {
					Intent msgIntent = new Intent(mContext, ChargeService.class); 
					msgIntent.setFlags(ChargeService.QUERY_PAY_STATE);
					mContext.startService(msgIntent);
				}
			};
			queryThread.start();
	        Log.i("QQDOCTOR", "用户购买VIP成功");
		}
		else if( url.contains(VipInfomationConst.paymentJspFail))
        {
            Log.i("QQDOCTOR", "用户购买VIP失败" + url);
            userInfoDao.setPaymentStatus(VipInfomationConst.paymentPayFail);
//            ActivityManager am = (ActivityManager) mContext.getSystemService(Activity.ACTIVITY_SERVICE);
//            if(am.getRunningTasks(1).get(0).topActivity.getClassName().toString()
//                    .equals("com.tencent.onesecurity.ui.activity.VipUpgradeActivity")) {
//                Log.i("QQDOCTOR",  "Close current VipUpgradeActivity");
//            }
            String trimUrl = "";
          
        	try {
				trimUrl = URLDecoder.decode(url, "utf-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}

			if(trimUrl != null) {
				trimUrl = trimUrl.substring(trimUrl.indexOf("fail_n.jsp?errorCd=") + "fail_n.jsp?errorCd=".length());
	            String errorCode = trimUrl.substring(0, trimUrl.indexOf("&errorMsg="));
	            String errorMsg = trimUrl.substring(trimUrl.indexOf("&errorMsg=") + "&errorMsg=".length());
	            Log.i("QQDOCTOR", "errorCode = " + errorCode + ", errorMsg is " + errorMsg);
	            ToastUtil.ShowSimpleTextLongToast(errorMsg,R.layout.custom_toast);
			}
            
            Intent i = new Intent(mContext, VipPaymentFailedActivity.class);
            mContext.startActivity(i);
            Activity act =  (Activity)mContext;
            act.finish();
        }
		else if(url.contains(VipInfomationConst.paymentJspProcessing)) {
			Log.i("QQDOCTOR", "用户购买VIP遇到13116错误");
			if(iWebClientCallback != null) {
				iWebClientCallback.handleShowDialog(true);
			}
			
			userInfoDao.setPaymentPayMode(VipInfomationConst.payModePaypal);
			userInfoDao.setPaymentStatus(VipInfomationConst.paymentPayCommit);

			Thread queryThread = new Thread() {
				@Override
				public void run() {
					Intent i = new Intent(mContext, ChargeService.class);
					i.addFlags(ChargeService.PAY_QUERY_MOPAY_STATE);
					mContext.startService(i);
				}
			};
			queryThread.start();
		}
		else if( url.contains(ChargeService.DOMAIN_NAME)){
			if(url.contains(VipInfomationConst.paymentJspMopayMode) && !bMopayStarting) {
				bMopayStarting = true;
    			Log.i("QQDOCTOR", "收到服务器返回的Mopay参数");
    			parseMopayParams(url);
				//startMopaySDK();
				if(iWebClientCallback != null) {
					if(startMode == VipInfomationConst.paymentMopayModeButtonId) {
						iWebClientCallback.returnMopayParams(startMode, buttonId, country, "", myId, time);
					}
					else {
						iWebClientCallback.returnMopayParams(startMode, "", "", tariffKey, myId, time);
					}
				}
			}
		}
		else if(url.contains(VipInfomationConst.paymentJspMopayLoading)) {
			bMopayStarting = false;
		}
		
		if(iWebClientCallback != null) {
//			if(previousUrl.contains(VipInfomationConst.paymentJspJumpToPaypal) == false) {
//				iWebClientCallback.handleShowDialog(true);
//				Log.i("QQDOCTOR", "onPageStarted: 		handleShowDialog(true)");
//			}
			iWebClientCallback.handleOnPageStart(url);
		}
	}

	/**
	 * 处理PageFinished状态
	 */
	protected void handleOnPageFinished(WebView webView, String url) {
		Log.i("QQDOCTOR", "onPageFinished: " + url);
		if(iWebClientCallback != null) {
			iWebClientCallback.handleShowDialog(false);
		}
		if(!url.equals(previousUrl)) {
			previousUrl = url;
			bPageFinishedAgain = false;
			Log.i("QQDOCTOR", "bPageFinishedAgain = false " + url);
		}
		else {
			bPageFinishedAgain = true;
			Log.i("QQDOCTOR", "bPageFinishedAgain = true " + url);
		}
	}

	/**
	 * @param url
	 */
	private void parseMopayParams(String url) {
		int index = -1;
		userInfoDao.setPaymentPayMode(VipInfomationConst.payModeMopay);
		
		String trimUrl = url.substring(url.indexOf("mopayreturn.jsp?id=") + "mopayreturn.jsp?id=".length());
		byte[] retInfo = trimUrl.getBytes();
		if ( retInfo != null && retInfo.length > 0) 
		{
			// 解密
			//byte[] vDecryptData = TccCryptor.decrypt(mContext, retInfo, null);
			// 解密
			if(ApplicationConfig.teakey != null && "".equals(ApplicationConfig.teakey) == false) {
				XxteaCoding xxtea = new XxteaCoding(ApplicationConfig.teakey.getBytes());
				byte[] vDecryptData = xxtea.decodeFromHexStr(trimUrl);
				if(vDecryptData != null && vDecryptData.length > 0) {
					String[] splitDatas = new String(vDecryptData).trim().split(";");
					if(splitDatas.length > 0) 
					{
						for (int i = 0; i < splitDatas.length; i++) 
						{
							String data = splitDatas[i];
							if(data.contains("buttonId=") && (index = data.indexOf("buttonId=")) >= 0) {
								buttonId = data.substring(index + "buttonId=".length());
							}
							else if(data.contains("myid=") && (index = data.indexOf("myid=")) >= 0) {
								myId = data.substring(index + "myid=".length());
							}
							else if(data.contains("countryId=") && (index = data.indexOf("countryId=")) >= 0) {
								country = data.substring(index + "countryId=".length());
								if(country.equals(VipInfomationConst.countryGreatBritain)) {
									country = "UK";
								}
							}
							else if(data.contains("time=") && (index = data.indexOf("time=")) >= 0) {
								time = data.substring(index + "time=".length());
							}
						}
					}
				}
			}
		}
	}
}
