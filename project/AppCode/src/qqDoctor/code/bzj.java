import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.utils.WifiUtil.IWifiApproveCheckCallBack;

public final class bzj extends Handler
{
  public bzj(Looper paramLooper, WifiUtil.IWifiApproveCheckCallBack paramIWifiApproveCheckCallBack)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    WebView localWebView = new WebView(TMSApplication.getApplicaionContext());
    WebSettings localWebSettings = localWebView.getSettings();
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setPluginsEnabled(true);
    localWebView.loadUrl("http://qqwx.qq.com/cw.html");
    localWebView.setWebViewClient(new bzk(this.a, localWebView));
    localWebView.setWebChromeClient(new bzl(this.a, localWebView));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bzj
 * JD-Core Version:    0.6.2
 */