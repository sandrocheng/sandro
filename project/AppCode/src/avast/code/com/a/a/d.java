package com.a.a;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public final class d extends a
{
  boolean b = false;
  private ArrayList c = new ArrayList();
  private HashMap d = new HashMap();
  private ArrayList e = new ArrayList();
  private ArrayList f = new ArrayList();
  private boolean g = true;
  private f h = null;
  private boolean i = false;
  private long j = 0L;
  private ak k = null;
  private long l = -1L;

  private void e()
  {
    if (this.g)
    {
      this.f.clear();
      ArrayList localArrayList1 = new ArrayList();
      int i3 = this.e.size();
      for (int i4 = 0; i4 < i3; i4++)
      {
        j localj4 = (j)this.e.get(i4);
        if ((localj4.b == null) || (localj4.b.size() == 0))
          localArrayList1.add(localj4);
      }
      ArrayList localArrayList2 = new ArrayList();
      while (localArrayList1.size() > 0)
      {
        int i5 = localArrayList1.size();
        for (int i6 = 0; i6 < i5; i6++)
        {
          j localj2 = (j)localArrayList1.get(i6);
          this.f.add(localj2);
          if (localj2.e != null)
          {
            int i7 = localj2.e.size();
            for (int i8 = 0; i8 < i7; i8++)
            {
              j localj3 = (j)localj2.e.get(i8);
              localj3.d.remove(localj2);
              if (localj3.d.size() == 0)
                localArrayList2.add(localj3);
            }
          }
        }
        localArrayList1.clear();
        localArrayList1.addAll(localArrayList2);
        localArrayList2.clear();
      }
      this.g = false;
      if (this.f.size() != this.e.size())
        throw new IllegalStateException("Circular dependencies cannot exist in AnimatorSet");
    }
    else
    {
      int m = this.e.size();
      for (int n = 0; n < m; n++)
      {
        j localj1 = (j)this.e.get(n);
        if ((localj1.b != null) && (localj1.b.size() > 0))
        {
          int i1 = localj1.b.size();
          for (int i2 = 0; i2 < i1; i2++)
          {
            h localh = (h)localj1.b.get(i2);
            if (localj1.d == null)
              localj1.d = new ArrayList();
            if (!localj1.d.contains(localh.a))
              localj1.d.add(localh.a);
          }
        }
        localj1.f = false;
      }
    }
  }

  public g a(a parama)
  {
    if (parama != null)
      this.g = true;
    for (g localg = new g(this, parama); ; localg = null)
      return localg;
  }

  public void a()
  {
    int m = 0;
    this.b = false;
    this.i = true;
    e();
    int n = this.f.size();
    for (int i1 = 0; i1 < n; i1++)
    {
      j localj3 = (j)this.f.get(i1);
      ArrayList localArrayList4 = localj3.a.b();
      if ((localArrayList4 != null) && (localArrayList4.size() > 0))
      {
        Iterator localIterator2 = new ArrayList(localArrayList4).iterator();
        while (localIterator2.hasNext())
        {
          b localb = (b)localIterator2.next();
          if (((localb instanceof i)) || ((localb instanceof f)))
            localj3.a.b(localb);
        }
      }
    }
    ArrayList localArrayList1 = new ArrayList();
    int i2 = 0;
    if (i2 < n)
    {
      j localj2 = (j)this.f.get(i2);
      if (this.h == null)
        this.h = new f(this, this);
      if ((localj2.b == null) || (localj2.b.size() == 0))
        localArrayList1.add(localj2);
      while (true)
      {
        localj2.a.a(this.h);
        i2++;
        break;
        int i6 = localj2.b.size();
        for (int i7 = 0; i7 < i6; i7++)
        {
          h localh = (h)localj2.b.get(i7);
          localh.a.a.a(new i(this, localj2, localh.b));
        }
        localj2.c = ((ArrayList)localj2.b.clone());
      }
    }
    if (this.j <= 0L)
    {
      Iterator localIterator1 = localArrayList1.iterator();
      while (localIterator1.hasNext())
      {
        j localj1 = (j)localIterator1.next();
        localj1.a.a();
        this.c.add(localj1.a);
      }
    }
    this.k = ak.b(new float[] { 0.0F, 1.0F });
    this.k.b(this.j);
    this.k.a(new e(this, localArrayList1));
    this.k.a();
    if (this.a != null)
    {
      ArrayList localArrayList3 = (ArrayList)this.a.clone();
      int i4 = localArrayList3.size();
      for (int i5 = 0; i5 < i4; i5++)
        ((b)localArrayList3.get(i5)).a(this);
    }
    if ((this.e.size() == 0) && (this.j == 0L))
    {
      this.i = false;
      if (this.a != null)
      {
        ArrayList localArrayList2 = (ArrayList)this.a.clone();
        int i3 = localArrayList2.size();
        while (m < i3)
        {
          ((b)localArrayList2.get(m)).b(this);
          m++;
        }
      }
    }
  }

  public d d()
  {
    d locald = (d)super.c();
    locald.g = true;
    locald.b = false;
    locald.i = false;
    locald.c = new ArrayList();
    locald.d = new HashMap();
    locald.e = new ArrayList();
    locald.f = new ArrayList();
    HashMap localHashMap = new HashMap();
    Iterator localIterator1 = this.e.iterator();
    while (localIterator1.hasNext())
    {
      j localj3 = (j)localIterator1.next();
      j localj4 = localj3.a();
      localHashMap.put(localj3, localj4);
      locald.e.add(localj4);
      locald.d.put(localj4.a, localj4);
      localj4.b = null;
      localj4.c = null;
      localj4.e = null;
      localj4.d = null;
      ArrayList localArrayList1 = localj4.a.b();
      if (localArrayList1 != null)
      {
        Iterator localIterator4 = localArrayList1.iterator();
        ArrayList localArrayList2 = null;
        while (localIterator4.hasNext())
        {
          b localb = (b)localIterator4.next();
          if ((localb instanceof f))
          {
            if (localArrayList2 == null)
              localArrayList2 = new ArrayList();
            localArrayList2.add(localb);
          }
        }
        if (localArrayList2 != null)
        {
          Iterator localIterator5 = localArrayList2.iterator();
          while (localIterator5.hasNext())
            localArrayList1.remove((b)localIterator5.next());
        }
      }
    }
    Iterator localIterator2 = this.e.iterator();
    while (localIterator2.hasNext())
    {
      j localj1 = (j)localIterator2.next();
      j localj2 = (j)localHashMap.get(localj1);
      if (localj1.b != null)
      {
        Iterator localIterator3 = localj1.b.iterator();
        while (localIterator3.hasNext())
        {
          h localh = (h)localIterator3.next();
          localj2.a(new h((j)localHashMap.get(localh.a), localh.b));
        }
      }
    }
    return locald;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.a.a.d
 * JD-Core Version:    0.6.2
 */