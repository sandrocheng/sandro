package com.b.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class dh
{
  private static final dh c = new dh();
  private final fq a;
  private boolean b;

  private dh()
  {
    this.a = fq.a(0);
    c();
  }

  private dh(byte paramByte)
  {
    this.a = fq.a(16);
  }

  private static int a(gq paramgq, int paramInt, Object paramObject)
  {
    int i = n.p(paramInt);
    if (paramgq == gq.j)
      i *= 2;
    return i + b(paramgq, paramObject);
  }

  static int a(gq paramgq, boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 2; ; i = paramgq.b())
      return i;
  }

  public static dh a()
  {
    return new dh((byte)0);
  }

  public static Object a(m paramm, gq paramgq)
  {
    Object localObject;
    switch (di.b[paramgq.ordinal()])
    {
    default:
      throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
    case 1:
      localObject = Double.valueOf(paramm.b());
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
        localObject = Float.valueOf(Float.intBitsToFloat(paramm.t()));
        continue;
        localObject = Long.valueOf(paramm.e());
        continue;
        localObject = Long.valueOf(paramm.d());
        continue;
        localObject = Integer.valueOf(paramm.f());
        continue;
        localObject = Long.valueOf(paramm.g());
        continue;
        localObject = Integer.valueOf(paramm.h());
        continue;
        localObject = Boolean.valueOf(paramm.i());
        continue;
        localObject = paramm.j();
        continue;
        localObject = paramm.k();
        continue;
        localObject = Integer.valueOf(paramm.l());
        continue;
        localObject = Integer.valueOf(paramm.t());
        continue;
        localObject = Long.valueOf(paramm.u());
        continue;
        int i = paramm.r();
        localObject = Integer.valueOf(i >>> 1 ^ -(i & 0x1));
        continue;
        long l = paramm.s();
        localObject = Long.valueOf(l >>> 1 ^ -(l & 1L));
      }
    case 16:
      throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
    case 17:
      throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
    case 18:
    }
    throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
  }

  public static void a(dj paramdj, Object paramObject, n paramn)
  {
    gq localgq = paramdj.j();
    int i = paramdj.e();
    if (paramdj.m())
    {
      List localList = (List)paramObject;
      if (paramdj.n())
      {
        paramn.f(i, 2);
        int j = 0;
        Iterator localIterator2 = localList.iterator();
        while (localIterator2.hasNext())
          j += b(localgq, localIterator2.next());
        paramn.q(j);
        Iterator localIterator3 = localList.iterator();
        while (localIterator3.hasNext())
          a(paramn, localgq, localIterator3.next());
      }
      Iterator localIterator1 = localList.iterator();
      while (localIterator1.hasNext())
        a(paramn, localgq, i, localIterator1.next());
    }
    a(paramn, localgq, i, paramObject);
  }

  private static void a(gq paramgq, Object paramObject)
  {
    if (paramObject == null)
      throw new NullPointerException();
    int i = di.a[paramgq.a().ordinal()];
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
      bool = paramObject instanceof i;
      continue;
      bool = paramObject instanceof eq;
      continue;
      bool = paramObject instanceof ex;
    }
  }

  private static void a(n paramn, gq paramgq, int paramInt, Object paramObject)
  {
    if (paramgq == gq.j)
      paramn.a(paramInt, (ex)paramObject);
    while (true)
    {
      return;
      paramn.f(paramInt, a(paramgq, false));
      a(paramn, paramgq, paramObject);
    }
  }

  private static void a(n paramn, gq paramgq, Object paramObject)
  {
    switch (di.b[paramgq.ordinal()])
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
      paramn.b(((Double)paramObject).doubleValue());
      continue;
      paramn.a(((Float)paramObject).floatValue());
      continue;
      paramn.b(((Long)paramObject).longValue());
      continue;
      paramn.a(((Long)paramObject).longValue());
      continue;
      paramn.c(((Integer)paramObject).intValue());
      continue;
      paramn.c(((Long)paramObject).longValue());
      continue;
      paramn.d(((Integer)paramObject).intValue());
      continue;
      paramn.a(((Boolean)paramObject).booleanValue());
      continue;
      paramn.a((String)paramObject);
      continue;
      ((ex)paramObject).a(paramn);
      continue;
      paramn.b((ex)paramObject);
      continue;
      paramn.a((i)paramObject);
      continue;
      paramn.e(((Integer)paramObject).intValue());
      continue;
      paramn.g(((Integer)paramObject).intValue());
      continue;
      paramn.d(((Long)paramObject).longValue());
      continue;
      paramn.h(((Integer)paramObject).intValue());
      continue;
      paramn.e(((Long)paramObject).longValue());
      continue;
      paramn.f(((eq)paramObject).H_());
    }
  }

  private static void a(Map.Entry paramEntry, n paramn)
  {
    dj localdj = (dj)paramEntry.getKey();
    if ((localdj.g() == gv.i) && (!localdj.m()) && (!localdj.n()))
      paramn.c(((dj)paramEntry.getKey()).e(), (ex)paramEntry.getValue());
    while (true)
    {
      return;
      a(localdj, paramEntry.getValue(), paramn);
    }
  }

  private static boolean a(Map.Entry paramEntry)
  {
    dj localdj = (dj)paramEntry.getKey();
    boolean bool;
    if (localdj.g() == gv.i)
      if (localdj.m())
      {
        Iterator localIterator = ((List)paramEntry.getValue()).iterator();
        while (localIterator.hasNext())
          if (!((ex)localIterator.next()).a())
            bool = false;
      }
    while (true)
    {
      return bool;
      if (!((ex)paramEntry.getValue()).a())
        bool = false;
      else
        bool = true;
    }
  }

  private static int b(gq paramgq, Object paramObject)
  {
    int i;
    switch (di.b[paramgq.ordinal()])
    {
    default:
      throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
    case 1:
      ((Double)paramObject).doubleValue();
      i = 8;
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
      ((Float)paramObject).floatValue();
      i = 4;
      continue;
      i = n.i(((Long)paramObject).longValue());
      continue;
      i = n.i(((Long)paramObject).longValue());
      continue;
      i = n.l(((Integer)paramObject).intValue());
      continue;
      ((Long)paramObject).longValue();
      i = 8;
      continue;
      ((Integer)paramObject).intValue();
      i = 4;
      continue;
      ((Boolean)paramObject).booleanValue();
      i = 1;
      continue;
      i = n.b((String)paramObject);
      continue;
      i = ((ex)paramObject).b();
      continue;
      i = n.d((ex)paramObject);
      continue;
      i = n.b((i)paramObject);
      continue;
      i = n.r(((Integer)paramObject).intValue());
      continue;
      ((Integer)paramObject).intValue();
      i = 4;
      continue;
      ((Long)paramObject).longValue();
      i = 8;
      continue;
      i = n.r(n.s(((Integer)paramObject).intValue()));
      continue;
      i = n.i(n.j(((Long)paramObject).longValue()));
      continue;
      i = n.l(((eq)paramObject).H_());
    }
  }

  public static dh b()
  {
    return c;
  }

  private void b(Map.Entry paramEntry)
  {
    dj localdj = (dj)paramEntry.getKey();
    Object localObject1 = paramEntry.getValue();
    Object localObject3;
    if (localdj.m())
    {
      localObject3 = this.a.get(localdj);
      if (localObject3 == null)
        this.a.a(localdj, new ArrayList((List)localObject1));
    }
    while (true)
    {
      return;
      ((List)localObject3).addAll((List)localObject1);
      continue;
      if (localdj.g() == gv.i)
      {
        Object localObject2 = this.a.get(localdj);
        if (localObject2 == null)
          this.a.a(localdj, localObject1);
        else
          this.a.a(localdj, localdj.a(((ex)localObject2).F(), (ex)localObject1).M());
      }
      else
      {
        this.a.a(localdj, localObject1);
      }
    }
  }

  public static int c(dj paramdj, Object paramObject)
  {
    int i = 0;
    gq localgq = paramdj.j();
    int j = paramdj.e();
    int k;
    if (paramdj.m())
      if (paramdj.n())
      {
        Iterator localIterator2 = ((List)paramObject).iterator();
        while (localIterator2.hasNext())
          i += b(localgq, localIterator2.next());
        k = i + n.p(j) + n.r(i);
      }
    while (true)
    {
      return k;
      Iterator localIterator1 = ((List)paramObject).iterator();
      while (localIterator1.hasNext())
        i += a(localgq, j, localIterator1.next());
      k = i;
      continue;
      k = a(localgq, j, paramObject);
    }
  }

  private static int c(Map.Entry paramEntry)
  {
    dj localdj = (dj)paramEntry.getKey();
    if ((localdj.g() == gv.i) && (!localdj.m()) && (!localdj.n()));
    for (int i = n.f(((dj)paramEntry.getKey()).e(), (ex)paramEntry.getValue()); ; i = c(localdj, paramEntry.getValue()))
      return i;
  }

  public final Object a(dj paramdj, int paramInt)
  {
    if (!paramdj.m())
      throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
    Object localObject = this.a.get(paramdj);
    if (localObject == null)
      throw new IndexOutOfBoundsException();
    return ((List)localObject).get(paramInt);
  }

  public final void a(dh paramdh)
  {
    for (int i = 0; i < paramdh.a.c(); i++)
      b(paramdh.a.b(i));
    Iterator localIterator = paramdh.a.d().iterator();
    while (localIterator.hasNext())
      b((Map.Entry)localIterator.next());
  }

  public final void a(dj paramdj, int paramInt, Object paramObject)
  {
    if (!paramdj.m())
      throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
    Object localObject = this.a.get(paramdj);
    if (localObject == null)
      throw new IndexOutOfBoundsException();
    a(paramdj.j(), paramObject);
    ((List)localObject).set(paramInt, paramObject);
  }

  public final void a(dj paramdj, Object paramObject)
  {
    if (paramdj.m())
    {
      if (!(paramObject instanceof List))
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
      localObject1 = new ArrayList();
      ((List)localObject1).addAll((List)paramObject);
      Iterator localIterator = ((List)localObject1).iterator();
      while (localIterator.hasNext())
      {
        Object localObject2 = localIterator.next();
        a(paramdj.j(), localObject2);
      }
    }
    a(paramdj.j(), paramObject);
    Object localObject1 = paramObject;
    this.a.a(paramdj, localObject1);
  }

  public final void a(n paramn)
  {
    for (int i = 0; i < this.a.c(); i++)
    {
      Map.Entry localEntry2 = this.a.b(i);
      a((dj)localEntry2.getKey(), localEntry2.getValue(), paramn);
    }
    Iterator localIterator = this.a.d().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry1 = (Map.Entry)localIterator.next();
      a((dj)localEntry1.getKey(), localEntry1.getValue(), paramn);
    }
  }

  public final boolean a(dj paramdj)
  {
    if (paramdj.m())
      throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
    if (this.a.get(paramdj) != null);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final Object b(dj paramdj)
  {
    return this.a.get(paramdj);
  }

  public final void b(dj paramdj, Object paramObject)
  {
    if (!paramdj.m())
      throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
    a(paramdj.j(), paramObject);
    Object localObject1 = this.a.get(paramdj);
    Object localObject2;
    if (localObject1 == null)
    {
      localObject2 = new ArrayList();
      this.a.a(paramdj, localObject2);
    }
    while (true)
    {
      ((List)localObject2).add(paramObject);
      return;
      localObject2 = (List)localObject1;
    }
  }

  public final void b(n paramn)
  {
    for (int i = 0; i < this.a.c(); i++)
      a(this.a.b(i), paramn);
    Iterator localIterator = this.a.d().iterator();
    while (localIterator.hasNext())
      a((Map.Entry)localIterator.next(), paramn);
  }

  public final void c()
  {
    if (this.b);
    while (true)
    {
      return;
      this.a.a();
      this.b = true;
    }
  }

  public final void c(dj paramdj)
  {
    this.a.remove(paramdj);
  }

  public final int d(dj paramdj)
  {
    if (!paramdj.m())
      throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
    Object localObject = this.a.get(paramdj);
    if (localObject == null);
    for (int i = 0; ; i = ((List)localObject).size())
      return i;
  }

  public final boolean d()
  {
    return this.b;
  }

  public final dh e()
  {
    dh localdh = a();
    for (int i = 0; i < this.a.c(); i++)
    {
      Map.Entry localEntry2 = this.a.b(i);
      localdh.a((dj)localEntry2.getKey(), localEntry2.getValue());
    }
    Iterator localIterator = this.a.d().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry1 = (Map.Entry)localIterator.next();
      localdh.a((dj)localEntry1.getKey(), localEntry1.getValue());
    }
    return localdh;
  }

  public final void f()
  {
    this.a.clear();
  }

  public final Map g()
  {
    if (this.a.b());
    for (Object localObject = this.a; ; localObject = Collections.unmodifiableMap(this.a))
      return localObject;
  }

  public final Iterator h()
  {
    return this.a.entrySet().iterator();
  }

  public final boolean i()
  {
    int i = 0;
    boolean bool;
    if (i < this.a.c())
      if (!a(this.a.b(i)))
        bool = false;
    while (true)
    {
      return bool;
      i++;
      break;
      Iterator localIterator = this.a.d().iterator();
      while (true)
        if (localIterator.hasNext())
          if (!a((Map.Entry)localIterator.next()))
          {
            bool = false;
            break;
          }
      bool = true;
    }
  }

  public final int j()
  {
    int i = 0;
    int k;
    for (int j = 0; i < this.a.c(); j = k)
    {
      Map.Entry localEntry2 = this.a.b(i);
      k = j + c((dj)localEntry2.getKey(), localEntry2.getValue());
      i++;
    }
    Iterator localIterator = this.a.d().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry1 = (Map.Entry)localIterator.next();
      j += c((dj)localEntry1.getKey(), localEntry1.getValue());
    }
    return j;
  }

  public final int k()
  {
    int i = 0;
    int j = 0;
    while (i < this.a.c())
    {
      j += c(this.a.b(i));
      i++;
    }
    Iterator localIterator = this.a.d().iterator();
    while (localIterator.hasNext())
      j += c((Map.Entry)localIterator.next());
    return j;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.dh
 * JD-Core Version:    0.6.2
 */