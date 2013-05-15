package com.avast.android.generic.internet.c;

public class g extends Exception
{
  private h a = null;

  protected g(String paramString, h paramh)
  {
    super(paramString + ", error from id.avast.com: " + paramh);
    this.a = paramh;
  }

  protected g(String paramString1, String paramString2)
  {
    super(paramString1 + ", error from id.avast.com: " + paramString2);
    this.a = h.a(paramString2);
  }

  public g(Throwable paramThrowable)
  {
    super(paramThrowable);
  }

  public h a()
  {
    return this.a;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.g
 * JD-Core Version:    0.6.2
 */