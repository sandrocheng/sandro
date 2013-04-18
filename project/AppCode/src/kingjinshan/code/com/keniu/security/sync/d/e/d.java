package com.keniu.security.sync.d.e;

public final class d extends Exception
{
  private static final long a = -6778870971625008520L;
  private int b;

  private d(int paramInt)
  {
    this.b = paramInt;
  }

  public d(int paramInt, String paramString)
  {
    super(paramString);
    this.b = paramInt;
  }

  private d(int paramInt, Throwable paramThrowable)
  {
    super(paramThrowable);
    this.b = paramInt;
  }

  public final int a()
  {
    return this.b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.e.d
 * JD-Core Version:    0.6.2
 */