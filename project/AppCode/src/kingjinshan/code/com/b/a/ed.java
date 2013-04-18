package com.b.a;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ed
{
  private du a;
  private final Class b;
  private final ev c;
  private final Method d;
  private final Method e;

  private ed(du paramdu, Class paramClass, ev paramev, byte paramByte)
  {
    if ((ev.class.isAssignableFrom(paramClass)) && (!paramClass.isInstance(paramev)))
      throw new IllegalArgumentException("Bad messageDefaultInstance for " + paramClass.getName());
    this.a = paramdu;
    this.b = paramClass;
    this.c = paramev;
    if (fb.class.isAssignableFrom(paramClass))
      this.d = dk.a(paramClass, "valueOf", new Class[] { cp.class });
    for (this.e = dk.a(paramClass, "getValueDescriptor", new Class[0]); ; this.e = null)
    {
      return;
      this.d = null;
    }
  }

  private Object a(Object paramObject)
  {
    cq localcq = a();
    if (localcq.m())
      if ((localcq.f() == cr.i) || (localcq.f() == cr.h))
      {
        localObject = new ArrayList();
        Iterator localIterator = ((List)paramObject).iterator();
        while (localIterator.hasNext())
          ((List)localObject).add(b(localIterator.next()));
      }
    for (Object localObject = paramObject; ; localObject = b(paramObject))
      return localObject;
  }

  private void a(cq paramcq)
  {
    if (this.a != null)
      throw new IllegalStateException("Already initialized.");
    this.a = new ee(this, paramcq);
  }

  private Object b(Object paramObject)
  {
    cq localcq = a();
    Object localObject;
    switch (dm.a[localcq.f().ordinal()])
    {
    default:
      localObject = paramObject;
    case 1:
    case 2:
    }
    while (true)
    {
      return localObject;
      if (this.b.isInstance(paramObject))
      {
        localObject = paramObject;
      }
      else
      {
        localObject = this.c.E().c((ev)paramObject).K();
        continue;
        Method localMethod = this.d;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = ((cp)paramObject);
        localObject = dk.a(localMethod, null, arrayOfObject);
      }
    }
  }

  private Object c(Object paramObject)
  {
    cq localcq = a();
    if (localcq.m())
      if (localcq.f() == cr.h)
      {
        localObject = new ArrayList();
        Iterator localIterator = ((List)paramObject).iterator();
        while (localIterator.hasNext())
          ((List)localObject).add(d(localIterator.next()));
      }
    for (Object localObject = paramObject; ; localObject = d(paramObject))
      return localObject;
  }

  private Object d(Object paramObject)
  {
    cq localcq = a();
    switch (dm.a[localcq.f().ordinal()])
    {
    default:
    case 2:
    }
    for (Object localObject = paramObject; ; localObject = dk.a(this.e, paramObject, new Object[0]))
      return localObject;
  }

  public final cq a()
  {
    if (this.a == null)
      throw new IllegalStateException("getDescriptor() called before internalInit()");
    return this.a.a();
  }

  public final ev b()
  {
    return this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ed
 * JD-Core Version:    0.6.2
 */