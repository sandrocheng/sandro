import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.tencent.tmsecure.common.TMSApplication;

public final class gm extends Handler
{
  public gm(Looper paramLooper, gp paramgp)
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
    localWebView.setWebViewClient(new gn(this.a, localWebView));
    localWebView.setWebChromeClient(new go(this.a, localWebView));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     gm
 * JD-Core Version:    0.6.2
 */