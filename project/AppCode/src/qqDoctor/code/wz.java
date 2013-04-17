final class wz
  implements Runnable
{
  wz(wr.a parama)
  {
  }

  public final void run()
  {
    while (true)
    {
      int i;
      try
      {
        i = wr.b(this.a.a, wr.m(this.a.a), wr.l(this.a.a));
        if ((i != 1) && (i != 2))
          break label156;
        ff.a("kfc", "time out, doFlowAnalysis success, finish");
        wr.q(this.a.a);
        wr.t(this.a.a);
        break label155;
        ff.a("kfc", "time out, doFlowAnalysis failed, finish, errCode = " + i);
        wr.b(this.a.a, i);
        continue;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        break label155;
        ff.a("kfc", "time out, doFlowAnalysis failed, errCode = " + i + " doNext");
        wr.c(this.a.a, i);
        continue;
      }
      label155: return;
      label156: if (i != -34)
        if (i != -41);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     wz
 * JD-Core Version:    0.6.2
 */