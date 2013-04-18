package com.keniu.security.sync.d.e;

public final class e extends Exception
{
  private static final long a = 3393391569362187597L;
  private int b;

  private e(int paramInt)
  {
    this.b = paramInt;
  }

  private e(int paramInt, Throwable paramThrowable)
  {
    super(paramThrowable);
    this.b = paramInt;
  }

  public e(String paramString)
  {
    super(paramString);
    this.b = -2;
  }

  public final int a()
  {
    return this.b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.e.e
 * JD-Core Version:    0.6.2
 */