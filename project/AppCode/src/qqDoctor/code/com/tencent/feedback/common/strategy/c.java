package com.tencent.feedback.common.strategy;

final class c
  implements Runnable
{
  c(a parama)
  {
  }

  public final void run()
  {
    a.b[] arrayOfb = this.a.e();
    if (arrayOfb != null)
    {
      int i = arrayOfb.length;
      for (int j = 0; j < i; j++)
        arrayOfb[j].onSecurityStrategyChange(a.d(this.a));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.common.strategy.c
 * JD-Core Version:    0.6.2
 */