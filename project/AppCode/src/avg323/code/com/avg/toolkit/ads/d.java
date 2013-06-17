package com.avg.toolkit.ads;

import android.webkit.WebView;

class d
  implements Runnable
{
  d(c paramc, String paramString)
  {
  }

  public void run()
  {
    if ((this.b.a) && (WebViewAdsManager.a(this.b.b)))
      WebViewAdsManager.b(this.b.b).loadDataWithBaseURL(c.a(this.b), this.a, "text/html", "UTF-8", null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.ads.d
 * JD-Core Version:    0.6.2
 */