package com.google.b.a;

import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;

public final class e extends AbstractMap
{
  private static final Map.Entry[] b = new k[2];
  private static final int i = new Random().nextInt();
  private k a = new k();
  private k[] c = (k[])b;
  private int d;
  private int e = -1;
  private Set f;
  private Set g;
  private Collection h;

  private k a(String paramString)
  {
    Object localObject = null;
    if (paramString == null)
      return localObject;
    int j = b(paramString);
    k[] arrayOfk = this.c;
    for (k localk = arrayOfk[(j & -1 + arrayOfk.length)]; ; localk = localk.d)
    {
      localObject = null;
      if (localk == null)
        break;
      String str = localk.a;
      if ((str == paramString) || ((localk.c == j) && (paramString.equals(str))))
      {
        localObject = localk;
        break;
      }
    }
  }

  private void a(k paramk)
  {
    paramk.f.e = paramk.e;
    paramk.e.f = paramk.f;
    paramk.f = null;
    paramk.e = null;
  }

  private void a(String paramString, Object paramObject, int paramInt1, int paramInt2)
  {
    k localk1 = this.a;
    k localk2 = localk1.f;
    k localk3 = new k(paramString, paramObject, paramInt1, this.c[paramInt2], localk1, localk2);
    k[] arrayOfk = this.c;
    localk1.f = localk3;
    localk2.e = localk3;
    arrayOfk[paramInt2] = localk3;
  }

  private boolean a(Object paramObject1, Object paramObject2)
  {
    boolean bool;
    if ((paramObject1 == null) || (!(paramObject1 instanceof String)))
      bool = false;
    while (true)
    {
      return bool;
      int j = b((String)paramObject1);
      k[] arrayOfk = this.c;
      int k = j & -1 + arrayOfk.length;
      Object localObject1 = arrayOfk[k];
      Object localObject3;
      for (Object localObject2 = null; ; localObject2 = localObject3)
      {
        if (localObject1 == null)
          break label177;
        if ((((k)localObject1).c == j) && (paramObject1.equals(((k)localObject1).a)))
        {
          if (paramObject2 == null)
          {
            if (((k)localObject1).b == null);
          }
          else
            while (!paramObject2.equals(((k)localObject1).b))
            {
              bool = false;
              break;
            }
          if (localObject2 == null)
            arrayOfk[k] = ((k)localObject1).d;
          while (true)
          {
            this.d = (-1 + this.d);
            a((k)localObject1);
            bool = true;
            break;
            localObject2.d = ((k)localObject1).d;
          }
        }
        k localk = ((k)localObject1).d;
        localObject3 = localObject1;
        localObject1 = localk;
      }
      label177: bool = false;
    }
  }

  private k[] a()
  {
    k[] arrayOfk1 = this.c;
    int j = arrayOfk1.length;
    if (j == 1073741824);
    k[] arrayOfk2;
    for (Object localObject1 = arrayOfk1; ; localObject1 = arrayOfk2)
    {
      return localObject1;
      arrayOfk2 = a(j * 2);
      if (this.d != 0)
        break;
    }
    int k = 0;
    label61: int m;
    Object localObject2;
    Object localObject3;
    Object localObject4;
    label103: int n;
    while (true)
      if (k < j)
      {
        k localk1 = arrayOfk1[k];
        if (localk1 == null)
        {
          k++;
        }
        else
        {
          m = j & localk1.c;
          arrayOfk2[(k | m)] = localk1;
          k localk2 = localk1.d;
          localObject2 = null;
          localObject3 = localk1;
          localObject4 = localk2;
          if (localObject4 != null)
          {
            n = j & ((k)localObject4).c;
            if (n == m)
              break label198;
            if (localObject2 == null)
              arrayOfk2[(k | n)] = localObject4;
          }
        }
      }
    label138: for (int i1 = n; ; i1 = m)
    {
      k localk3 = ((k)localObject4).d;
      m = i1;
      localObject2 = localObject3;
      localObject3 = localObject4;
      localObject4 = localk3;
      break label103;
      localObject2.d = ((k)localObject4);
      break label138;
      if (localObject2 == null)
        break label61;
      localObject2.d = null;
      break label61;
      localObject1 = arrayOfk2;
      break;
      label198: localObject3 = localObject2;
    }
  }

