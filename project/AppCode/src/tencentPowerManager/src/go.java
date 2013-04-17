import android.webkit.WebChromeClient;
import android.webkit.WebView;

final class go extends WebChromeClient
{
  go(gp paramgp, WebView paramWebView)
  {
  }

  public final void onReceivedTitle(WebView paramWebView, String paramString)
  {
    if ((paramString != null) && (paramString.contains("Meri")))
      gp.a(false, false);
    while (true)
    {
      this.b.stopLoading();
      this.b.setWebViewClient(null);
      this.b.setWebChromeClient(null);
      this.b.clearCache(true);
      this.b.destroy();
      return;
      String str = paramWebView.getUrl();
      bk.c = str;
      if ((str == null) || (bk.c.length() == 0))
        bk.c = "http://qqwx.qq.com/cw.html";
      gp.a(true, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     go
 * JD-Core Version:    0.6.2
 */