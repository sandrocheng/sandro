package org.achartengine.b;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public final class d
  implements Serializable
{
  private static final long a = 1735858915883358551L;
  private String b;
  private List c = new ArrayList();
  private List d = new ArrayList();
  private double e = 1.7976931348623157E+308D;
  private double f = -1.797693134862316E+308D;
  private double g = 1.7976931348623157E+308D;
  private double h = -1.797693134862316E+308D;
  private int i;

  private d(String paramString)
  {
    this.b = paramString;
    this.i = 0;
    h();
  }

  public d(String paramString, byte paramByte)
  {
    this(paramString);
  }

  private void a(String paramString)
  {
    this.b = paramString;
  }

  private void b(double paramDouble1, double paramDouble2)
  {
    this.e = Math.min(this.e, paramDouble1);
    this.f = Math.max(this.f, paramDouble1);
    this.g = Math.min(this.g, paramDouble2);
    this.h = Math.max(this.h, paramDouble2);
  }

  private void c(int paramInt)
  {
    try
    {
      double d1 = ((Double)this.c.remove(paramInt)).doubleValue();
      double d2 = ((Double)this.d.remove(paramInt)).doubleValue();
      if ((d1 == this.e) || (d1 == this.f) || (d2 == this.g) || (d2 == this.h))
        h();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void h()
  {
    this.e = 1.7976931348623157E+308D;
    this.f = -1.797693134862316E+308D;
    this.g = 1.7976931348623157E+308D;
    this.h = -1.797693134862316E+308D;
    int j = c();
    for (int k = 0; k < j; k++)
      b(a(k), b(k));
  }

  private void i()
  {
    try
    {
      this.c.clear();
      this.d.clear();
      h();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final double a(int paramInt)
  {
    try
    {
      double d1 = ((Double)this.c.get(paramInt)).doubleValue();
      return d1;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int a()
  {
    return this.i;
  }

  public final void a(double paramDouble1, double paramDouble2)
  {
    try
    {
      this.c.add(Double.valueOf(paramDouble1));
      this.d.add(Double.valueOf(paramDouble2));
      b(paramDouble1, paramDouble2);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final double b(int paramInt)
  {
    try
    {
      double d1 = ((Double)this.d.get(paramInt)).doubleValue();
      return d1;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String b()
  {
    return this.b;
  }

  public final int c()
  {
    try
    {
      int j = this.c.size();
      return j;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final double d()
  {
    return this.e;
  }

  public final double e()
  {
    return this.g;
  }

  public final double f()
  {
    return this.f;
  }

  public final double g()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     org.achartengine.b.d
 * JD-Core Version:    0.6.2
 */