  private k[] a(int paramInt)
  {
    k[] arrayOfk = (k[])new k[paramInt];
    this.c = arrayOfk;
    this.e = ((paramInt >> 1) + (paramInt >> 2));
    return arrayOfk;
  }

  private static int b(String paramString)
  {
    int j = i;
    for (int k = 0; k < paramString.length(); k++)
    {
      int n = j + paramString.charAt(k);
      int i1 = n + n << 10;
      j = i1 ^ i1 >>> 6;
    }
    int m = j ^ (j >>> 20 ^ j >>> 12);
    return m ^ m >>> 7 ^ m >>> 4;
  }

  public Object a(String paramString, Object paramObject)
  {
    if (paramString == null)
      throw new NullPointerException("key == null");
    int j = b(paramString);
    k[] arrayOfk = this.c;
    int k = j & -1 + arrayOfk.length;
    k localk = arrayOfk[k];
    Object localObject;
    if (localk != null)
      if ((localk.c == j) && (paramString.equals(localk.a)))
      {
        localObject = localk.b;
        localk.b = paramObject;
      }
    while (true)
    {
      return localObject;
      localk = localk.d;
      break;
      int m = this.d;
      this.d = (m + 1);
      if (m > this.e)
        k = j & -1 + a().length;
      a(paramString, paramObject, j, k);
      localObject = null;
    }
  }

  public void clear()
  {
    if (this.d != 0)
    {
      Arrays.fill(this.c, null);
      this.d = 0;
    }
    k localk1 = this.a;
    k localk2;
    for (Object localObject = localk1.e; localObject != localk1; localObject = localk2)
    {
      localk2 = ((k)localObject).e;
      ((k)localObject).f = null;
      ((k)localObject).e = null;
    }
    localk1.f = localk1;
    localk1.e = localk1;
  }

  public boolean containsKey(Object paramObject)
  {
    if (((paramObject instanceof String)) && (a((String)paramObject) != null));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public Set entrySet()
  {
    Object localObject = this.g;
    if (localObject != null);
    while (true)
    {
      return localObject;
      localObject = new g(this, null);
      this.g = ((Set)localObject);
    }
  }

  public Object get(Object paramObject)
  {
    boolean bool = paramObject instanceof String;
    Object localObject = null;
    if (bool)
    {
      k localk = a((String)paramObject);
      localObject = null;
      if (localk != null)
        localObject = localk.b;
    }
    return localObject;
  }

  public Set keySet()
  {
    Object localObject = this.f;
    if (localObject != null);
    while (true)
    {
      return localObject;
      localObject = new i(this, null);
      this.f = ((Set)localObject);
    }
  }

  public Object remove(Object paramObject)
  {
    Object localObject1;
    if ((paramObject == null) || (!(paramObject instanceof String)))
      localObject1 = null;
    while (true)
    {
      return localObject1;
      int j = b((String)paramObject);
      k[] arrayOfk = this.c;
      int k = j & -1 + arrayOfk.length;
      Object localObject2 = arrayOfk[k];
      Object localObject4;
      for (Object localObject3 = null; ; localObject3 = localObject4)
      {
        if (localObject2 == null)
          break label149;
        if ((((k)localObject2).c == j) && (paramObject.equals(((k)localObject2).a)))
        {
          if (localObject3 == null)
            arrayOfk[k] = ((k)localObject2).d;
          while (true)
          {
            this.d = (-1 + this.d);
            a((k)localObject2);
            localObject1 = ((k)localObject2).b;
            break;
            localObject3.d = ((k)localObject2).d;
          }
        }
        k localk = ((k)localObject2).d;
        localObject4 = localObject2;
        localObject2 = localk;
      }
      label149: localObject1 = null;
    }
  }

  public int size()
  {
    return this.d;
  }

  public Collection values()
  {
    Object localObject = this.h;
    if (localObject != null);
    while (true)
    {
      return localObject;
      localObject = new m(this, null);
      this.h = ((Collection)localObject);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.b.a.e
 * JD-Core Version:    0.6.2
 */