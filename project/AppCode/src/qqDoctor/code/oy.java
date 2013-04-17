final class oy extends Thread
{
  oy(ov paramov)
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
 * Qualified Name:     oy
 * JD-Core Version:    0.6.2
 */