package com.keniu.security.monitor;

import java.util.ArrayList;

public final class a
{
  public static final int a = 0;
  public static final int b = 1073741823;
  public static final int c = 1342177279;
  public static final int d = 1610612735;
  public static final int e = 2147483647;
  public static final int f = 0;
  public static final int g = 1;
  public static final int h = 2;
  public static final int i = 1073741823;
  public static final int j = 1342177279;
  public static final int k = 2147483647;
  public static final int l = -1;
  public static int m = 0;
  public static final int n = 0;
  public static final int o = 0;
  public static final int p = 0;
  public static final int q = 0;
  public static final int r = 0;
  public static final int s = 0;
  public static final int t = 0;
  public static final int u = 1;
  public static final int v = 2;
  public static final int w;
  public static final int x = i7;
  private static a z;
  private ArrayList y = new ArrayList(m);

  static
  {
    m = 1;
    n = 0;
    int i1 = m;
    m = i1 + 1;
    o = i1;
    int i2 = m;
    m = i2 + 1;
    p = i2;
    int i3 = m;
    m = i3 + 1;
    q = i3;
    int i4 = m;
    m = i4 + 1;
    r = i4;
    int i5 = m;
    m = i5 + 1;
    s = i5;
    int i6 = m;
    m = i6 + 1;
    w = i6;
    int i7 = m;
  }

  private a()
  {
    for (int i1 = 0; i1 < m; i1++)
      this.y.add(new ArrayList());
  }

  public static a a()
  {
    try
    {
      if (z == null)
        z = new a();
      a locala = z;
      return locala;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static boolean a(ArrayList paramArrayList, b paramb)
  {
    int i1 = paramArrayList.size();
    int i2 = 0;
    if (i2 < i1)
      if (((c)paramArrayList.get(i2)).b == paramb)
        paramArrayList.remove(i2);
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      i2++;
      break;
    }
  }

  private static boolean a(ArrayList paramArrayList, b paramb, int paramInt)
  {
    int i1 = paramArrayList.size();
    int i2 = i1 - 1;
    int i3 = i1;
    boolean bool;
    if (i2 >= 0)
    {
      c localc = (c)paramArrayList.get(i2);
      if (localc.b == paramb)
      {
        bool = false;
        label41: return bool;
      }
      if (paramInt < localc.a)
        break label90;
    }
    label90: for (int i4 = i3 - 1; ; i4 = i3)
    {
      i2--;
      i3 = i4;
      break;
      paramArrayList.add(i3, new c(paramb, paramInt));
      bool = true;
      break label41;
    }
  }

  private int b(int paramInt)
  {
    int i1 = 0;
    if (paramInt >= 0)
    {
      int i2 = m;
      i1 = 0;
      if (paramInt >= i2);
    }
    synchronized ((ArrayList)this.y.get(paramInt))
    {
      i1 = ???.size();
      return i1;
    }
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    int i1 = 0;
    if (paramInt >= 0)
    {
      int i2 = m;
      i1 = 0;
      if (paramInt >= i2);
    }
    synchronized ((ArrayList)this.y.get(paramInt))
    {
      boolean bool = ???.isEmpty();
      i1 = 0;
      if (!bool)
        for (int i3 = ???.size() - 1; (i1 != 2) && (i3 >= 0); i3--)
          i1 = ((c)???.get(i3)).b.a(paramInt, paramObject1, paramObject2);
      return i1;
    }
  }

  public final boolean a(int paramInt)
  {
    boolean bool = false;
    ArrayList localArrayList;
    if (paramInt >= 0)
    {
      int i1 = m;
      bool = false;
      if (paramInt < i1)
      {
        localArrayList = (ArrayList)this.y.get(paramInt);
        bool = true;
      }
    }
    try
    {
      localArrayList.clear();
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean a(int paramInt, b paramb)
  {
    if ((paramInt >= 0) && (paramInt < m));
    while (true)
    {
      boolean bool;
      synchronized ((ArrayList)this.y.get(paramInt))
      {
        int i1 = ???.size();
        int i2 = 0;
        if (i2 < i1)
        {
          if (((c)???.get(i2)).b == paramb)
          {
            ???.remove(i2);
            bool = true;
            return bool;
          }
          i2++;
        }
        else
        {
          bool = false;
        }
      }
    }
  }

  public final boolean a(int paramInt1, b paramb, int paramInt2)
  {
    if ((paramInt1 >= 0) && (paramInt1 < m));
    while (true)
    {
      int i2;
      int i4;
      synchronized ((ArrayList)this.y.get(paramInt1))
      {
        int i1 = ???.size();
        i2 = i1 - 1;
        i3 = i1;
        if (i2 >= 0)
        {
          c localc = (c)???.get(i2);
          if (localc.b == paramb)
          {
            bool = false;
            break label137;
          }
          if (paramInt2 >= localc.a)
          {
            i4 = i3 - 1;
            break label140;
          }
        }
        else
        {
          ???.add(i3, new c(paramb, paramInt2));
          bool = true;
        }
      }
      break label140;
      boolean bool = false;
      label137: return bool;
      label140: i2--;
      int i3 = i4;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.monitor.a
 * JD-Core Version:    0.6.2
 */