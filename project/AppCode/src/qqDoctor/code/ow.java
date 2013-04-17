final class ow extends Thread
{
  ow(ov paramov)
  {
  }

  public final void run()
  {
    Thread.currentThread();
    try
    {
      Thread.sleep(5000L);
      this.a.b();
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
 * Qualified Name:     ow
 * JD-Core Version:    0.6.2
 */