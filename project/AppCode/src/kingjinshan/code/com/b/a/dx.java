package com.b.a;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

final class dx extends dy
{
  private final Method k = dk.a(this.a, "valueOf", new Class[] { cp.class });
  private final Method l = dk.a(this.a, "getValueDescriptor", new Class[0]);

  dx(String paramString, Class paramClass1, Class paramClass2)
  {
    super(paramString, paramClass1, paramClass2);
  }

  public final Object a(dk paramdk)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = ((List)super.a(paramdk)).iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      localArrayList.add(dk.a(this.l, localObject, new Object[0]));
    }
    return Collections.unmodifiableList(localArrayList);
  }

  public final Object a(dk paramdk, int paramInt)
  {
    return dk.a(this.l, super.a(paramdk, paramInt), new Object[0]);
  }

  public final Object a(dn paramdn)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = ((List)super.a(paramdn)).iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      localArrayList.add(dk.a(this.l, localObject, new Object[0]));
    }
    return Collections.unmodifiableList(localArrayList);
  }

  public final Object a(dn paramdn, int paramInt)
  {
    return dk.a(this.l, super.a(paramdn, paramInt), new Object[0]);
  }

  public final void a(dn paramdn, int paramInt, Object paramObject)
  {
    super.a(paramdn, paramInt, dk.a(this.k, null, new Object[] { paramObject }));
  }

  public final void b(dn paramdn, Object paramObject)
  {
    super.b(paramdn, dk.a(this.k, null, new Object[] { paramObject }));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.dx
 * JD-Core Version:    0.6.2
 */