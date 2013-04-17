import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.tencent.tmsecure.utils.WifiUtil.IWifiApproveCheckCallBack;

final class bzk extends WebViewClient
{
  bzk(WifiUtil.IWifiApproveCheckCallBack paramIWifiApproveCheckCallBack, WebView paramWebView)
  {
  }

  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    com.tencent.tmsecure.utils.WifiUtil.sRedirectLocation = "http://qqwx.qq.com/cw.html";
    this.a.onWifiApproveCheckFinished(false, true);
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
      com.tencent.tmsecure.utils.WifiUtil.sRedirectLocation = paramString;
      this.a.onWifiApproveCheckFinished(true, false);
    }
    while (true)
    {
      this.b.stopLoading();
      this.b.setWebViewClient(null);
      this.b.setWebChromeClient(null);
      this.b.clearCache(true);
      this.b.destroy();
      return true;
      this.a.onWifiApproveCheckFinished(false, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bzk
 * JD-Core Version:    0.6.2
 */