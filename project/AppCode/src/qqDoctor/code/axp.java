import android.os.Handler;

final class axp extends Thread
{
  axp(axj paramaxj)
  {
  }

  public final void run()
  {
    while (axj.e(this.a))
      try
      {
        if (!axj.f(this.a))
          axj.g(this.a).sendEmptyMessage(2);
        Thread.sleep(axj.h(this.a));
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     axp
 * JD-Core Version:    0.6.2
 */