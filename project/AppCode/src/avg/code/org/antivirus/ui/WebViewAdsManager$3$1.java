package org.antivirus.ui;

import android.webkit.WebView;

class WebViewAdsManager$3$1
  implements Runnable
{
  WebViewAdsManager$3$1(WebViewAdsManager.3 param3, String paramString)
  {
  }

  public void run()
  {
    if (WebViewAdsManager.e(this.b.c))
      WebViewAdsManager.f(this.b.c).loadDataWithBaseURL(this.b.a, this.a, "text/html", "UTF-8", null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.WebViewAdsManager.3.1
 * JD-Core Version:    0.6.2
 */