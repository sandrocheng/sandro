package com.google.a;

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

class ad extends AbstractMap
{
  private final int a;
  private List b;
  private Map c;
  private boolean d;
  private volatile ak e;

  private ad(int paramInt)
  {
    this.a = paramInt;
    this.b = Collections.emptyList();
    this.c = Collections.emptyMap();
  }

  private int a(Comparable paramComparable)
  {
    int i = -1 + this.b.size();
    int j = 0;
    int i5;
    int k;
    if (i >= 0)
    {
      i5 = paramComparable.compareTo(((ai)this.b.get(i)).a());
      if (i5 > 0)
        k = -(i + 2);
    }
    while (true)
    {
      return k;
      j = 0;
      if (i5 == 0)
      {
        k = i;
      }
      else if (j <= i)
      {
        int m = (j + i) / 2;
        int n = paramComparable.compareTo(((ai)this.b.get(m)).a());
        int i4;
        int i3;
        if (n < 0)
        {
          i4 = m - 1;
          i3 = j;
        }
        while (true)
        {
          j = i3;
          i = i4;
          break;
          if (n <= 0)
            break label154;
          int i1 = m + 1;
          int i2 = i;
          i3 = i1;
          i4 = i2;
        }
        label154: k = m;
      }
      else
      {
        k = -(j + 1);
      }
    }
  }

  static ad a(int paramInt)
  {
    return new ae(paramInt);
  }

  private Object c(int paramInt)
  {
    e();
    Object localObject = ((ai)this.b.remove(paramInt)).getValue();
    if (!this.c.isEmpty())
    {
      Iterator localIterator = f().entrySet().iterator();
      this.b.add(new ai(this, (Map.Entry)localIterator.next()));
      localIterator.remove();
    }
    return localObject;
  }

  private void e()
  {
    if (this.d)
      throw new UnsupportedOperationException();
  }

  private SortedMap f()
  {
    e();
    if ((this.c.isEmpty()) && (!(this.c instanceof TreeMap)))
      this.c = new TreeMap();
    return (SortedMap)this.c;
  }

  private void g()
  {
    e();
    if ((this.b.isEmpty()) && (!(this.b instanceof ArrayList)))
      this.b = new ArrayList(this.a);
  }

  public Object a(Comparable paramComparable, Object paramObject)
  {
    e();
    int i = a(paramComparable);
    Object localObject;
    if (i >= 0)
      localObject = ((ai)this.b.get(i)).setValue(paramObject);
    while (true)
    {
      return localObject;
      g();
      int j = -(i + 1);
      if (j >= this.a)
      {
        localObject = f().put(paramComparable, paramObject);
      }
      else
      {
        if (this.b.size() == this.a)
        {
          ai localai = (ai)this.b.remove(-1 + this.a);
          f().put(localai.a(), localai.getValue());
        }
        this.b.add(j, new ai(this, paramComparable, paramObject));
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

  public Map.Entry b(int paramInt)
  {
    return (Map.Entry)this.b.get(paramInt);
  }

  public boolean b()
  {
    return this.d;
  }

  public int c()
  {
    return this.b.size();
  }

  public void clear()
  {
    e();
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

  public Iterable d()
  {
    if (this.c.isEmpty());
    for (Object localObject = af.a(); ; localObject = this.c.entrySet())
      return localObject;
  }

  public Set entrySet()
  {
    if (this.e == null)
      this.e = new ak(this, null);
    return this.e;
  }

  public Object get(Object paramObject)
  {
    Comparable localComparable = (Comparable)paramObject;
    int i = a(localComparable);
    if (i >= 0);
    for (Object localObject = ((ai)this.b.get(i)).getValue(); ; localObject = this.c.get(localComparable))
      return localObject;
  }

  public Object remove(Object paramObject)
  {
    e();
    Comparable localComparable = (Comparable)paramObject;
    int i = a(localComparable);
    Object localObject;
    if (i >= 0)
      localObject = c(i);
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

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.ad
 * JD-Core Version:    0.6.2
 */