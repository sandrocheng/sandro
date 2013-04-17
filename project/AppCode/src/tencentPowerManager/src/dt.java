import android.os.Handler;
import android.os.Message;

final class dt extends Thread
{
  dt(ds paramds)
  {
  }

  public final void run()
  {
    try
    {
      Thread.sleep(5000L);
      ds.a locala = ds.a(this.a);
      Message localMessage = locala.b.obtainMessage();
      localMessage.what = 1;
      localMessage.arg1 = 1;
      locala.b.sendMessageDelayed(localMessage, 0L);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     dt
 * JD-Core Version:    0.6.2
 */