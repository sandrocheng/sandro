package com.antivirus.ui.help;

import android.graphics.Bitmap;
import android.os.Handler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;

class b extends WebViewClient
{
  b(HelpTabletActivity paramHelpTabletActivity)
  {
  }

  public void onPageFinished(WebView paramWebView, String paramString)
  {
    this.a.k();
    this.a.m();
    if (!HelpTabletActivity.c(this.a))
    {
      HelpTabletActivity.a(this.a, true);
      HelpTabletActivity.d(this.a).setVisibility(8);
      HelpTabletActivity.a(this.a).setVisibility(0);
      if ((HelpTabletActivity.e(this.a) != null) && (HelpTabletActivity.f(this.a) != null))
        HelpTabletActivity.e(this.a).removeCallbacks(HelpTabletActivity.f(this.a));
    }
    while (true)
    {
      return;
      HelpTabletActivity.g(this.a);
    }
  }

  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    HelpTabletActivity.a(this.a).setVisibility(4);
    if (HelpTabletActivity.b(this.a) == null)
      HelpTabletActivity.a(this.a, new Handler());
    this.a.k();
    HelpTabletActivity.b(this.a).postDelayed(this.a.n, 30000L);
  }

  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    HelpTabletActivity.b(this.a, true);
  }

  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.help.b
 * JD-Core Version:    0.6.2
 */