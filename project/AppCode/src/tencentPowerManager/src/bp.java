import android.os.Handler;
import android.os.Message;

final class bp
  implements Runnable
{
  bp(bo parambo)
  {
  }

  public final void run()
  {
    try
    {
      Thread.sleep(3000L);
      this.a.b();
      bo.a locala = bo.a(this.a);
      Message localMessage = locala.b.obtainMessage(1);
      localMessage.arg1 = 3;
      locala.b.sendMessage(localMessage);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     bp
 * JD-Core Version:    0.6.2
 */