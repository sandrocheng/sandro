package com.antivirus.core.f;

import android.telephony.CellLocation;

public class b extends CellLocation
{
  private int a = -1;
  private int b = -1;
  private int c = -1;

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

  public int a()
  {
    return this.a;
  }

  public int b()
  {
    return this.b;
  }

  public int c()
  {
    return this.c;
  }

  public boolean equals(Object paramObject)
  {
    try
    {
      b localb = (b)paramObject;
      bool1 = false;
      if (paramObject == null)
        return bool1;
      if ((a(Integer.valueOf(this.a), Integer.valueOf(localb.a))) && (a(Integer.valueOf(this.b), Integer.valueOf(localb.b))) && (a(Integer.valueOf(this.c), Integer.valueOf(localb.c))));
      for (boolean bool2 = true; ; bool2 = false)
      {
        bool1 = bool2;
        break;
      }
    }
    catch (ClassCastException localClassCastException)
    {
      while (true)
        boolean bool1 = false;
    }
  }

  public String toString()
  {
    return "[" + this.a + "," + this.b + "," + this.c + "]";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.f.b
 * JD-Core Version:    0.6.2
 */