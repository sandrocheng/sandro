package com.a.b;

public abstract class a extends c
{
  public a(String paramString)
  {
    super(Float.class, paramString);
  }

  public abstract void a(Object paramObject, float paramFloat);

  public final void a(Object paramObject, Float paramFloat)
  {
    a(paramObject, paramFloat.floatValue());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.a.b.a
 * JD-Core Version:    0.6.2
 */