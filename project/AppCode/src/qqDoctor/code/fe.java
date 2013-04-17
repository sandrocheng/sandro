import android.os.Process;

final class fe
  implements Runnable
{
  public final void run()
  {
    try
    {
      Thread.sleep(2000L);
      Process.killProcess(Process.myPid());
      fd.a = null;
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
 * Qualified Name:     fe
 * JD-Core Version:    0.6.2
 */