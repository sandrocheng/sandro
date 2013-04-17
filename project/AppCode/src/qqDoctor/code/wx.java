final class wx
  implements Runnable
{
  wx(wr paramwr, String paramString1, String paramString2)
  {
  }

  public final void run()
  {
    while (true)
    {
      int i;
      try
      {
        i = wr.b(this.c, this.a, this.b);
        if ((1 == i) || (2 == i))
        {
          ff.a("kfc", "doFlowAnalysis success, call doSuccess");
          wr.q(this.c);
          break label120;
          ff.a("kfc", "doSmsAnalysis, failed, errCode = " + i);
          wr.b(this.c, i);
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      label120: 
      do
      {
        wr.c(this.c, i);
        ff.a("kfc", "doFlowAnalysis failed, errCode = " + i);
        ff.a("kfc", "wait until time out...");
        return;
        if (-34 == i)
          break;
      }
      while (-41 != i);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     wx
 * JD-Core Version:    0.6.2
 */