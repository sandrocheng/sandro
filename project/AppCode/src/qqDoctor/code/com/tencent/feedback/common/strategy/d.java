package com.tencent.feedback.common.strategy;

final class d
  implements Runnable
{
  d(a parama)
  {
  }

  public final void run()
  {
    a.b[] arrayOfb = this.a.e();
    if (arrayOfb != null)
    {
      int i = arrayOfb.length;
      for (int j = 0; j < i; j++)
        arrayOfb[j].onUploadStrategyChange(a.e(this.a));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.common.strategy.d
 * JD-Core Version:    0.6.2
 */