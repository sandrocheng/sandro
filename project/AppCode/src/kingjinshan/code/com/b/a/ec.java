package com.b.a;

import java.lang.reflect.Method;

final class ec extends eb
{
  private final Method h = dk.a(this.a, "newBuilder", new Class[0]);

  ec(String paramString, Class paramClass1, Class paramClass2)
  {
    super(paramString, paramClass1, paramClass2);
  }

  private Object a(Object paramObject)
  {
    if (this.a.isInstance(paramObject));
    for (Object localObject = paramObject; ; localObject = ((ew)dk.a(this.h, null, new Object[0])).c((ev)paramObject).K())
      return localObject;
  }

  public final ew a()
  {
    return (ew)dk.a(this.h, null, new Object[0]);
  }

  public final void a(dn paramdn, Object paramObject)
  {
    if (this.a.isInstance(paramObject));
    for (Object localObject = paramObject; ; localObject = ((ew)dk.a(this.h, null, new Object[0])).c((ev)paramObject).K())
    {
      super.a(paramdn, localObject);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ec
 * JD-Core Version:    0.6.2
 */