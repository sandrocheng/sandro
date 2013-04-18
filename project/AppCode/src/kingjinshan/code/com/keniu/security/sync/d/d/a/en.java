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

public final class en extends dn
  implements eo
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";

  private en()
  {
    em.p();
  }

  private en(dp paramdp, byte paramByte)
  {
    super(paramdp);
    em.p();
  }

  private en A()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = em.h().o();
    af_();
    return this;
  }

  private en a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private en b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private en c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private en d(ev paramev)
  {
    if ((paramev instanceof em));
    for (en localen = a((em)paramev); ; localen = this)
    {
      return localen;
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

  private void g(i parami)
  {
    this.a = (0x4 | this.a);
    this.d = parami;
    af_();
  }

  private static cj p()
  {
    return a.aT();
  }

  private static void q()
  {
    em.p();
  }

  private static en r()
  {
    return new en();
  }

  private en s()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    this.d = "";
    this.a = (0xFFFFFFFB & this.a);
    return this;
  }

  private en t()
  {
    return new en().a(x());
  }

  private static em u()
  {
    return em.h();
  }

  private em v()
  {
    em localem = x();
    if (!localem.a())
      throw b(localem);
    return localem;
  }

  private em w()
  {
    em localem = x();
    if (!localem.a())
      throw b(localem).a();
    return localem;
  }

  private em x()
  {
    em localem = new em(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    em.a(localem, this.b);
    if ((i & 0x2) == 2)
      k |= 2;
    em.b(localem, this.c);
    if ((i & 0x4) == 4);
    for (int m = k | 0x4; ; m = k)
    {
      em.c(localem, this.d);
      em.a(localem, m);
      ab_();
      return localem;
    }
  }

  private en y()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = em.h().k();
    af_();
    return this;
  }

  private en z()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = em.h().m();
    af_();
    return this;
  }

  protected final dv B()
  {
    return a.aU();
  }

  public final cj C()
  {
    return em.i();
  }

  public final en a(em paramem)
  {
    if (paramem == em.h());
    for (en localen = this; ; localen = this)
    {
      return localen;
      if (paramem.j())
      {
        String str3 = paramem.k();
        if (str3 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str3;
        af_();
      }
      if (paramem.l())
      {
        String str2 = paramem.m();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str2;
        af_();
      }
      if (paramem.n())
      {
        String str1 = paramem.o();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x4 | this.a);
        this.d = str1;
        af_();
      }
      e(paramem.b_());
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

  public final en e(m paramm, df paramdf)
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
        for (en localen = this; ; localen = this)
        {
          return localen;
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
        break;
      case 26:
        this.a = (0x4 | this.a);
        this.d = paramm.k();
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

  public final boolean n()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String o()
  {
    Object localObject = this.d;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.d = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.en
 * JD-Core Version:    0.6.2
 */