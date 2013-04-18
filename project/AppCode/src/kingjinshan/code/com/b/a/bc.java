package com.b.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class bc extends dq
  implements bf
{
  private int a;
  private Object b = "";
  private Object c = "";
  private boolean d;
  private boolean e;
  private bd f = bd.a;
  private boolean g;
  private boolean h;
  private boolean i;
  private List j = Collections.emptyList();
  private fc k;

  private bc()
  {
    V();
  }

  private bc(dp paramdp, byte paramByte)
  {
    super(paramdp);
    V();
  }

  private static cj U()
  {
    return p.t();
  }

  private void V()
  {
    if (dk.j)
      an();
  }

  private static bc W()
  {
    return new bc();
  }

  private bc X()
  {
    super.n();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    this.d = false;
    this.a = (0xFFFFFFFB & this.a);
    this.e = false;
    this.a = (0xFFFFFFF7 & this.a);
    this.f = bd.a;
    this.a = (0xFFFFFFEF & this.a);
    this.g = false;
    this.a = (0xFFFFFFDF & this.a);
    this.h = false;
    this.a = (0xFFFFFFBF & this.a);
    this.i = false;
    this.a = (0xFFFFFF7F & this.a);
    if (this.k == null)
    {
      this.j = Collections.emptyList();
      this.a = (0xFFFFFEFF & this.a);
    }
    while (true)
    {
      return this;
      this.k.e();
    }
  }

  private bc Y()
  {
    return new bc().a(D());
  }

  private static bb Z()
  {
    return bb.e();
  }

  private bc a(int paramInt, cb paramcb)
  {
    if (this.k == null)
    {
      if (paramcb == null)
        throw new NullPointerException();
      aj();
      this.j.set(paramInt, paramcb);
      af_();
    }
    while (true)
    {
      return this;
      this.k.a(paramInt, paramcb);
    }
  }

  private bc a(int paramInt, cc paramcc)
  {
    if (this.k == null)
    {
      aj();
      this.j.set(paramInt, paramcc.w());
      af_();
    }
    while (true)
    {
      return this;
      this.k.a(paramInt, paramcc.w());
    }
  }

  private bc a(bd parambd)
  {
    if (parambd == null)
      throw new NullPointerException();
    this.a = (0x10 | this.a);
    this.f = parambd;
    af_();
    return this;
  }

  private bc a(cb paramcb)
  {
    if (this.k == null)
    {
      if (paramcb == null)
        throw new NullPointerException();
      aj();
      this.j.add(paramcb);
      af_();
    }
    while (true)
    {
      return this;
      this.k.a(paramcb);
    }
  }

  private bc a(cc paramcc)
  {
    if (this.k == null)
    {
      aj();
      this.j.add(paramcc.w());
      af_();
    }
    while (true)
    {
      return this;
      this.k.a(paramcc.w());
    }
  }

  private bc a(Iterable paramIterable)
  {
    if (this.k == null)
    {
      aj();
      dq.a(paramIterable, this.j);
      af_();
    }
    while (true)
    {
      return this;
      this.k.a(paramIterable);
    }
  }

  private bc a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private bc a(boolean paramBoolean)
  {
    this.a = (0x4 | this.a);
    this.d = paramBoolean;
    af_();
    return this;
  }

  private bb aa()
  {
    bb localbb = D();
    if (!localbb.a())
      throw b(localbb).a();
    return localbb;
  }

  private bc ab()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = bb.e().i();
    af_();
    return this;
  }

  private bc ac()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = bb.e().k();
    af_();
    return this;
  }

  private bc ad()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = false;
    af_();
    return this;
  }

  private bc ae()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = false;
    af_();
    return this;
  }

  private bc af()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.f = bd.a;
    af_();
    return this;
  }

  private bc ag()
  {
    this.a = (0xFFFFFFDF & this.a);
    this.g = false;
    af_();
    return this;
  }

  private bc ah()
  {
    this.a = (0xFFFFFFBF & this.a);
    this.h = false;
    af_();
    return this;
  }

  private bc ai()
  {
    this.a = (0xFFFFFF7F & this.a);
    this.i = false;
    af_();
    return this;
  }

  private void aj()
  {
    if ((0x100 & this.a) != 256)
    {
      this.j = new ArrayList(this.j);
      this.a = (0x100 | this.a);
    }
  }

  private bc ak()
  {
    if (this.k == null)
    {
      this.j = Collections.emptyList();
      this.a = (0xFFFFFEFF & this.a);
      af_();
    }
    while (true)
    {
      return this;
      this.k.e();
    }
  }

  private cc al()
  {
    return (cc)an().b(cb.e());
  }

  private List am()
  {
    return an().h();
  }

  private fc an()
  {
    List localList;
    if (this.k == null)
    {
      localList = this.j;
      if ((0x100 & this.a) != 256)
        break label59;
    }
    label59: for (boolean bool = true; ; bool = false)
    {
      this.k = new fc(localList, bool, ae_(), ad_());
      this.j = null;
      return this.k;
    }
  }

  private bc b(int paramInt, cb paramcb)
  {
    if (this.k == null)
    {
      if (paramcb == null)
        throw new NullPointerException();
      aj();
      this.j.add(paramInt, paramcb);
      af_();
    }
    while (true)
    {
      return this;
      this.k.b(paramInt, paramcb);
    }
  }

  private bc b(int paramInt, cc paramcc)
  {
    if (this.k == null)
    {
      aj();
      this.j.add(paramInt, paramcc.w());
      af_();
    }
    while (true)
    {
      return this;
      this.k.b(paramInt, paramcc.w());
    }
  }

  private bc b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private bc b(boolean paramBoolean)
  {
    this.a = (0x8 | this.a);
    this.e = paramBoolean;
    af_();
    return this;
  }

  private bc c(int paramInt)
  {
    if (this.k == null)
    {
      aj();
      this.j.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.k.d(paramInt);
    }
  }

  private bc c(boolean paramBoolean)
  {
    this.a = (0x20 | this.a);
    this.g = paramBoolean;
    af_();
    return this;
  }

  private bc d(ev paramev)
  {
    if ((paramev instanceof bb));
    for (bc localbc = a((bb)paramev); ; localbc = this)
    {
      return localbc;
      super.a(paramev);
    }
  }

  private bc d(boolean paramBoolean)
  {
    this.a = (0x40 | this.a);
    this.h = paramBoolean;
    af_();
    return this;
  }

  private cc d(int paramInt)
  {
    return (cc)an().b(paramInt);
  }

  private bc e(boolean paramBoolean)
  {
    this.a = (0x80 | this.a);
    this.i = paramBoolean;
    af_();
    return this;
  }

  private cc e(int paramInt)
  {
    return (cc)an().c(paramInt, cb.e());
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

  public final bb A()
  {
    bb localbb = D();
    if (!localbb.a())
      throw b(localbb);
    return localbb;
  }

  protected final dv B()
  {
    return p.u();
  }

  public final cj C()
  {
    return bb.f();
  }

  public final bb D()
  {
    bb localbb = new bb(this);
    int m = this.a;
    int n = m & 0x1;
    int i1 = 0;
    if (n == 1)
      i1 = 1;
    bb.a(localbb, this.b);
    if ((m & 0x2) == 2)
      i1 |= 2;
    bb.b(localbb, this.c);
    if ((m & 0x4) == 4)
      i1 |= 4;
    bb.a(localbb, this.d);
    if ((m & 0x8) == 8)
      i1 |= 8;
    bb.b(localbb, this.e);
    if ((m & 0x10) == 16)
      i1 |= 16;
    bb.a(localbb, this.f);
    if ((m & 0x20) == 32)
      i1 |= 32;
    bb.c(localbb, this.g);
    if ((m & 0x40) == 64)
      i1 |= 64;
    bb.d(localbb, this.h);
    if ((m & 0x80) == 128);
    for (int i2 = i1 | 0x80; ; i2 = i1)
    {
      bb.e(localbb, this.i);
      if (this.k == null)
      {
        if ((0x100 & this.a) == 256)
        {
          this.j = Collections.unmodifiableList(this.j);
          this.a = (0xFFFFFEFF & this.a);
        }
        bb.a(localbb, this.j);
      }
      while (true)
      {
        bb.a(localbb, i2);
        ab_();
        return localbb;
        bb.a(localbb, this.k.f());
      }
    }
  }

  public final bc a(bb parambb)
  {
    bc localbc;
    if (parambb == bb.e())
    {
      localbc = this;
      return localbc;
    }
    if (parambb.t_())
    {
      String str2 = parambb.i();
      if (str2 == null)
        throw new NullPointerException();
      this.a = (0x1 | this.a);
      this.b = str2;
      af_();
    }
    if (parambb.j())
    {
      String str1 = parambb.k();
      if (str1 == null)
        throw new NullPointerException();
      this.a = (0x2 | this.a);
      this.c = str1;
      af_();
    }
    if (parambb.l())
    {
      boolean bool5 = parambb.u_();
      this.a = (0x4 | this.a);
      this.d = bool5;
      af_();
    }
    if (parambb.v_())
    {
      boolean bool4 = parambb.o();
      this.a = (0x8 | this.a);
      this.e = bool4;
      af_();
    }
    if (parambb.p())
    {
      bd localbd = parambb.q();
      if (localbd == null)
        throw new NullPointerException();
      this.a = (0x10 | this.a);
      this.f = localbd;
      af_();
    }
    if (parambb.r())
    {
      boolean bool3 = parambb.s();
      this.a = (0x20 | this.a);
      this.g = bool3;
      af_();
    }
    if (parambb.t())
    {
      boolean bool2 = parambb.u();
      this.a = (0x40 | this.a);
      this.h = bool2;
      af_();
    }
    if (parambb.v())
    {
      boolean bool1 = parambb.w();
      this.a = (0x80 | this.a);
      this.i = bool1;
      af_();
    }
    if (this.k == null)
      if (!bb.b(parambb).isEmpty())
      {
        if (!this.j.isEmpty())
          break label397;
        this.j = bb.b(parambb);
        this.a = (0xFFFFFEFF & this.a);
        label373: af_();
      }
    while (true)
    {
      a(parambb);
      e(parambb.b_());
      localbc = this;
      break;
      label397: aj();
      this.j.addAll(bb.b(parambb));
      break label373;
      if (!bb.b(parambb).isEmpty())
      {
        if (this.k.d())
        {
          this.k.b();
          this.k = null;
          this.j = bb.b(parambb);
          this.a = (0xFFFFFEFF & this.a);
          if (dk.j);
          for (fc localfc = an(); ; localfc = null)
          {
            this.k = localfc;
            break;
          }
        }
        this.k.a(bb.b(parambb));
      }
    }
  }

  public final cb a(int paramInt)
  {
    if (this.k == null);
    for (cb localcb = (cb)this.j.get(paramInt); ; localcb = (cb)this.k.a(paramInt))
      return localcb;
  }

  public final boolean a()
  {
    int m = 0;
    boolean bool;
    if (m < z())
      if (!a(m).a())
        bool = false;
    while (true)
    {
      return bool;
      m++;
      break;
      if (!N())
        bool = false;
      else
        bool = true;
    }
  }

  public final cg b(int paramInt)
  {
    if (this.k == null);
    for (cg localcg = (cg)this.j.get(paramInt); ; localcg = (cg)this.k.c(paramInt))
      return localcg;
  }

  public final bc e(m paramm, df paramdf)
  {
    gi localgi = gg.a(b_());
    while (true)
    {
      int m = paramm.a();
      switch (m)
      {
      default:
        if (!a(paramm, localgi, paramdf, m))
        {
          d(localgi.b());
          af_();
        }
        break;
      case 0:
        for (bc localbc = this; ; localbc = this)
        {
          return localbc;
          d(localgi.b());
          af_();
        }
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramm.k();
        break;
      case 66:
        this.a = (0x2 | this.a);
        this.c = paramm.k();
        break;
      case 72:
        int n = paramm.m();
        bd localbd = bd.a(n);
        if (localbd == null)
        {
          localgi.a(9, n);
        }
        else
        {
          this.a = (0x10 | this.a);
          this.f = localbd;
        }
        break;
      case 80:
        this.a = (0x4 | this.a);
        this.d = paramm.i();
        break;
      case 128:
        this.a = (0x20 | this.a);
        this.g = paramm.i();
        break;
      case 136:
        this.a = (0x40 | this.a);
        this.h = paramm.i();
        break;
      case 144:
        this.a = (0x80 | this.a);
        this.i = paramm.i();
        break;
      case 160:
        this.a = (0x8 | this.a);
        this.e = paramm.i();
        break;
      case 7994:
        cc localcc = cb.w();
        paramm.a(localcc, paramdf);
        cb localcb = localcc.x();
        if (this.k == null)
        {
          if (localcb == null)
            throw new NullPointerException();
          aj();
          this.j.add(localcb);
          af_();
        }
        else
        {
          this.k.a(localcb);
        }
        break;
      }
    }
  }

  public final String i()
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

  public final boolean j()
  {
    if ((0x2 & this.a) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String k()
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

  public final boolean l()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean o()
  {
    return this.e;
  }

  public final boolean p()
  {
    if ((0x10 & this.a) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final bd q()
  {
    return this.f;
  }

  public final boolean r()
  {
    if ((0x20 & this.a) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean s()
  {
    return this.g;
  }

  public final boolean t()
  {
    if ((0x40 & this.a) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean t_()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean u()
  {
    return this.h;
  }

  public final boolean u_()
  {
    return this.d;
  }

  public final boolean v()
  {
    if ((0x80 & this.a) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean v_()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean w()
  {
    return this.i;
  }

  public final List x()
  {
    if (this.k == null);
    for (List localList = Collections.unmodifiableList(this.j); ; localList = this.k.g())
      return localList;
  }

  public final List y()
  {
    if (this.k != null);
    for (List localList = this.k.i(); ; localList = Collections.unmodifiableList(this.j))
      return localList;
  }

  public final int z()
  {
    if (this.k == null);
    for (int m = this.j.size(); ; m = this.k.c())
      return m;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.bc
 * JD-Core Version:    0.6.2
 */