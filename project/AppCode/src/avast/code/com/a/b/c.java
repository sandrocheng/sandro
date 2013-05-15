package com.a.b;

public abstract class c
{
  private final String a;
  private final Class b;

  public c(Class paramClass, String paramString)
  {
    this.a = paramString;
    this.b = paramClass;
  }

  public abstract Object a(Object paramObject);

  public String a()
  {
    return this.a;
  }

  public void a(Object paramObject1, Object paramObject2)
  {
    throw new UnsupportedOperationException("Property " + a() + " is read-only");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.a.b.c
 * JD-Core Version:    0.6.2
 */