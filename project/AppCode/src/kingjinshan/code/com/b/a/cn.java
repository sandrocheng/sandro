package com.b.a;

public final class cn extends Exception
{
  private static final long a = 5750205775490483148L;
  private final String b;
  private final ev c;
  private final String d;

  private cn(ct paramct, String paramString, byte paramByte)
  {
    super(paramct.b() + ": " + paramString);
    this.b = paramct.b();
    this.c = paramct.a();
    this.d = paramString;
  }

  private cn(cv paramcv, String paramString, byte paramByte)
  {
    super(paramcv.b() + ": " + paramString);
    this.b = paramcv.b();
    this.c = paramcv.i();
    this.d = paramString;
  }

  private cn(cv paramcv, String paramString, Throwable paramThrowable, byte paramByte)
  {
    this(paramcv, paramString, (byte)0);
    initCause(paramThrowable);
  }

  private String a()
  {
    return this.b;
  }

  private ev b()
  {
    return this.c;
  }

  private String c()
  {
    return this.d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.cn
 * JD-Core Version:    0.6.2
 */