/*     */ package com.mindmatics.mopay.android.impl;
/*     */ 
/*     */ import android.content.Context;
/*     */ import android.content.Intent;
/*     */ import android.graphics.Bitmap;
/*     */ import android.graphics.Color;
/*     */ import android.net.Uri;
/*     */ import android.net.http.SslError;
/*     */ import android.view.ViewGroup.LayoutParams;
/*     */ import android.webkit.SslErrorHandler;
/*     */ import android.webkit.WebChromeClient;
/*     */ import android.webkit.WebSettings;
/*     */ import android.webkit.WebSettings.RenderPriority;
/*     */ import android.webkit.WebView;
/*     */ import android.webkit.WebViewClient;
/*     */ import android.widget.FrameLayout;
/*     */ import android.widget.LinearLayout;
/*     */ import android.widget.LinearLayout.LayoutParams;
/*     */ import com.mindmatics.mopay.android.activity.MopayActivity;
/*     */ 
/*     */ public class UiBuilder
/*     */ {
/*     */   public static final int ID_MAIN_LAYOUT = 1001;
/*     */   public static final int ID_FRAME_LAYOUT = 1002;
/*     */   public static final int ID_PROGRESS_LAYOUT = 1003;
/*     */   private static MopayJsInterface jsInterface;
/*     */ 
/*     */   public static LinearLayout getMainLayout(Context pContext, MopayJsInterface pJsInterface)
/*     */   {
/*  34 */     LinearLayout layoutMain = buildMainLayout(pContext);
/*  35 */     jsInterface = pJsInterface;
/*  36 */     return layoutMain;
/*     */   }
/*     */ 
/*     */   private static LinearLayout buildMainLayout(Context pContext) {
/*  40 */     LinearLayout layoutMain = new LinearLayout(pContext);
/*  41 */     layoutMain.setId(1001);
/*  42 */     LinearLayout.LayoutParams layParMain = new LinearLayout.LayoutParams(-1, -1);
/*  43 */     layoutMain.setLayoutParams(layParMain);
/*  44 */     layoutMain.setOrientation(1);
/*  45 */     layoutMain.setGravity(17);
/*  46 */     layoutMain.setBackgroundColor(Color.argb(0, 0, 0, 1));
/*  47 */     layoutMain.addView(buildFrameLayout(pContext));
/*  48 */     layoutMain.setVisibility(0);
/*  49 */     return layoutMain;
/*     */   }
/*     */ 
/*     */   private static FrameLayout buildFrameLayout(Context pContext) {
/*  53 */     FrameLayout frameLayout = new FrameLayout(pContext);
/*  54 */     frameLayout.setId(1002);
/*  55 */     LinearLayout.LayoutParams layParMain = new LinearLayout.LayoutParams(-1, -1);
/*  56 */     frameLayout.setLayoutParams(layParMain);
/*  57 */     return frameLayout;
/*     */   }
/*     */ 
/*     */   public static WebView buildWebView(MopayActivity pContext)
/*     */   {
/*  66 */     WebView webView = new WebView(pContext);
/*  67 */     webView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
/*     */ 
/*  69 */     webView.setWebChromeClient(new WebChromeClient()
/*     */     {
/*     */       public void onProgressChanged(WebView view, int newProgress)
/*     */       {
/*  73 */         this.val$pContext.setProgress(newProgress * 100);
/*     */       }
/*     */     });
/*  77 */     webView.setWebViewClient(new WebViewClient()
/*     */     {
/*     */       public void onPageStarted(WebView view, String url, Bitmap favicon) {
/*  80 */         this.val$pContext.setProgressBarVisibility(true);
/*     */       }
/*     */ 
/*     */       public void onPageFinished(WebView view, String url)
/*     */       {
/*  85 */         super.onPageFinished(view, url);
/*  86 */         this.val$pContext.setProgressBarVisibility(false);
/*     */       }
/*     */ 
/*     */       public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error)
/*     */       {
/* 105 */         this.val$pContext.returnResultForInternalSdkError(new ApplicationErrorRTException(20090801L));
/*     */       }
/*     */ 
/*     */       public boolean shouldOverrideUrlLoading(WebView view, String url)
/*     */       {
/* 111 */         if ((url.contains("mindmatics")) || (url.contains("mopay"))) {
/* 112 */           return super.shouldOverrideUrlLoading(view, url);
/*     */         }
/*     */ 
/* 115 */         this.val$pContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
/* 116 */         return true;
/*     */       }
/*     */     });
/* 123 */     webView.getSettings().setRenderPriority(WebSettings.RenderPriority.HIGH);
/* 124 */     webView.getSettings().setCacheMode(2);
/*     */     try
/*     */     {
/* 127 */       webView.setLayerType(1, null);
/*     */     } catch (NoSuchMethodError e) {
/* 129 */       LogUtil.logD(UiBuilder.class, "Catched NoSuchMethodError for 'webView.setLayerType(View.LAYER_TYPE_SOFTWARE, null)'. Method not available in Android API < 2.2");
/*     */     }
/*     */     try
/*     */     {
/* 133 */       webView.getSettings().setEnableSmoothTransition(true);
/*     */     } catch (NoSuchMethodError e) {
/* 135 */       LogUtil.logD(UiBuilder.class, "Catched NoSuchMethodError for 'webView.setEnableSmoothTransition(true)'. Method not available in Android API < 2.3");
/*     */     }
/*     */ 
/* 138 */     webView.setVerticalScrollBarEnabled(false);
/* 139 */     webView.getSettings().setDomStorageEnabled(true);
/* 140 */     webView.getSettings().setAllowFileAccess(false);
/* 141 */     webView.setHorizontalScrollBarEnabled(false);
/* 142 */     webView.getSettings().setSupportZoom(true);
/* 143 */     webView.getSettings().setLoadsImagesAutomatically(true);
/* 144 */     webView.getSettings().setJavaScriptEnabled(true);
/* 145 */     webView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
/* 146 */     webView.addJavascriptInterface(jsInterface, "mopayJsInterface");
/*     */ 
/* 150 */     webView.requestFocus(130);
/* 151 */     webView.getSettings().setUseWideViewPort(true);
/*     */ 
/* 153 */     return webView;
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.UiBuilder
 * JD-Core Version:    0.6.2
 */