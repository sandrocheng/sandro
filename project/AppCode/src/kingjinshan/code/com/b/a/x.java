package com.b.a;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class x extends dk
  implements z
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  private static final x d;
  private static final long l;
  private int e;
  private Object f;
  private List g;
  private aa h;
  private byte i = -1;
  private int k = -1;

  static
  {
    x localx = new x();
    d = localx;
    localx.f = "";
    localx.g = Collections.emptyList();
    localx.h = aa.e();
  }

  private x()
  {
  }

  private x(y paramy, byte paramByte)
  {
    super(paramy);
  }

  private static x a(i parami)
  {
    return y.a((y)y.r().a(parami));
  }

  private static x a(i parami, df paramdf)
  {
    return y.a((y)y.r().a(parami, paramdf));
  }

  private static x a(m paramm)
  {
    return y.a((y)y.r().a(paramm));
  }

  private static x a(m paramm, df paramdf)
  {
    return y.a(y.r().e(paramm, paramdf));
  }

  private static x a(InputStream paramInputStream)
  {
    return y.a((y)y.r().a(paramInputStream));
  }

  private static x a(InputStream paramInputStream, df paramdf)
  {
    return y.a((y)y.r().a(paramInputStream, paramdf));
  }

  private static x a(byte[] paramArrayOfByte)
  {
    return y.a((y)y.r().a(paramArrayOfByte));
  }

  private static x a(byte[] paramArrayOfByte, df paramdf)
  {
    return y.a((y)y.r().a(paramArrayOfByte, paramdf));
  }

  private static x b(InputStream paramInputStream)
  {
    y localy = y.r();
    if (localy.b(paramInputStream));
    for (x localx = y.a(localy); ; localx = null)
      return localx;
  }

  private static x b(InputStream paramInputStream, df paramdf)
  {
    y localy = y.r();
    if (localy.b(paramInputStream, paramdf));
    for (x localx = y.a(localy); ; localx = null)
      return localx;
  }

  private static y b(dp paramdp)
  {
    return new y(paramdp);
  }

  private static y b(x paramx)
  {
    return y.r().a(paramx);
  }

  public static x e()
  {
    return d;
  }

  public static final cj f()
  {
    return p.l();
  }

  public static y p()
  {
    return y.r();
  }

  private static x q()
  {
    return d;
  }

  private i r()
  {
    Object localObject = this.f;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.f = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private void s()
  {
    this.f = "";
    this.g = Collections.emptyList();
    this.h = aa.e();
  }

  private static y t()
  {
    return y.r();
  }

  private y u()
  {
    return y.r().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final ad a(int paramInt)
  {
    return (ad)this.g.get(paramInt);
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.e) == 1)
      paramn.a(1, r());
    for (int j = 0; j < this.g.size(); j++)
      paramn.b(2, (ex)this.g.get(j));
    if ((0x2 & this.e) == 2)
      paramn.b(3, this.h);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.i;
    boolean bool;
    if (j != -1)
      if (j == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      for (int m = 0; ; m++)
      {
        if (m >= l())
          break label61;
        if (!a(m).a())
        {
          this.i = 0;
          bool = false;
          break;
        }
      }
      label61: if ((m()) && (!this.h.a()))
      {
        this.i = 0;
        bool = false;
      }
      else
      {
        this.i = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = this.k;
    if (j != -1)
      return j;
    if ((0x1 & this.e) == 1);
    for (int m = 0 + n.c(1, r()); ; m = 0)
    {
      int n = 0;
      int i3;
      for (int i1 = m; n < this.g.size(); i1 = i3)
      {
        i3 = i1 + n.e(2, (ex)this.g.get(n));
        n++;
      }
      if ((0x2 & this.e) == 2);
      for (int i2 = i1 + n.e(3, this.h); ; i2 = i1)
      {
        j = i2 + b_().b();
        this.k = j;
        break;
      }
    }
  }

  public final af b(int paramInt)
  {
    return (af)this.g.get(paramInt);
  }

  public final boolean f_()
  {
    if ((0x1 & this.e) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected final dv g()
  {
    return p.m();
  }

  public final String i()
  {
    Object localObject1 = this.f;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.f = str;
    }
  }

  public final List j()
  {
    return this.g;
  }

  public final List k()
  {
    return this.g;
  }

  public final int l()
  {
    return this.g.size();
  }

  public final boolean m()
  {
    if ((0x2 & this.e) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final aa n()
  {
    return this.h;
  }

  public final ac o()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.x
 * JD-Core Version:    0.6.2
 */