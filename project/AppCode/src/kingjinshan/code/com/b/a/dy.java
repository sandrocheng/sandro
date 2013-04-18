package com.b.a;

import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

class dy
  implements dw
{
  protected final Class a;
  protected final Method b;
  protected final Method c;
  protected final Method d;
  protected final Method e;
  protected final Method f;
  protected final Method g;
  protected final Method h;
  protected final Method i;
  protected final Method j;

  dy(String paramString, Class paramClass1, Class paramClass2)
  {
    this.b = dk.a(paramClass1, "get" + paramString + "List", new Class[0]);
    this.c = dk.a(paramClass2, "get" + paramString + "List", new Class[0]);
    String str1 = "get" + paramString;
    Class[] arrayOfClass1 = new Class[1];
    arrayOfClass1[0] = Integer.TYPE;
    this.d = dk.a(paramClass1, str1, arrayOfClass1);
    String str2 = "get" + paramString;
    Class[] arrayOfClass2 = new Class[1];
    arrayOfClass2[0] = Integer.TYPE;
    this.e = dk.a(paramClass2, str2, arrayOfClass2);
    this.a = this.d.getReturnType();
    String str3 = "set" + paramString;
    Class[] arrayOfClass3 = new Class[2];
    arrayOfClass3[0] = Integer.TYPE;
    arrayOfClass3[1] = this.a;
    this.f = dk.a(paramClass2, str3, arrayOfClass3);
    String str4 = "add" + paramString;
    Class[] arrayOfClass4 = new Class[1];
    arrayOfClass4[0] = this.a;
    this.g = dk.a(paramClass2, str4, arrayOfClass4);
    this.h = dk.a(paramClass1, "get" + paramString + "Count", new Class[0]);
    this.i = dk.a(paramClass2, "get" + paramString + "Count", new Class[0]);
    this.j = dk.a(paramClass2, "clear" + paramString, new Class[0]);
  }

  public ew a()
  {
    throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
  }

  public Object a(dk paramdk)
  {
    return dk.a(this.b, paramdk, new Object[0]);
  }

  public Object a(dk paramdk, int paramInt)
  {
    Method localMethod = this.d;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    return dk.a(localMethod, paramdk, arrayOfObject);
  }

  public Object a(dn paramdn)
  {
    return dk.a(this.c, paramdn, new Object[0]);
  }

  public Object a(dn paramdn, int paramInt)
  {
    Method localMethod = this.e;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    return dk.a(localMethod, paramdn, arrayOfObject);
  }

  public void a(dn paramdn, int paramInt, Object paramObject)
  {
    Method localMethod = this.f;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = paramObject;
    dk.a(localMethod, paramdn, arrayOfObject);
  }

  public final void a(dn paramdn, Object paramObject)
  {
    d(paramdn);
    Iterator localIterator = ((List)paramObject).iterator();
    while (localIterator.hasNext())
      b(paramdn, localIterator.next());
  }

  public void b(dn paramdn, Object paramObject)
  {
    dk.a(this.g, paramdn, new Object[] { paramObject });
  }

  public final boolean b(dk paramdk)
  {
    throw new UnsupportedOperationException("hasField() called on a singular field.");
  }

  public final boolean b(dn paramdn)
  {
    throw new UnsupportedOperationException("hasField() called on a singular field.");
  }

  public final int c(dk paramdk)
  {
    return ((Integer)dk.a(this.h, paramdk, new Object[0])).intValue();
  }

  public final int c(dn paramdn)
  {
    return ((Integer)dk.a(this.i, paramdn, new Object[0])).intValue();
  }

  public final void d(dn paramdn)
  {
    dk.a(this.j, paramdn, new Object[0]);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.dy
 * JD-Core Version:    0.6.2
 */