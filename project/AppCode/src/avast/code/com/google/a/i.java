package com.google.a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

final class i
{
  private static final i c = new i(true);
  private final ad a;
  private boolean b;

  private i()
  {
    this.a = ad.a(16);
  }

  private i(boolean paramBoolean)
  {
    this.a = ad.a(0);
    c();
  }

  private static int a(ar paramar, int paramInt, Object paramObject)
  {
    int i = e.n(paramInt);
    if (paramar == ar.j)
      i *= 2;
    return i + b(paramar, paramObject);
  }

  static int a(ar paramar, boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 2; ; i = paramar.b())
      return i;
  }

  public static i a()
  {
    return new i();
  }

  public static Object a(d paramd, ar paramar)
  {
    Object localObject;
    switch (j.b[paramar.ordinal()])
    {
    default:
      throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
    case 1:
      localObject = Double.valueOf(paramd.c());
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
      while (true)
      {
        return localObject;
        localObject = Float.valueOf(paramd.d());
        continue;
        localObject = Long.valueOf(paramd.f());
        continue;
        localObject = Long.valueOf(paramd.e());
        continue;
        localObject = Integer.valueOf(paramd.g());
        continue;
        localObject = Long.valueOf(paramd.h());
        continue;
        localObject = Integer.valueOf(paramd.i());
        continue;
        localObject = Boolean.valueOf(paramd.j());
        continue;
        localObject = paramd.k();
        continue;
        localObject = paramd.l();
        continue;
        localObject = Integer.valueOf(paramd.m());
        continue;
        localObject = Integer.valueOf(paramd.o());
        continue;
        localObject = Long.valueOf(paramd.p());
        continue;
        localObject = Integer.valueOf(paramd.q());
        continue;
        localObject = Long.valueOf(paramd.r());
      }
    case 16:
      throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
    case 17:
      throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
    case 18:
    }
    throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
  }

  private static void a(ar paramar, Object paramObject)
  {
    if (paramObject == null)
      throw new NullPointerException();
    int i = j.a[paramar.a().ordinal()];
    boolean bool = false;
    switch (i)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    }
    while (!bool)
    {
      throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
      bool = paramObject instanceof Integer;
      continue;
      bool = paramObject instanceof Long;
      continue;
      bool = paramObject instanceof Float;
      continue;
      bool = paramObject instanceof Double;
      continue;
      bool = paramObject instanceof Boolean;
      continue;
      bool = paramObject instanceof String;
      continue;
      bool = paramObject instanceof c;
      continue;
      bool = paramObject instanceof v;
      continue;
      bool = paramObject instanceof aa;
    }
  }

  private static void a(e parame, ar paramar, int paramInt, Object paramObject)
  {
    if (paramar == ar.j)
      parame.a(paramInt, (aa)paramObject);
    while (true)
    {
      return;
      parame.i(paramInt, a(paramar, false));
      a(parame, paramar, paramObject);
    }
  }

  private static void a(e parame, ar paramar, Object paramObject)
  {
    switch (j.b[paramar.ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 16:
    case 17:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 18:
    }
    while (true)
    {
      return;
      parame.a(((Double)paramObject).doubleValue());
      continue;
      parame.a(((Float)paramObject).floatValue());
      continue;
      parame.b(((Long)paramObject).longValue());
      continue;
      parame.a(((Long)paramObject).longValue());
      continue;
      parame.a(((Integer)paramObject).intValue());
      continue;
      parame.c(((Long)paramObject).longValue());
      continue;
      parame.b(((Integer)paramObject).intValue());
      continue;
      parame.a(((Boolean)paramObject).booleanValue());
      continue;
      parame.a((String)paramObject);
      continue;
      parame.a((aa)paramObject);
      continue;
      parame.b((aa)paramObject);
      continue;
      parame.a((c)paramObject);
      continue;
      parame.c(((Integer)paramObject).intValue());
      continue;
      parame.e(((Integer)paramObject).intValue());
      continue;
      parame.d(((Long)paramObject).longValue());
      continue;
      parame.f(((Integer)paramObject).intValue());
      continue;
      parame.e(((Long)paramObject).longValue());
      continue;
      parame.d(((v)paramObject).a());
    }
  }

  public static void a(k paramk, Object paramObject, e parame)
  {
    ar localar = paramk.b();
    int i = paramk.a();
    if (paramk.d())
    {
      List localList = (List)paramObject;
      if (paramk.e())
      {
        parame.i(i, 2);
        int j = 0;
        Iterator localIterator2 = localList.iterator();
        while (localIterator2.hasNext())
          j += b(localar, localIterator2.next());
        parame.o(j);
        Iterator localIterator3 = localList.iterator();
        while (localIterator3.hasNext())
          a(parame, localar, localIterator3.next());
      }
      Iterator localIterator1 = localList.iterator();
      while (localIterator1.hasNext())
        a(parame, localar, i, localIterator1.next());
    }
    a(parame, localar, i, paramObject);
  }

  private boolean a(Map.Entry paramEntry)
  {
    k localk = (k)paramEntry.getKey();
    boolean bool;
    if (localk.c() == aw.i)
      if (localk.d())
      {
        Iterator localIterator = ((List)paramEntry.getValue()).iterator();
        while (localIterator.hasNext())
          if (!((aa)localIterator.next()).v())
            bool = false;
      }
    while (true)
    {
      return bool;
      if (!((aa)paramEntry.getValue()).v())
        bool = false;
      else
        bool = true;
    }
  }

  private static int b(ar paramar, Object paramObject)
  {
    int i;
    switch (j.b[paramar.ordinal()])
    {
    default:
      throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
    case 1:
      i = e.b(((Double)paramObject).doubleValue());
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 16:
    case 17:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 18:
    }
    while (true)
    {
      return i;
      i = e.b(((Float)paramObject).floatValue());
      continue;
      i = e.g(((Long)paramObject).longValue());
      continue;
      i = e.f(((Long)paramObject).longValue());
      continue;
      i = e.g(((Integer)paramObject).intValue());
      continue;
      i = e.h(((Long)paramObject).longValue());
      continue;
      i = e.h(((Integer)paramObject).intValue());
      continue;
      i = e.b(((Boolean)paramObject).booleanValue());
      continue;
      i = e.b((String)paramObject);
      continue;
      i = e.c((aa)paramObject);
      continue;
      i = e.d((aa)paramObject);
      continue;
      i = e.b((c)paramObject);
      continue;
      i = e.i(((Integer)paramObject).intValue());
      continue;
      i = e.k(((Integer)paramObject).intValue());
      continue;
      i = e.i(((Long)paramObject).longValue());
      continue;
      i = e.l(((Integer)paramObject).intValue());
      continue;
      i = e.j(((Long)paramObject).longValue());
      continue;
      i = e.j(((v)paramObject).a());
    }
  }

  public static i b()
  {
    return c;
  }

  private void b(Map.Entry paramEntry)
  {
    k localk = (k)paramEntry.getKey();
    Object localObject1 = paramEntry.getValue();
    Object localObject3;
    if (localk.d())
    {
      localObject3 = this.a.get(localk);
      if (localObject3 == null)
        this.a.a(localk, new ArrayList((List)localObject1));
    }
    while (true)
    {
      return;
      ((List)localObject3).addAll((List)localObject1);
      continue;
      if (localk.c() == aw.i)
      {
        Object localObject2 = this.a.get(localk);
        if (localObject2 == null)
          this.a.a(localk, localObject1);
        else
          this.a.a(localk, localk.a(((aa)localObject2).A(), (aa)localObject1).j());
      }
      else
      {
        this.a.a(localk, localObject1);
      }
    }
  }

  public static int c(k paramk, Object paramObject)
  {
    int i = 0;
    ar localar = paramk.b();
    int j = paramk.a();
    if (paramk.d())
      if (paramk.e())
      {
        Iterator localIterator2 = ((List)paramObject).iterator();
        while (localIterator2.hasNext())
          i += b(localar, localIterator2.next());
        i = i + e.n(j) + e.p(i);
      }
    while (true)
    {
      return i;
      Iterator localIterator1 = ((List)paramObject).iterator();
      while (localIterator1.hasNext())
        i += a(localar, j, localIterator1.next());
      continue;
      i = a(localar, j, paramObject);
    }
  }

  public Object a(k paramk)
  {
    return this.a.get(paramk);
  }

  public void a(i parami)
  {
    for (int i = 0; i < parami.a.c(); i++)
      b(parami.a.b(i));
    Iterator localIterator = parami.a.d().iterator();
    while (localIterator.hasNext())
      b((Map.Entry)localIterator.next());
  }

  public void a(k paramk, Object paramObject)
  {
    if (paramk.d())
    {
      if (!(paramObject instanceof List))
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
      ArrayList localArrayList = new ArrayList();
      localArrayList.addAll((List)paramObject);
      Iterator localIterator = localArrayList.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = localIterator.next();
        a(paramk.b(), localObject);
      }
      paramObject = localArrayList;
    }
    while (true)
    {
      this.a.a(paramk, paramObject);
      return;
      a(paramk.b(), paramObject);
    }
  }

  public void b(k paramk, Object paramObject)
  {
    if (!paramk.d())
      throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
    a(paramk.b(), paramObject);
    Object localObject1 = this.a.get(paramk);
    Object localObject2;
    if (localObject1 == null)
    {
      localObject2 = new ArrayList();
      this.a.a(paramk, localObject2);
    }
    while (true)
    {
      ((List)localObject2).add(paramObject);
      return;
      localObject2 = (List)localObject1;
    }
  }

  public void c()
  {
    if (this.b);
    while (true)
    {
      return;
      this.a.a();
      this.b = true;
    }
  }

  public i d()
  {
    i locali = a();
    for (int i = 0; i < this.a.c(); i++)
    {
      Map.Entry localEntry2 = this.a.b(i);
      locali.a((k)localEntry2.getKey(), localEntry2.getValue());
    }
    Iterator localIterator = this.a.d().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry1 = (Map.Entry)localIterator.next();
      locali.a((k)localEntry1.getKey(), localEntry1.getValue());
    }
    return locali;
  }

  public Iterator e()
  {
    return this.a.entrySet().iterator();
  }

  public boolean f()
  {
    int i = 0;
    boolean bool1;
    if (i < this.a.c())
    {
      boolean bool2 = a(this.a.b(i));
      bool1 = false;
      if (bool2);
    }
    while (true)
    {
      return bool1;
      i++;
      break;
      Iterator localIterator = this.a.d().iterator();
      while (true)
        if (localIterator.hasNext())
          if (!a((Map.Entry)localIterator.next()))
          {
            bool1 = false;
            break;
          }
      bool1 = true;
    }
  }

  public int g()
  {
    int i = 0;
    int j = 0;
    while (i < this.a.c())
    {
      Map.Entry localEntry2 = this.a.b(i);
      j += c((k)localEntry2.getKey(), localEntry2.getValue());
      i++;
    }
    Iterator localIterator = this.a.d().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry1 = (Map.Entry)localIterator.next();
      j += c((k)localEntry1.getKey(), localEntry1.getValue());
    }
    return j;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.i
 * JD-Core Version:    0.6.2
 */