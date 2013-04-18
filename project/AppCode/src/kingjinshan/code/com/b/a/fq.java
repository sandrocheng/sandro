package com.b.a;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

class fq extends AbstractMap
{
  private final int a;
  private List b;
  private Map c;
  private boolean d;
  private volatile fx e;

  private fq(int paramInt, byte paramByte)
  {
    this.a = paramInt;
    this.b = Collections.emptyList();
    this.c = Collections.emptyMap();
  }

  private int a(Comparable paramComparable)
  {
    int i = this.b.size() - 1;
    int m;
    if (i >= 0)
    {
      int i2 = paramComparable.compareTo(((fv)this.b.get(i)).a());
      if (i2 > 0);
      for (m = -(i + 2); ; m = i)
      {
        return m;
        if (i2 != 0)
          break;
      }
    }
    while (true)
    {
      if (k <= j)
      {
        int n = (k + j) / 2;
        int i1 = paramComparable.compareTo(((fv)this.b.get(n)).a());
        if (i1 < 0)
        {
          j = n - 1;
          continue;
        }
        if (i1 > 0)
        {
          k = n + 1;
          continue;
        }
        m = n;
        break;
      }
      m = -(k + 1);
      break;
      int j = i;
      int k = 0;
    }
  }

  static fq a(int paramInt)
  {
    return new fr(paramInt);
  }

  private static fq c(int paramInt)
  {
    return new fq(paramInt, (byte)0);
  }

  private Object d(int paramInt)
  {
    f();
    Object localObject = ((fv)this.b.remove(paramInt)).getValue();
    if (!this.c.isEmpty())
    {
      Iterator localIterator = g().entrySet().iterator();
      this.b.add(new fv(this, (Map.Entry)localIterator.next()));
      localIterator.remove();
    }
    return localObject;
  }

  private int e()
  {
    return this.c.size();
  }

  private void f()
  {
    if (this.d)
      throw new UnsupportedOperationException();
  }

  private SortedMap g()
  {
    f();
    if ((this.c.isEmpty()) && (!(this.c instanceof TreeMap)))
      this.c = new TreeMap();
    return (SortedMap)this.c;
  }

  private void h()
  {
    f();
    if ((this.b.isEmpty()) && (!(this.b instanceof ArrayList)))
      this.b = new ArrayList(this.a);
  }

  public final Object a(Comparable paramComparable, Object paramObject)
  {
    f();
    int i = a(paramComparable);
    Object localObject;
    if (i >= 0)
      localObject = ((fv)this.b.get(i)).setValue(paramObject);
    while (true)
    {
      return localObject;
      f();
      if ((this.b.isEmpty()) && (!(this.b instanceof ArrayList)))
        this.b = new ArrayList(this.a);
      int j = -(i + 1);
      if (j >= this.a)
      {
        localObject = g().put(paramComparable, paramObject);
      }
      else
      {
        if (this.b.size() == this.a)
        {
          fv localfv = (fv)this.b.remove(this.a - 1);
          g().put(localfv.a(), localfv.getValue());
        }
        this.b.add(j, new fv(this, paramComparable, paramObject));
        localObject = null;
      }
    }
  }

  public void a()
  {
    if (!this.d)
      if (!this.c.isEmpty())
        break label34;
    label34: for (Map localMap = Collections.emptyMap(); ; localMap = Collections.unmodifiableMap(this.c))
    {
      this.c = localMap;
      this.d = true;
      return;
    }
  }

  public final Map.Entry b(int paramInt)
  {
    return (Map.Entry)this.b.get(paramInt);
  }

  public final boolean b()
  {
    return this.d;
  }

  public final int c()
  {
    return this.b.size();
  }

  public void clear()
  {
    f();
    if (!this.b.isEmpty())
      this.b.clear();
    if (!this.c.isEmpty())
      this.c.clear();
  }

  public boolean containsKey(Object paramObject)
  {
    Comparable localComparable = (Comparable)paramObject;
    if ((a(localComparable) >= 0) || (this.c.containsKey(localComparable)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final Iterable d()
  {
    if (this.c.isEmpty());
    for (Object localObject = fs.a(); ; localObject = this.c.entrySet())
      return localObject;
  }

  public Set entrySet()
  {
    if (this.e == null)
      this.e = new fx(this);
    return this.e;
  }

  public Object get(Object paramObject)
  {
    Comparable localComparable = (Comparable)paramObject;
    int i = a(localComparable);
    if (i >= 0);
    for (Object localObject = ((fv)this.b.get(i)).getValue(); ; localObject = this.c.get(localComparable))
      return localObject;
  }

  public Object remove(Object paramObject)
  {
    f();
    Comparable localComparable = (Comparable)paramObject;
    int i = a(localComparable);
    Object localObject;
    if (i >= 0)
      localObject = d(i);
    while (true)
    {
      return localObject;
      if (this.c.isEmpty())
        localObject = null;
      else
        localObject = this.c.remove(localComparable);
    }
  }

  public int size()
  {
    return this.b.size() + this.c.size();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.fq
 * JD-Core Version:    0.6.2
 */