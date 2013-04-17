import android.os.Handler;
import android.os.Message;
import android.webkit.WebView;
import com.tencent.qqpimsecure.ui.activity.WifiApproveDialog;
import com.tencent.qqpimsecure.ui.activity.WifiApproveDialog.b;

public final class afp extends Handler
{
  public afp(WifiApproveDialog paramWifiApproveDialog)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 100:
    }
    WifiApproveDialog.a(this.a);
    WifiApproveDialog.a(this.a, di.c());
    WifiApproveDialog localWifiApproveDialog1 = this.a;
    di.d.a = ((WifiApproveDialog)localWifiApproveDialog1);
    this.a.setContentView(WifiApproveDialog.b(this.a));
    WifiApproveDialog localWifiApproveDialog2 = this.a;
    WifiApproveDialog.b localb;
    if (di.d != null)
    {
      localb = di.d;
      if (localb.b == null);
    }
    for (WebView localWebView = localb.c; ; localWebView = null)
    {
      WifiApproveDialog.a(localWifiApproveDialog2, localWebView);
      if (paramMessage.arg1 == 1)
        WifiApproveDialog.d(this.a).loadUrl(WifiApproveDialog.c(this.a));
      WifiApproveDialog.d(this.a).setFocusable(true);
      WifiApproveDialog.d(this.a).setFocusableInTouchMode(true);
      WifiApproveDialog.d(this.a).setOnTouchListener(new afq(this));
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     afp
 * JD-Core Version:    0.6.2
 */