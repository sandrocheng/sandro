package com.avg.toolkit.ads;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.view.WindowManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class a extends WebViewClient
{
  a(WebViewAdsManager paramWebViewAdsManager, Activity paramActivity)
  {
  }

  public void onPageFinished(WebView paramWebView, String paramString)
  {
    if (!WebViewAdsManager.d(this.b))
    {
      this.a.getWindowManager().getDefaultDisplay();
      WebViewAdsManager.a(this.b, this.a);
      WebViewAdsManager.a(this.b, true);
    }
  }

  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    WebViewAdsManager.b(this.b, true);
  }

  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (WebViewAdsManager.c(this.b));
    while (true)
    {
      try
      {
        Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
        this.a.startActivity(localIntent);
        return true;
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a(localException);
        continue;
      }
      paramWebView.loadUrl(paramString);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.ads.a
 * JD-Core Version:    0.6.2
 */