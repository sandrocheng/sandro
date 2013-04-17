final class ci
  implements Runnable
{
  ci(ch paramch)
  {
  }

  public final void run()
  {
    while (!ch.a(this.a))
    {
      ch.b(this.a);
      try
      {
        Thread.sleep(2000L);
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ci
 * JD-Core Version:    0.6.2
 */