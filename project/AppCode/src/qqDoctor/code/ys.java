import android.content.Intent;
import com.tencent.qqpimsecure.service.TimedTaskReceiver;

final class ys
  implements Runnable
{
  ys(yr paramyr)
  {
  }

  public final void run()
  {
    try
    {
      Thread.sleep(1000L);
      Intent localIntent = new Intent(this.a.a, TimedTaskReceiver.class);
      new acc(this.a.a).a(localIntent);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ys
 * JD-Core Version:    0.6.2
 */