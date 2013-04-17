import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import com.tencent.powermanager.PowerManagerApplication;

public final class br
{
  private static br a = null;
  private AlarmManager b = null;

  static
  {
    br.class.getSimpleName();
  }

  private br()
  {
    if (this.b == null)
      this.b = ((AlarmManager)PowerManagerApplication.a().getSystemService("alarm"));
  }

  public static br a()
  {
    if (a == null)
      a = new br();
    return a;
  }

  public final void a(Intent paramIntent)
  {
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(PowerManagerApplication.a(), 0, paramIntent, 0);
    long l = SystemClock.elapsedRealtime();
    this.b.setRepeating(0, l, 300000L, localPendingIntent);
  }

  public final void b(Intent paramIntent)
  {
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(PowerManagerApplication.a(), 0, paramIntent, 0);
    this.b.cancel(localPendingIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     br
 * JD-Core Version:    0.6.2
 */