import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.tencent.tmsecure.utils.WifiUtil;
import com.tencent.tmsecure.utils.WifiUtil.IWifiApproveCheckCallBack;

final class bzl extends WebChromeClient
{
  bzl(WifiUtil.IWifiApproveCheckCallBack paramIWifiApproveCheckCallBack, WebView paramWebView)
  {
  }

  public final void onReceivedTitle(WebView paramWebView, String paramString)
  {
    if ((paramString != null) && (paramString.contains("Meri")))
      this.a.onWifiApproveCheckFinished(false, false);
    while (true)
    {
      this.b.stopLoading();
      this.b.setWebViewClient(null);
      this.b.setWebChromeClient(null);
      this.b.clearCache(true);
      this.b.destroy();
      return;
      String str = paramWebView.getUrl();
      WifiUtil.sRedirectLocation = str;
      if ((str == null) || (WifiUtil.sRedirectLocation.length() == 0))
        WifiUtil.sRedirectLocation = "http://qqwx.qq.com/cw.html";
      this.a.onWifiApproveCheckFinished(true, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bzl
 * JD-Core Version:    0.6.2
 */