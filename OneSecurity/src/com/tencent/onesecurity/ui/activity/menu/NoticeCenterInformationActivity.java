
package com.tencent.onesecurity.ui.activity.menu;

import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.manager.viewnotify.MainViewNotify;
import com.tencent.onesecurity.ui.activity.MainActivity;
import com.tencent.onesecurity.ui.activity.commonComponent.BaseActivity;
import com.tencent.onesecurity.ui.activity.vip.VipZoneActivity;
import com.tencent.onesecurity.ui.customview.dialog.CustomLoadingDialog;
import com.tencent.onesecurity.ui.helper.UIConstants;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;

public class NoticeCenterInformationActivity extends BaseActivity {
    private WebView webView;
    //大菊花
	private ProgressDialog spinner = null;
    // private final static String WEBVIEW_MINE_TYPE = "text/html";

    // private final static String WEBVIEW_ENCODING = "utf-8";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        // TODO Auto-generated method stub
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        View view = LayoutInflater.from(NoticeCenterInformationActivity.this).inflate(
                R.layout.layout_menu_notice_center_information, null);
        setContentView(view);
        
        
        updateSubTitleBar(this, findViewById(R.id.menu_notice_line_titlebar), getString(R.string.setting_notice_center_information_title),
        		-1, null, -1, null, true);
        webView = (WebView)this.findViewById(R.id.setting_notice_center_information_webview);
        // 大菊花转起来
    	showSpinner(getString(R.string.common_loading_tip));
    	
        webView.setWebViewClient(new HelloWebViewClient());
        webView.setWebChromeClient(new WebChromeClient(){
        	public void onProgressChanged(WebView view,int progress){//载入进度改变而触发 
             	if(progress==100){
             		hideSpinner();
            	}   
                super.onProgressChanged(view, progress);   
            }   
        });

        webView.getSettings().setJavaScriptEnabled(true);
        webView.loadUrl(intent.getStringExtra(UIConstants.NOTICE_CENTER_LIST_ITEM_URL));
    }

    @Override
    protected void onResume() {
        super.onResume();
        // add by tony google analytics
        GoogleAnalyticsTracker.getInstance().trackView("消息详细");
    }

	/**
	 * 大菊花转起来
	 * @param tips
	 */
	private void showSpinner(String tips) {
		if (spinner == null) {
			//支持返回
			spinner = new CustomLoadingDialog(NoticeCenterInformationActivity.this, true);
		}
		spinner.setMessage(tips);
		if (!spinner.isShowing()) {
			spinner.show();
		}
	}
	
	private void hideSpinner() {
		// mofify by lynnawang 
		if (spinner != null && spinner.isShowing()) {
			spinner.dismiss();
		}
	}
	
    private class HelloWebViewClient extends WebViewClient {
        @Override
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
        	
        	// 以"://"进行分割，http为外链直接跳转，url为内链，跳转到指定的界面
        	String[] urlSplit = url.split("://");
        	String urlType = "";
        	String action = "";
        	
        	if (urlSplit.length > 1) {
        		urlType = urlSplit[0];
        		action = urlSplit[1];
        	}
        	
        	if (urlType.equals("http")) {
        		//此链接为外链，直接跳转
        		view.loadUrl(url);
        	} else if (urlType.equals("url")) {
        		//此链接为内链，跳转到制定activity,只支持以下4个页面
        		if (action.equals("vip")) {
        		  //跳转到vip主页面
                  Intent intent = new Intent();
                  intent.setClass(NoticeCenterInformationActivity.this, VipZoneActivity.class);
                  startActivity(intent);
        		} else if(action.equals("virus")) {
        			//跳转到病毒主页面
        			MainViewNotify.notifyChange(MainActivity.ANTIVIRUS_INDEX,NoticeCenterInformationActivity.this,MainActivity.ACTION_NULL_INDEX);
        		} else if(action.equals("boost")) {
        			//跳转到加速主页面
        			MainViewNotify.notifyChange(MainActivity.BOOST_INDEX,NoticeCenterInformationActivity.this,MainActivity.ACTION_NULL_INDEX);
        		} else if(action.equals("vault")) {
        			//跳转到私密主页面
        			MainViewNotify.notifyChange(MainActivity.VAULT_INDEX,NoticeCenterInformationActivity.this,MainActivity.ACTION_NULL_INDEX);
        		} else {
        			//以防万一，运营配置错误的时候默认跳转页面
        			//跳转到加速主页面
        			MainViewNotify.notifyChange(MainActivity.BOOST_INDEX,NoticeCenterInformationActivity.this,MainActivity.ACTION_NULL_INDEX);
        		}
        		
        	} else {
        		//默认为外链
        		view.loadUrl(url);
        	}
        	
            return true;
        }

		/* (non-Javadoc)
		 * @see android.webkit.WebViewClient#onPageFinished(android.webkit.WebView, java.lang.String)
		 */
		@Override
		public void onPageFinished(WebView view, String url) {
			// TODO Auto-generated method stub
			super.onPageFinished(view, url);
//			hideSpinner();
		}

		/* (non-Javadoc)
		 * @see android.webkit.WebViewClient#onPageStarted(android.webkit.WebView, java.lang.String, android.graphics.Bitmap)
		 */
		@Override
		public void onPageStarted(WebView view, String url, Bitmap favicon) {
			// TODO Auto-generated method stub
			// 大菊花转起来
//        	showSpinner(getString(R.string.common_loading_tip));
			super.onPageStarted(view, url, favicon);
		}
    }
}
