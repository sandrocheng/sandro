package com.b.a;

import java.lang.reflect.Method;

class eb
  implements dw
{
  protected final Class a;
  protected final Method b;
  protected final Method c;
  protected final Method d;
  protected final Method e;
  protected final Method f;
  protected final Method g;

  eb(String paramString, Class paramClass1, Class paramClass2)
  {
    this.b = dk.a(paramClass1, "get" + paramString, new Class[0]);
    this.c = dk.a(paramClass2, "get" + paramString, new Class[0]);
    this.a = this.b.getReturnType();
    String str = "set" + paramString;
    Class[] arrayOfClass = new Class[1];
    arrayOfClass[0] = this.a;
    this.d = dk.a(paramClass2, str, arrayOfClass);
    this.e = dk.a(paramClass1, "has" + paramString, new Class[0]);
    this.f = dk.a(paramClass2, "has" + paramString, new Class[0]);
    this.g = dk.a(paramClass2, "clear" + paramString, new Class[0]);
  }

  public ew a()
  {
    throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
  }

  public Object a(dk paramdk)
  {
    return dk.a(this.b, paramdk, new Object[0]);
  }

  public final Object a(dk paramdk, int paramInt)
  {
    throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
  }

  public Object a(dn paramdn)
  {
    return dk.a(this.c, paramdn, new Object[0]);
  }

  public final Object a(dn paramdn, int paramInt)
  {
    throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
  }

  public final void a(dn paramdn, int paramInt, Object paramObject)
  {
    throw new UnsupportedOperationException("setRepeatedField() called on a singular field.");
  }

  public void a(dn paramdn, Object paramObject)
  {
    dk.a(this.d, paramdn, new Object[] { paramObject });
  }

  public final void b(dn paramdn, Object paramObject)
  {
    throw new UnsupportedOperationException("addRepeatedField() called on a singular field.");
  }

  public final boolean b(dk paramdk)
  {
    return ((Boolean)dk.a(this.e, paramdk, new Object[0])).booleanValue();
  }

  public final boolean b(dn paramdn)
  {
    return ((Boolean)dk.a(this.f, paramdn, new Object[0])).booleanValue();
  }

  public final int c(dk paramdk)
  {
    throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
  }

  public final int c(dn paramdn)
  {
    throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
  }

  public final void d(dn paramdn)
  {
    dk.a(this.g, paramdn, new Object[0]);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.eb
 * JD-Core Version:    0.6.2
 */