package com.b.a;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class a extends d
  implements ev
{
  private int a = -1;

  private static int a(int paramInt, Map paramMap)
  {
    Iterator localIterator1 = paramMap.entrySet().iterator();
    int i = paramInt;
    while (localIterator1.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator1.next();
      cq localcq = (cq)localEntry.getKey();
      Object localObject = localEntry.getValue();
      int j = i * 37 + localcq.e();
      if (localcq.h() != cs.n)
      {
        i = j * 53 + localObject.hashCode();
      }
      else if (localcq.m())
      {
        List localList = (List)localObject;
        int k = j * 53;
        int m = 1;
        Iterator localIterator2 = localList.iterator();
        while (localIterator2.hasNext())
        {
          eq localeq = (eq)localIterator2.next();
          m = m * 31 + localeq.H_();
        }
        i = k + m;
      }
      else
      {
        i = j * 53 + ((eq)localObject).H_();
      }
    }
    return i;
  }

  private static int a(long paramLong)
  {
    return (int)(paramLong ^ paramLong >>> 32);
  }

  private static int a(eq parameq)
  {
    return parameq.H_();
  }

  private static int a(List paramList)
  {
    int i = 1;
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      eq localeq = (eq)localIterator.next();
      i = i * 31 + localeq.H_();
    }
    return i;
  }

  private static int a(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 1231; ; i = 1237)
      return i;
  }

  public void a(n paramn)
  {
    boolean bool = C().d().i();
    Iterator localIterator = a_().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      cq localcq = (cq)localEntry.getKey();
      Object localObject = localEntry.getValue();
      if ((bool) && (localcq.q()) && (localcq.h() == cs.k) && (!localcq.m()))
        paramn.c(localcq.e(), (ev)localObject);
      else
        dh.a(localcq, localObject, paramn);
    }
    gg localgg = b_();
    if (bool)
      localgg.b(paramn);
    while (true)
    {
      return;
      localgg.a(paramn);
    }
  }

  public boolean a()
  {
    Iterator localIterator1 = C().e().iterator();
    boolean bool;
    while (localIterator1.hasNext())
    {
      cq localcq2 = (cq)localIterator1.next();
      if ((localcq2.k()) && (!a(localcq2)))
        bool = false;
    }
    while (true)
    {
      return bool;
      label68: Iterator localIterator2 = a_().entrySet().iterator();
      while (true)
        if (localIterator2.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator2.next();
          cq localcq1 = (cq)localEntry.getKey();
          if (localcq1.f() == cr.i)
          {
            if (localcq1.m())
            {
              Iterator localIterator3 = ((List)localEntry.getValue()).iterator();
              if (!localIterator3.hasNext())
                continue;
              if (((ev)localIterator3.next()).a())
                break label68;
              bool = false;
              break;
            }
            if (!((ev)localEntry.getValue()).a())
            {
              bool = false;
              break;
            }
          }
        }
      bool = true;
    }
  }

  public int b()
  {
    int i = this.a;
    if (i != -1)
      return i;
    boolean bool = C().d().i();
    Iterator localIterator = a_().entrySet().iterator();
    int j = 0;
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      cq localcq = (cq)localEntry.getKey();
      Object localObject = localEntry.getValue();
      if ((bool) && (localcq.q()) && (localcq.h() == cs.k) && (!localcq.m()))
        j += n.f(localcq.e(), (ev)localObject);
      else
        j += dh.c(localcq, localObject);
    }
    gg localgg = b_();
    if (bool);
    for (i = j + localgg.h(); ; i = j + localgg.b())
    {
      this.a = i;
      break;
    }
  }

  public boolean equals(Object paramObject)
  {
    boolean bool;
    if (paramObject == this)
      bool = true;
    while (true)
    {
      return bool;
      if (!(paramObject instanceof ev))
      {
        bool = false;
      }
      else
      {
        ev localev = (ev)paramObject;
        if (C() != localev.C())
          bool = false;
        else if ((a_().equals(localev.a_())) && (b_().equals(localev.b_())))
          bool = true;
        else
          bool = false;
      }
    }
  }

  public int hashCode()
  {
    int i = 779 + C().hashCode();
    Iterator localIterator1 = a_().entrySet().iterator();
    int j = i;
    while (localIterator1.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator1.next();
      cq localcq = (cq)localEntry.getKey();
      Object localObject = localEntry.getValue();
      int k = j * 37 + localcq.e();
      if (localcq.h() != cs.n)
      {
        j = k * 53 + localObject.hashCode();
      }
      else if (localcq.m())
      {
        List localList = (List)localObject;
        int m = k * 53;
        int n = 1;
        Iterator localIterator2 = localList.iterator();
        while (localIterator2.hasNext())
        {
          eq localeq = (eq)localIterator2.next();
          n = n * 31 + localeq.H_();
        }
        j = m + n;
      }
      else
      {
        j = k * 53 + ((eq)localObject).H_();
      }
    }
    return j * 29 + b_().hashCode();
  }

  public final String toString()
  {
    return fy.a(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.a
 * JD-Core Version:    0.6.2
 */