package com.b.a;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public abstract class dk extends a
  implements Serializable
{
  private static final long a = 1L;
  protected static boolean j = false;
  private final gg b;

  protected dk()
  {
    this.b = gg.f();
  }

  protected dk(dn paramdn)
  {
    this.b = paramdn.b_();
  }

  private static ed a(ev paramev1, int paramInt, Class paramClass, ev paramev2)
  {
    return new ed(new dl(paramev1, paramInt), paramClass, paramev2);
  }

  private static ed a(Class paramClass, ev paramev)
  {
    return new ed(null, paramClass, paramev);
  }

  private static Object b(Method paramMethod, Object paramObject, Object[] paramArrayOfObject)
  {
    try
    {
      Object localObject = paramMethod.invoke(paramObject, paramArrayOfObject);
      return localObject;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Throwable localThrowable = localInvocationTargetException.getCause();
      if ((localThrowable instanceof RuntimeException))
        throw ((RuntimeException)localThrowable);
      if ((localThrowable instanceof Error))
        throw ((Error)localThrowable);
      throw new RuntimeException("Unexpected exception thrown by generated accessor method.", localThrowable);
    }
  }

  private static Method b(Class paramClass, String paramString, Class[] paramArrayOfClass)
  {
    try
    {
      Method localMethod = paramClass.getMethod(paramString, paramArrayOfClass);
      return localMethod;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      throw new RuntimeException("Generated message class \"" + paramClass.getName() + "\" missing method \"" + paramString + "\".", localNoSuchMethodException);
    }
  }

  private static void h()
  {
    j = true;
  }

  private Map i()
  {
    TreeMap localTreeMap = new TreeMap();
    Iterator localIterator = dv.a(g()).e().iterator();
    while (localIterator.hasNext())
    {
      cq localcq = (cq)localIterator.next();
      if (localcq.m())
      {
        List localList = (List)b(localcq);
        if (!localList.isEmpty())
          localTreeMap.put(localcq, localList);
      }
      else if (a(localcq))
      {
        localTreeMap.put(localcq, b(localcq));
      }
    }
    return localTreeMap;
  }

  protected Object B()
  {
    return new eo(this);
  }

  public final cj C()
  {
    return dv.a(g());
  }

  protected abstract ew a(dp paramdp);

  public Object a(cq paramcq, int paramInt)
  {
    return dv.a(g(), paramcq).a(this, paramInt);
  }

  public boolean a()
  {
    Iterator localIterator1 = dv.a(g()).e().iterator();
    break label86;
    label16: cq localcq;
    boolean bool;
    if (localIterator1.hasNext())
    {
      localcq = (cq)localIterator1.next();
      if ((localcq.k()) && (!a(localcq)))
        bool = false;
    }
    while (true)
    {
      return bool;
      if (localcq.f() != cr.i)
        break label16;
      if (localcq.m())
      {
        Iterator localIterator2 = ((List)b(localcq)).iterator();
        label86: if (!localIterator2.hasNext())
          break label16;
        if (((ev)localIterator2.next()).a())
          break;
        bool = false;
        continue;
      }
      if ((!a(localcq)) || (((ev)b(localcq)).a()))
        break label16;
      bool = false;
      continue;
      bool = true;
    }
  }

  public boolean a(cq paramcq)
  {
    return dv.a(g(), paramcq).b(this);
  }

  public Map a_()
  {
    return Collections.unmodifiableMap(i());
  }

  public Object b(cq paramcq)
  {
    return dv.a(g(), paramcq).a(this);
  }

  public final gg b_()
  {
    return this.b;
  }

  public int c(cq paramcq)
  {
    return dv.a(g(), paramcq).c(this);
  }

  protected abstract dv g();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.dk
 * JD-Core Version:    0.6.2
 */