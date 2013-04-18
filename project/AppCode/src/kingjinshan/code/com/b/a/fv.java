package com.b.a;

import java.util.Map.Entry;

final class fv
  implements Comparable, Map.Entry
{
  private final Comparable b;
  private Object c;

  fv(fq paramfq, Comparable paramComparable, Object paramObject)
  {
    this.b = paramComparable;
    this.c = paramObject;
  }

  fv(fq paramfq, Map.Entry paramEntry)
  {
    this(paramfq, (Map.Entry)paramEntry.getKey(), paramEntry.getValue());
  }

  private int a(fv paramfv)
  {
    return this.b.compareTo(paramfv.b);
  }

  private static boolean a(Object paramObject1, Object paramObject2)
  {
    boolean bool;
    if (paramObject1 == null)
      if (paramObject2 == null)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      bool = paramObject1.equals(paramObject2);
    }
  }

  public final Comparable a()
  {
    return this.b;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool;
    if (paramObject == this)
      bool = true;
    while (true)
    {
      return bool;
      if (!(paramObject instanceof Map.Entry))
      {
        bool = false;
      }
      else
      {
        Map.Entry localEntry = (Map.Entry)paramObject;
        if ((a(this.b, localEntry.getKey())) && (a(this.c, localEntry.getValue())))
          bool = true;
        else
          bool = false;
      }
    }
  }

  public final Object getValue()
  {
    return this.c;
  }

  public final int hashCode()
  {
    int i;
    if (this.b == null)
    {
      i = 0;
      if (this.c != null)
        break label33;
    }
    label33: for (int j = 0; ; j = this.c.hashCode())
    {
      return i ^ j;
      i = this.b.hashCode();
      break;
    }
  }

  public final Object setValue(Object paramObject)
  {
    fq.a(this.a);
    Object localObject = this.c;
    this.c = paramObject;
    return localObject;
  }

  public final String toString()
  {
    return this.b + "=" + this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.fv
 * JD-Core Version:    0.6.2
 */