import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.HttpAuthHandler;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.tencent.qqpimsecure.ui.activity.WifiApproveDialog.b;

public final class agb extends WebViewClient
{
  public agb(WifiApproveDialog.b paramb)
  {
  }

  public final void doUpdateVisitedHistory(WebView paramWebView, String paramString, boolean paramBoolean)
  {
    new StringBuilder().append(paramBoolean).append(":").append(paramString).toString();
    WifiApproveDialog.b.a(this.a, paramWebView.canGoBack(), paramWebView.canGoForward());
    super.doUpdateVisitedHistory(paramWebView, paramString, paramBoolean);
  }

  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
  }

  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    if ((paramString != null) && (paramString.equalsIgnoreCase("http://qqwx.qq.com/cw.html")))
      paramWebView.stopLoading();
    while (true)
    {
      return;
      super.onPageStarted(paramWebView, paramString, paramBitmap);
    }
  }

  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    new StringBuilder().append(paramString1).append(",").append(paramString2).toString();
  }

  public final void onReceivedHttpAuthRequest(WebView paramWebView, HttpAuthHandler paramHttpAuthHandler, String paramString1, String paramString2)
  {
    paramWebView.getUrl();
    paramHttpAuthHandler.cancel();
  }

  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    paramWebView.getUrl();
    paramSslErrorHandler.proceed();
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    paramWebView.loadUrl(paramString);
    WifiApproveDialog.b.a(this.a, paramWebView.canGoBack(), paramWebView.canGoForward());
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     agb
 * JD-Core Version:    0.6.2
 */