import android.os.Handler;
import android.os.Message;

final class rp
  implements Runnable
{
  rp(ro paramro)
  {
  }

  public final void run()
  {
    int i = 3;
    while (true)
      if (i >= 0)
      {
        Message localMessage = rn.b(this.a.a).obtainMessage();
        localMessage.what = 2;
        localMessage.arg1 = i;
        rn.b(this.a.a).sendMessage(localMessage);
        try
        {
          Thread.sleep(1000L);
          label51: i--;
        }
        catch (InterruptedException localInterruptedException)
        {
          break label51;
        }
      }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     rp
 * JD-Core Version:    0.6.2
 */