import android.os.Handler;
import android.os.Message;

final class aut extends Thread
{
  aut(atz paramatz, int paramInt)
  {
  }

  public final void run()
  {
    while (atz.w(this.b))
      try
      {
        Message localMessage = atz.x(this.b).obtainMessage(3001, Integer.valueOf(this.a));
        atz.y(this.b).sendMessage(localMessage);
        Thread.sleep(1000L);
      }
      catch (Exception localException)
      {
        atz.z(this.b);
      }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aut
 * JD-Core Version:    0.6.2
 */