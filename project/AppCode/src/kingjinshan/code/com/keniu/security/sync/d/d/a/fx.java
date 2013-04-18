package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ev;
import com.b.a.gf;
import com.b.a.gg;
import com.b.a.gi;
import com.b.a.i;
import com.b.a.m;

public final class fx extends dn
  implements fy
{
  private int a;
  private Object b = "";
  private Object c = "";

  private fx()
  {
    fw.n();
  }

  private fx(dp paramdp, byte paramByte)
  {
    super(paramdp);
    fw.n();
  }

  private fx a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private fx b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private fx d(ev paramev)
  {
    if ((paramev instanceof fw));
    for (fx localfx = a((fw)paramev); ; localfx = this)
    {
      return localfx;
      super.a(paramev);
    }
  }

  private void e(i parami)
  {
    this.a = (0x1 | this.a);
    this.b = parami;
    af_();
  }

  private void f(i parami)
  {
    this.a = (0x2 | this.a);
    this.c = parami;
    af_();
  }

  private static cj n()
  {
    return a.aX();
  }

  private static void o()
  {
    fw.n();
  }

  private static fx p()
  {
    return new fx();
  }

  private fx q()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    return this;
  }

  private fx r()
  {
    return new fx().a(v());
  }

  private static fw s()
  {
    return fw.h();
  }

  private fw t()
  {
    fw localfw = v();
    if (!localfw.a())
      throw b(localfw);
    return localfw;
  }

  private fw u()
  {
    fw localfw = v();
    if (!localfw.a())
      throw b(localfw).a();
    return localfw;
  }

  private fw v()
  {
    fw localfw = new fw(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    fw.a(localfw, this.b);
    if ((i & 0x2) == 2);
    for (int m = k | 0x2; ; m = k)
    {
      fw.b(localfw, this.c);
      fw.a(localfw, m);
      ab_();
      return localfw;
    }
  }

  private fx w()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = fw.h().k();
    af_();
    return this;
  }

  private fx x()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = fw.h().m();
    af_();
    return this;
  }

  protected final dv B()
  {
    return a.aY();
  }

  public final cj C()
  {
    return fw.i();
  }

  public final fx a(fw paramfw)
  {
    if (paramfw == fw.h());
    for (fx localfx = this; ; localfx = this)
    {
      return localfx;
      if (paramfw.j())
      {
        String str2 = paramfw.k();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str2;
        af_();
      }
      if (paramfw.l())
      {
        String str1 = paramfw.m();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str1;
        af_();
      }
      e(paramfw.b_());
    }
  }

  public final boolean a()
  {
    boolean bool;
    if (!j())
      bool = false;
    while (true)
    {
      return bool;
      if (!l())
        bool = false;
      else
        bool = true;
    }
  }

  public final fx e(m paramm, df paramdf)
  {
    gi localgi = gg.a(b_());
    while (true)
    {
      int i = paramm.a();
      switch (i)
      {
      default:
        if (!a(paramm, localgi, paramdf, i))
        {
          d(localgi.b());
          af_();
        }
        break;
      case 0:
        for (fx localfx = this; ; localfx = this)
        {
          return localfx;
          d(localgi.b());
          af_();
        }
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramm.k();
        break;
      case 18:
        this.a = (0x2 | this.a);
        this.c = paramm.k();
      }
    }
  }

  public final boolean j()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String k()
  {
    Object localObject = this.b;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.b = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final boolean l()
  {
    if ((0x2 & this.a) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String m()
  {
    Object localObject = this.c;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.c = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.fx
 * JD-Core Version:    0.6.2
 */