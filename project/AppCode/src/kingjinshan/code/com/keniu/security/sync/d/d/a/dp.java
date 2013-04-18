package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dv;
import com.b.a.et;
import com.b.a.eu;
import com.b.a.ev;
import com.b.a.gf;
import com.b.a.gg;
import com.b.a.gi;
import com.b.a.gl;
import com.b.a.i;
import com.b.a.m;
import java.util.Collections;
import java.util.List;

public final class dp extends dn
  implements dq
{
  private int a;
  private Object b = "";
  private eu c = et.a;
  private int d;
  private int e;

  private dp()
  {
    do.s();
  }

  private dp(com.b.a.dp paramdp, byte paramByte)
  {
    super(paramdp);
    do.s();
  }

  private dp A()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = do.h().k();
    af_();
    return this;
  }

  private void D()
  {
    if ((0x2 & this.a) != 2)
    {
      this.c = new et(this.c);
      this.a = (0x2 | this.a);
    }
  }

  private dp E()
  {
    this.c = et.a;
    this.a = (0xFFFFFFFD & this.a);
    af_();
    return this;
  }

  private dp N()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = 0;
    af_();
    return this;
  }

  private dp U()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = 0;
    af_();
    return this;
  }

  private dp a(Iterable paramIterable)
  {
    D();
    dn.a(paramIterable, this.c);
    af_();
    return this;
  }

  private dp b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    D();
    this.c.add(paramString);
    af_();
    return this;
  }

  private dp c(int paramInt)
  {
    this.a = (0x8 | this.a);
    this.e = paramInt;
    af_();
    return this;
  }

  private dp d(ev paramev)
  {
    if ((paramev instanceof do));
    for (dp localdp = a((do)paramev); ; localdp = this)
    {
      return localdp;
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
    D();
    this.c.a(parami);
    af_();
  }

  private static cj s()
  {
    return a.ab();
  }

  private static void t()
  {
    do.s();
  }

  private static dp u()
  {
    return new dp();
  }

  private dp v()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = et.a;
    this.a = (0xFFFFFFFD & this.a);
    this.d = 0;
    this.a = (0xFFFFFFFB & this.a);
    this.e = 0;
    this.a = (0xFFFFFFF7 & this.a);
    return this;
  }

  private dp w()
  {
    return new dp().a(z());
  }

  private static do x()
  {
    return do.h();
  }

  private do y()
  {
    do localdo = z();
    if (!localdo.a())
      throw b(localdo).a();
    return localdo;
  }

  private do z()
  {
    do localdo = new do(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    do.a(localdo, this.b);
    if ((0x2 & this.a) == 2)
    {
      this.c = new gl(this.c);
      this.a = (0xFFFFFFFD & this.a);
    }
    do.a(localdo, this.c);
    if ((i & 0x4) == 4)
      k |= 2;
    do.a(localdo, this.d);
    if ((i & 0x8) == 8);
    for (int m = k | 0x4; ; m = k)
    {
      do.b(localdo, this.e);
      do.c(localdo, m);
      ab_();
      return localdo;
    }
  }

  protected final dv B()
  {
    return a.ac();
  }

  public final cj C()
  {
    return do.i();
  }

  public final dp a(int paramInt, String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    D();
    this.c.set(paramInt, paramString);
    af_();
    return this;
  }

  public final dp a(do paramdo)
  {
    dp localdp;
    if (paramdo == do.h())
    {
      localdp = this;
      return localdp;
    }
    if (paramdo.j())
      a(paramdo.k());
    if (!do.a(paramdo).isEmpty())
    {
      if (!this.c.isEmpty())
        break label138;
      this.c = do.a(paramdo);
      this.a = (0xFFFFFFFD & this.a);
    }
    while (true)
    {
      af_();
      if (paramdo.n())
        b(paramdo.o());
      if (paramdo.p())
      {
        int i = paramdo.q();
        this.a = (0x8 | this.a);
        this.e = i;
        af_();
      }
      e(paramdo.b_());
      localdp = this;
      break;
      label138: D();
      this.c.addAll(do.a(paramdo));
    }
  }

  public final dp a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  public final String a(int paramInt)
  {
    return (String)this.c.get(paramInt);
  }

  public final boolean a()
  {
    boolean bool;
    if (!j())
      bool = false;
    while (true)
    {
      return bool;
      if (!n())
        bool = false;
      else
        bool = true;
    }
  }

  public final dp b(int paramInt)
  {
    this.a = (0x4 | this.a);
    this.d = paramInt;
    af_();
    return this;
  }

  public final dp e(m paramm, df paramdf)
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
        for (dp localdp = this; ; localdp = this)
        {
          return localdp;
          d(localgi.b());
          af_();
        }
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramm.k();
        break;
      case 18:
        D();
        this.c.a(paramm.k());
        break;
      case 24:
        this.a = (0x4 | this.a);
        this.d = paramm.f();
        break;
      case 32:
        this.a = (0x8 | this.a);
        this.e = paramm.f();
      }
    }
  }

  public final do i()
  {
    do localdo = z();
    if (!localdo.a())
      throw b(localdo);
    return localdo;
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

  public final List l()
  {
    return Collections.unmodifiableList(this.c);
  }

  public final int m()
  {
    return this.c.size();
  }

  public final boolean n()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int o()
  {
    return this.d;
  }

  public final boolean p()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int q()
  {
    return this.e;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.dp
 * JD-Core Version:    0.6.2
 */