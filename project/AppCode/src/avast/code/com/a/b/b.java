package com.a.b;

public abstract class b extends c
{
  public b(String paramString)
  {
    super(Integer.class, paramString);
  }

  public final void a(Object paramObject, Integer paramInteger)
  {
    a(paramObject, Integer.valueOf(paramInteger.intValue()));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.a.b.b
 * JD-Core Version:    0.6.2
 */