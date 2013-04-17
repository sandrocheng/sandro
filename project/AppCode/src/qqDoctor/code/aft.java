import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.res.Resources;
import com.tencent.qqpimsecure.ui.activity.WifiApproveDialog;
import com.tencent.qqpimsecure.ui.activity.WifiApproveDialog.b;
import com.tencent.tmsecure.utils.WifiUtil;
import com.tencent.tmsecure.utils.WifiUtil.IWifiApproveCheckCallBack;

final class aft
  implements WifiUtil.IWifiApproveCheckCallBack
{
  aft(afs paramafs, int paramInt)
  {
  }

  public final void onWifiApproveCheckFinished(boolean paramBoolean1, boolean paramBoolean2)
  {
    String str = WifiUtil.getSSID();
    if (this.b.a.a != null)
    {
      if (this.a == 2131230841)
      {
        this.b.a.a.finish();
        this.b.a.a = null;
      }
    }
    else
      return;
    if (this.a == 2131230842)
    {
      if ((str != null) && (str.equals(WifiApproveDialog.f(this.b.a.a))) && ((!WifiApproveDialog.k(this.b.a.a)) || (WifiApproveDialog.f(this.b.a.a).equals(WifiApproveDialog.l(this.b.a.a))) || (WifiApproveDialog.m(this.b.a.a))))
        break label232;
      if ((str != null) && (str.equals(WifiApproveDialog.f(this.b.a.a))))
        break label214;
      ha.b(this.b.a.a, 2131428763);
    }
    while (true)
    {
      this.b.a.a.finish();
      this.b.a.a = null;
      break;
      break;
      label214: ha.b(this.b.a.a, 2131428764);
    }
    label232: Intent localIntent = new Intent();
    localIntent.setClass(this.b.a.a, WifiApproveDialog.class);
    localIntent.putExtra("Location", WifiApproveDialog.c(this.b.a.a));
    localIntent.putExtra("FromInternalUI", WifiApproveDialog.i(this.b.a.a));
    if (!paramBoolean1);
    for (boolean bool = true; ; bool = false)
    {
      localIntent.putExtra("HasApproved", bool);
      localIntent.putExtra("ReceiveError", paramBoolean2);
      localIntent.putExtra("WifiSsid", WifiApproveDialog.f(this.b.a.a));
      new StringBuilder("needWifiApprove=").append(paramBoolean1).toString();
      ov.a locala = new ov.a(this.b.a.a, (NotificationManager)this.b.a.a.getSystemService("notification"));
      Notification localNotification = new Notification();
      localNotification.icon = 2130838081;
      localNotification.when = System.currentTimeMillis();
      localNotification.flags = 16;
      localNotification.tickerText = this.b.a.a.getText(2131428759);
      localNotification.setLatestEventInfo(this.b.a.a, this.b.a.a.getResources().getString(2131428335), localNotification.tickerText, PendingIntent.getActivity(this.b.a.a, 0, localIntent, 268435456));
      locala.a(21, localNotification);
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aft
 * JD-Core Version:    0.6.2
 */