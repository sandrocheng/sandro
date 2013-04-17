import android.webkit.WebView;
import android.webkit.WebViewClient;

final class gn extends WebViewClient
{
  gn(gp paramgp, WebView paramWebView)
  {
  }

  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    bk.c = "http://qqwx.qq.com/cw.html";
    gp.a(false, true);
    this.b.stopLoading();
    this.b.setWebViewClient(null);
    this.b.setWebChromeClient(null);
    this.b.clearCache(true);
    this.b.destroy();
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (!paramString.contains(".qq."))
    {
      bk.c = paramString;
      gp.a(true, false);
    }
    while (true)
    {
      this.b.stopLoading();
      this.b.setWebViewClient(null);
      this.b.setWebChromeClient(null);
      this.b.clearCache(true);
      this.b.destroy();
      return true;
      gp.a(false, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     gn
 * JD-Core Version:    0.6.2
 */