package com.tencent.feedback.common;

public final class d
{
  private static c a = new c(3, 3, 1);

  static
  {
    new a(50, 300000L, 30000L, 12, 30000L);
    new e(12, 60000L);
    new b(60000L, 7);
  }

  public static c a()
  {
    synchronized (a)
    {
      c localc2 = a;
      return localc2;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.common.d
 * JD-Core Version:    0.6.2
 */