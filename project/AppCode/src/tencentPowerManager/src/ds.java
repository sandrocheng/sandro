import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.tencent.powermanager.PowerManagerApplication;

public class ds
{
  private static ds a;
  private ds.a b = new ds.a(this.c, (NotificationManager)this.c.getSystemService("notification"));
  private Context c = PowerManagerApplication.a();

  public static ds a()
  {
    try
    {
      if (a == null)
        a = new ds();
      return a;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(String paramString)
  {
    Notification localNotification = new Notification();
    localNotification.when = System.currentTimeMillis();
    localNotification.tickerText = paramString;
    localNotification.icon = 2130837819;
    localNotification.flags = 16;
    PendingIntent localPendingIntent = PendingIntent.getActivity(this.c, 0, new Intent(), 134217728);
    localNotification.setLatestEventInfo(this.c, this.c.getString(2131099648), paramString, localPendingIntent);
    this.b.a(localNotification);
    new dt(this).start();
  }

  public final void b(String paramString)
  {
    Notification localNotification = new Notification();
    localNotification.when = System.currentTimeMillis();
    localNotification.tickerText = paramString;
    localNotification.icon = 2130837819;
    localNotification.flags = 16;
    PendingIntent localPendingIntent = PendingIntent.getActivity(this.c, 0, new Intent(), 134217728);
    localNotification.setLatestEventInfo(this.c, this.c.getString(2131099648), paramString, localPendingIntent);
    this.b.a(localNotification);
  }

  public static final class a
  {
    NotificationManager a;
    Handler b;

    public a(Context paramContext, NotificationManager paramNotificationManager)
    {
      this.a = paramNotificationManager;
      this.b = new du(this, paramContext.getMainLooper());
    }

    public final void a(Notification paramNotification)
    {
      Message localMessage = this.b.obtainMessage();
      localMessage.what = 0;
      localMessage.obj = paramNotification;
      localMessage.arg1 = 1;
      this.b.sendMessageDelayed(localMessage, 0L);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ds
 * JD-Core Version:    0.6.2
 */