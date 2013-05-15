package com.google.a;

import java.util.Map.Entry;

class ai
  implements Comparable, Map.Entry
{
  private final Comparable b;
  private Object c;

  ai(ad paramad, Comparable paramComparable, Object paramObject)
  {
    this.b = paramComparable;
    this.c = paramObject;
  }

  ai(ad paramad, Map.Entry paramEntry)
  {
    this(paramad, (Map.Entry)paramEntry.getKey(), paramEntry.getValue());
  }

  private boolean a(Object paramObject1, Object paramObject2)
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

  public int a(ai paramai)
  {
    return a().compareTo(paramai.a());
  }

  public Comparable a()
  {
    return this.b;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (paramObject == this);
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
        if ((!a(this.b, localEntry.getKey())) || (!a(this.c, localEntry.getValue())))
          bool = false;
      }
    }
  }

  public Object getValue()
  {
    return this.c;
  }

  public int hashCode()
  {
    int i;
    int j;
    if (this.b == null)
    {
      i = 0;
      Object localObject = this.c;
      j = 0;
      if (localObject != null)
        break label35;
    }
    while (true)
    {
      return i ^ j;
      i = this.b.hashCode();
      break;
      label35: j = this.c.hashCode();
    }
  }

  public Object setValue(Object paramObject)
  {
    ad.a(this.a);
    Object localObject = this.c;
    this.c = paramObject;
    return localObject;
  }

  public String toString()
  {
    return this.b + "=" + this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.ai
 * JD-Core Version:    0.6.2
 */