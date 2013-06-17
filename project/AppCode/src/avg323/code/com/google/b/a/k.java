package com.google.b.a;

import java.util.Map.Entry;

class k
  implements Map.Entry
{
  final String a;
  Object b;
  final int c;
  k d;
  k e;
  k f;

  k()
  {
    this(null, null, 0, null, null, null);
    this.f = this;
    this.e = this;
  }

  k(String paramString, Object paramObject, int paramInt, k paramk1, k paramk2, k paramk3)
  {
    this.a = paramString;
    this.b = paramObject;
    this.c = paramInt;
    this.d = paramk1;
    this.e = paramk2;
    this.f = paramk3;
  }

  public final String a()
  {
    return this.a;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Map.Entry;
    boolean bool2 = false;
    if (!bool1);
    Object localObject;
    do
    {
      boolean bool3;
      do
      {
        return bool2;
        Map.Entry localEntry = (Map.Entry)paramObject;
        localObject = localEntry.getValue();
        bool3 = this.a.equals(localEntry.getKey());
        bool2 = false;
      }
      while (!bool3);
      if (this.b != null)
        break;
      bool2 = false;
    }
    while (localObject != null);
    while (true)
    {
      bool2 = true;
      break;
      boolean bool4 = this.b.equals(localObject);
      bool2 = false;
      if (!bool4)
        break;
    }
  }

  public final Object getValue()
  {
    return this.b;
  }

  public final int hashCode()
  {
    int i;
    int j;
    if (this.a == null)
    {
      i = 0;
      Object localObject = this.b;
      j = 0;
      if (localObject != null)
        break label35;
    }
    while (true)
    {
      return i ^ j;
      i = this.a.hashCode();
      break;
      label35: j = this.b.hashCode();
    }
  }

  public final Object setValue(Object paramObject)
  {
    Object localObject = this.b;
    this.b = paramObject;
    return localObject;
  }

  public final String toString()
  {
    return this.a + "=" + this.b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.b.a.k
 * JD-Core Version:    0.6.2
 */