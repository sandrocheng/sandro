import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.tencent.qqpimsecure.service.SecureService;

final class vf extends BroadcastReceiver
{
  vf(ve paramve)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE"))
    {
      ve.a(this.a);
      if (!ve.c())
        break label125;
      ve.b(this.a).f(true);
      if ((ve.c(this.a) != null) && (ve.d(this.a) != null))
        ve.c(this.a).removeCallbacks(ve.d(this.a));
      Intent localIntent = new Intent();
      localIntent.setClass(ve.e(this.a), SecureService.class);
      localIntent.setAction("switch_suspession_window");
      ve.e(this.a).startService(localIntent);
    }
    while (true)
    {
      return;
      label125: if (ve.a)
      {
        ve.b(this.a).f(false);
        this.a.b();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     vf
 * JD-Core Version:    0.6.2
 */