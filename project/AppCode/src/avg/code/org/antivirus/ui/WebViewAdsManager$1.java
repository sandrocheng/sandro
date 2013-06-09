package org.antivirus.ui;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.view.WindowManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import org.antivirus.core.Logger;

class WebViewAdsManager$1 extends WebViewClient
{
  WebViewAdsManager$1(WebViewAdsManager paramWebViewAdsManager, Activity paramActivity, LinearLayout paramLinearLayout)
  {
  }

  public void onPageFinished(WebView paramWebView, String paramString)
  {
    if (!WebViewAdsManager.b(this.c))
    {
      this.a.getWindowManager().getDefaultDisplay();
      WebViewAdsManager.a(this.c, this.a, this.b);
      WebViewAdsManager.c(this.c);
    }
  }

  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    WebViewAdsManager.d(this.c);
  }

  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (WebViewAdsManager.a(this.c));
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
        Logger.log(localException);
        continue;
      }
      paramWebView.loadUrl(paramString);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.WebViewAdsManager.1
 * JD-Core Version:    0.6.2
 */