package com.b.a;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class gj
{
  private static final gj a = gk.b().a();
  private List b;
  private List c;
  private List d;
  private List e;
  private List f;

  private gj(byte paramByte)
  {
  }

  public static gk a()
  {
    return gk.b();
  }

  public static gj b()
  {
    return a;
  }

  private static gk f(gj paramgj)
  {
    return gk.b().a(paramgj);
  }

  private Object[] h()
  {
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = this.b;
    arrayOfObject[1] = this.c;
    arrayOfObject[2] = this.d;
    arrayOfObject[3] = this.e;
    arrayOfObject[4] = this.f;
    return arrayOfObject;
  }

  public final int a(int paramInt)
  {
    Iterator localIterator1 = this.b.iterator();
    int i = 0;
    while (localIterator1.hasNext())
      i += n.d(paramInt, ((Long)localIterator1.next()).longValue());
    Iterator localIterator2 = this.c.iterator();
    while (localIterator2.hasNext())
    {
      ((Integer)localIterator2.next()).intValue();
      i += 4 + n.p(paramInt);
    }
    Iterator localIterator3 = this.d.iterator();
    while (localIterator3.hasNext())
    {
      ((Long)localIterator3.next()).longValue();
      i += 8 + n.p(paramInt);
    }
    Iterator localIterator4 = this.e.iterator();
    while (localIterator4.hasNext())
      i += n.c(paramInt, (i)localIterator4.next());
    Iterator localIterator5 = this.f.iterator();
    int j = i;
    while (localIterator5.hasNext())
      j += n.d(paramInt, (gg)localIterator5.next());
    return j;
  }

  public final void a(int paramInt, n paramn)
  {
    Iterator localIterator1 = this.b.iterator();
    while (localIterator1.hasNext())
      paramn.a(paramInt, ((Long)localIterator1.next()).longValue());
    Iterator localIterator2 = this.c.iterator();
    while (localIterator2.hasNext())
    {
      int i = ((Integer)localIterator2.next()).intValue();
      paramn.f(paramInt, 5);
      paramn.d(i);
    }
    Iterator localIterator3 = this.d.iterator();
    while (localIterator3.hasNext())
    {
      long l = ((Long)localIterator3.next()).longValue();
      paramn.f(paramInt, 1);
      paramn.c(l);
    }
    Iterator localIterator4 = this.e.iterator();
    while (localIterator4.hasNext())
      paramn.a(paramInt, (i)localIterator4.next());
    Iterator localIterator5 = this.f.iterator();
    while (localIterator5.hasNext())
      paramn.a(paramInt, (gg)localIterator5.next());
  }

  public final int b(int paramInt)
  {
    int i = 0;
    Iterator localIterator = this.e.iterator();
    while (localIterator.hasNext())
    {
      i locali = (i)localIterator.next();
      i += 2 * n.p(1) + n.k(paramInt) + n.c(3, locali);
    }
    return i;
  }

  public final void b(int paramInt, n paramn)
  {
    Iterator localIterator = this.e.iterator();
    while (localIterator.hasNext())
    {
      i locali = (i)localIterator.next();
      paramn.f(1, 3);
      paramn.b(paramInt);
      paramn.a(3, locali);
      paramn.f(1, 4);
    }
  }

  public final List c()
  {
    return this.b;
  }

  public final List d()
  {
    return this.c;
  }

  public final List e()
  {
    return this.d;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool;
    if (this == paramObject)
      bool = true;
    while (true)
    {
      return bool;
      if (!(paramObject instanceof gj))
        bool = false;
      else
        bool = Arrays.equals(h(), ((gj)paramObject).h());
    }
  }

  public final List f()
  {
    return this.e;
  }

  public final List g()
  {
    return this.f;
  }

  public final int hashCode()
  {
    return Arrays.hashCode(h());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.gj
 * JD-Core Version:    0.6.2
 */