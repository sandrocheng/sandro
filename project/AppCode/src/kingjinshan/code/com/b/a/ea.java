package com.b.a;

import java.lang.reflect.Method;

final class ea extends eb
{
  private Method h = dk.a(this.a, "valueOf", new Class[] { cp.class });
  private Method i = dk.a(this.a, "getValueDescriptor", new Class[0]);

  ea(String paramString, Class paramClass1, Class paramClass2)
  {
    super(paramString, paramClass1, paramClass2);
  }

  public final Object a(dk paramdk)
  {
    return dk.a(this.i, super.a(paramdk), new Object[0]);
  }

  public final Object a(dn paramdn)
  {
    return dk.a(this.i, super.a(paramdn), new Object[0]);
  }

  public final void a(dn paramdn, Object paramObject)
  {
    super.a(paramdn, dk.a(this.h, null, new Object[] { paramObject }));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ea
 * JD-Core Version:    0.6.2
 */