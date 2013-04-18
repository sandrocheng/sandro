package com.keniu.security.sync.ui;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;

final class ar extends WebViewClient
{
  ar(WebViewAct paramWebViewAct)
  {
  }

  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    WebViewAct.a(this.a).setVisibility(8);
    WebViewAct.b(this.a).setVisibility(0);
    super.onPageFinished(paramWebView, paramString);
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    paramWebView.loadUrl(paramString);
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.ar
 * JD-Core Version:    0.6.2
 */