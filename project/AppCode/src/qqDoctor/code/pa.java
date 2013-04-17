final class pa extends Thread
{
  pa(ov paramov)
  {
  }

  public final void run()
  {
    try
    {
      Thread.sleep(5000L);
      ov.a(this.a).a(28);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     pa
 * JD-Core Version:    0.6.2
 */