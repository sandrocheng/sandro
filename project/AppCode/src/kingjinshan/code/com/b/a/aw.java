package com.b.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class aw extends dn
  implements ax
{
  private int a;
  private Object b = "";
  private Object c = "";
  private eu d = et.a;
  private List e = Collections.emptyList();
  private fc f;
  private List g = Collections.emptyList();
  private fc h;
  private List i = Collections.emptyList();
  private fc j;
  private List k = Collections.emptyList();
  private fc l;
  private bb m = bb.e();
  private fp n;
  private bv o = bv.e();
  private fp p;

  private aw()
  {
    V();
  }

  private aw(dp paramdp, byte paramByte)
  {
    super(paramdp);
    V();
  }

  private static cj U()
  {
    return p.d();
  }

  private void V()
  {
    if (dk.j)
    {
      aj();
      ao();
      at();
      ay();
      aB();
      aE();
    }
  }

  private static aw W()
  {
    return new aw();
  }

  private aw X()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    this.d = et.a;
    this.a = (0xFFFFFFFB & this.a);
    if (this.f == null)
    {
      this.e = Collections.emptyList();
      this.a = (0xFFFFFFF7 & this.a);
      if (this.h != null)
        break label221;
      this.g = Collections.emptyList();
      this.a = (0xFFFFFFEF & this.a);
      label107: if (this.j != null)
        break label231;
      this.i = Collections.emptyList();
      this.a = (0xFFFFFFDF & this.a);
      label132: if (this.l != null)
        break label241;
      this.k = Collections.emptyList();
      this.a = (0xFFFFFFBF & this.a);
      label157: if (this.n != null)
        break label251;
      this.m = bb.e();
      label171: this.a = (0xFFFFFF7F & this.a);
      if (this.p != null)
        break label262;
      this.o = bv.e();
    }
    while (true)
    {
      this.a = (0xFFFFFEFF & this.a);
      return this;
      this.f.e();
      break;
      label221: this.h.e();
      break label107;
      label231: this.j.e();
      break label132;
      label241: this.l.e();
      break label157;
      label251: this.n.g();
      break label171;
      label262: this.p.g();
    }
  }

  private aw Y()
  {
    return new aw().a(E());
  }

  private static av Z()
  {
    return av.e();
  }

  private aw a(int paramInt, aj paramaj)
  {
    if (this.l == null)
    {
      if (paramaj == null)
        throw new NullPointerException();
      au();
      this.k.set(paramInt, paramaj);
      af_();
    }
    while (true)
    {
      return this;
      this.l.a(paramInt, paramaj);
    }
  }

  private aw a(int paramInt, ak paramak)
  {
    if (this.l == null)
    {
      au();
      this.k.set(paramInt, paramak.y());
      af_();
    }
    while (true)
    {
      return this;
      this.l.a(paramInt, paramak.y());
    }
  }

  private aw a(int paramInt, bp parambp)
  {
    if (this.j == null)
    {
      if (parambp == null)
        throw new NullPointerException();
      ap();
      this.i.set(paramInt, parambp);
      af_();
    }
    while (true)
    {
      return this;
      this.j.a(paramInt, parambp);
    }
  }

  private aw a(int paramInt, bq parambq)
  {
    if (this.j == null)
    {
      ap();
      this.i.set(paramInt, parambq.p());
      af_();
    }
    while (true)
    {
      return this;
      this.j.a(paramInt, parambq.p());
    }
  }

  private aw a(int paramInt, r paramr)
  {
    if (this.f == null)
    {
      if (paramr == null)
        throw new NullPointerException();
      af();
      this.e.set(paramInt, paramr);
      af_();
    }
    while (true)
    {
      return this;
      this.f.a(paramInt, paramr);
    }
  }

  private aw a(int paramInt, s params)
  {
    if (this.f == null)
    {
      af();
      this.e.set(paramInt, params.D());
      af_();
    }
    while (true)
    {
      return this;
      this.f.a(paramInt, params.D());
    }
  }

  private aw a(int paramInt, x paramx)
  {
    if (this.h == null)
    {
      if (paramx == null)
        throw new NullPointerException();
      ak();
      this.g.set(paramInt, paramx);
      af_();
    }
    while (true)
    {
      return this;
      this.h.a(paramInt, paramx);
    }
  }

  private aw a(int paramInt, y paramy)
  {
    if (this.h == null)
    {
      ak();
      this.g.set(paramInt, paramy.p());
      af_();
    }
    while (true)
    {
      return this;
      this.h.a(paramInt, paramy.p());
    }
  }

  private aw a(int paramInt, String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    ad();
    this.d.set(paramInt, paramString);
    af_();
    return this;
  }

  private aw a(aj paramaj)
  {
    if (this.l == null)
    {
      if (paramaj == null)
        throw new NullPointerException();
      au();
      this.k.add(paramaj);
      af_();
    }
    while (true)
    {
      return this;
      this.l.a(paramaj);
    }
  }

  private aw a(ak paramak)
  {
    if (this.l == null)
    {
      au();
      this.k.add(paramak.y());
      af_();
    }
    while (true)
    {
      return this;
      this.l.a(paramak.y());
    }
  }

  private aw a(bb parambb)
  {
    if (this.n == null)
    {
      if (parambb == null)
        throw new NullPointerException();
      this.m = parambb;
      af_();
    }
    while (true)
    {
      this.a = (0x80 | this.a);
      return this;
      this.n.a(parambb);
    }
  }

  private aw a(bc parambc)
  {
    if (this.n == null)
    {
      this.m = parambc.A();
      af_();
    }
    while (true)
    {
      this.a = (0x80 | this.a);
      return this;
      this.n.a(parambc.A());
    }
  }

  private aw a(bp parambp)
  {
    if (this.j == null)
    {
      if (parambp == null)
        throw new NullPointerException();
      ap();
      this.i.add(parambp);
      af_();
    }
    while (true)
    {
      return this;
      this.j.a(parambp);
    }
  }

  private aw a(bq parambq)
  {
    if (this.j == null)
    {
      ap();
      this.i.add(parambq.p());
      af_();
    }
    while (true)
    {
      return this;
      this.j.a(parambq.p());
    }
  }

  private aw a(bv parambv)
  {
    if (this.p == null)
    {
      if (parambv == null)
        throw new NullPointerException();
      this.o = parambv;
      af_();
    }
    while (true)
    {
      this.a = (0x100 | this.a);
      return this;
      this.p.a(parambv);
    }
  }

  private aw a(bw parambw)
  {
    if (this.p == null)
    {
      this.o = parambw.k();
      af_();
    }
    while (true)
    {
      this.a = (0x100 | this.a);
      return this;
      this.p.a(parambw.k());
    }
  }

  private aw a(r paramr)
  {
    if (this.f == null)
    {
      if (paramr == null)
        throw new NullPointerException();
      af();
      this.e.add(paramr);
      af_();
    }
    while (true)
    {
      return this;
      this.f.a(paramr);
    }
  }

  private aw a(s params)
  {
    if (this.f == null)
    {
      af();
      this.e.add(params.D());
      af_();
    }
    while (true)
    {
      return this;
      this.f.a(params.D());
    }
  }

  private aw a(x paramx)
  {
    if (this.h == null)
    {
      if (paramx == null)
        throw new NullPointerException();
      ak();
      this.g.add(paramx);
      af_();
    }
    while (true)
    {
      return this;
      this.h.a(paramx);
    }
  }

  private aw a(y paramy)
  {
    if (this.h == null)
    {
      ak();
      this.g.add(paramy.p());
      af_();
    }
    while (true)
    {
      return this;
      this.h.a(paramy.p());
    }
  }

  private aw a(Iterable paramIterable)
  {
    ad();
    dn.a(paramIterable, this.d);
    af_();
    return this;
  }

  private aw a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private bc aA()
  {
    this.a = (0x80 | this.a);
    af_();
    return (bc)aB().e();
  }

  private fp aB()
  {
    if (this.n == null)
    {
      this.n = new fp(this.m, ae_(), ad_());
      this.m = null;
    }
    return this.n;
  }

  private aw aC()
  {
    if (this.p == null)
    {
      this.o = bv.e();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFEFF & this.a);
      return this;
      this.p.g();
    }
  }

  private bw aD()
  {
    this.a = (0x100 | this.a);
    af_();
    return (bw)aE().e();
  }

  private fp aE()
  {
    if (this.p == null)
    {
      this.p = new fp(this.o, ae_(), ad_());
      this.o = null;
    }
    return this.p;
  }

  private av aa()
  {
    av localav = E();
    if (!localav.a())
      throw b(localav).a();
    return localav;
  }

  private aw ab()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = av.e().i();
    af_();
    return this;
  }

  private aw ac()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = av.e().k();
    af_();
    return this;
  }

  private void ad()
  {
    if ((0x4 & this.a) != 4)
    {
      this.d = new et(this.d);
      this.a = (0x4 | this.a);
    }
  }

  private aw ae()
  {
    this.d = et.a;
    this.a = (0xFFFFFFFB & this.a);
    af_();
    return this;
  }

  private void af()
  {
    if ((0x8 & this.a) != 8)
    {
      this.e = new ArrayList(this.e);
      this.a = (0x8 | this.a);
    }
  }

  private aw ag()
  {
    if (this.f == null)
    {
      this.e = Collections.emptyList();
      this.a = (0xFFFFFFF7 & this.a);
      af_();
    }
    while (true)
    {
      return this;
      this.f.e();
    }
  }

  private s ah()
  {
    return (s)aj().b(r.e());
  }

  private List ai()
  {
    return aj().h();
  }

  private fc aj()
  {
    List localList;
    if (this.f == null)
    {
      localList = this.e;
      if ((0x8 & this.a) != 8)
        break label57;
    }
    label57: for (boolean bool = true; ; bool = false)
    {
      this.f = new fc(localList, bool, ae_(), ad_());
      this.e = null;
      return this.f;
    }
  }

  private void ak()
  {
    if ((0x10 & this.a) != 16)
    {
      this.g = new ArrayList(this.g);
      this.a = (0x10 | this.a);
    }
  }

  private aw al()
  {
    if (this.h == null)
    {
      this.g = Collections.emptyList();
      this.a = (0xFFFFFFEF & this.a);
      af_();
    }
    while (true)
    {
      return this;
      this.h.e();
    }
  }

  private y am()
  {
    return (y)ao().b(x.e());
  }

  private List an()
  {
    return ao().h();
  }

  private fc ao()
  {
    List localList;
    if (this.h == null)
    {
      localList = this.g;
      if ((0x10 & this.a) != 16)
        break label57;
    }
    label57: for (boolean bool = true; ; bool = false)
    {
      this.h = new fc(localList, bool, ae_(), ad_());
      this.g = null;
      return this.h;
    }
  }

  private void ap()
  {
    if ((0x20 & this.a) != 32)
    {
      this.i = new ArrayList(this.i);
      this.a = (0x20 | this.a);
    }
  }

  private aw aq()
  {
    if (this.j == null)
    {
      this.i = Collections.emptyList();
      this.a = (0xFFFFFFDF & this.a);
      af_();
    }
    while (true)
    {
      return this;
      this.j.e();
    }
  }

  private bq ar()
  {
    return (bq)at().b(bp.e());
  }

  private List as()
  {
    return at().h();
  }

  private fc at()
  {
    List localList;
    if (this.j == null)
    {
      localList = this.i;
      if ((0x20 & this.a) != 32)
        break label57;
    }
    label57: for (boolean bool = true; ; bool = false)
    {
      this.j = new fc(localList, bool, ae_(), ad_());
      this.i = null;
      return this.j;
    }
  }

  private void au()
  {
    if ((0x40 & this.a) != 64)
    {
      this.k = new ArrayList(this.k);
      this.a = (0x40 | this.a);
    }
  }

  private aw av()
  {
    if (this.l == null)
    {
      this.k = Collections.emptyList();
      this.a = (0xFFFFFFBF & this.a);
      af_();
    }
    while (true)
    {
      return this;
      this.l.e();
    }
  }

  private ak aw()
  {
    return (ak)ay().b(aj.e());
  }

  private List ax()
  {
    return ay().h();
  }

  private fc ay()
  {
    List localList;
    if (this.l == null)
    {
      localList = this.k;
      if ((0x40 & this.a) != 64)
        break label57;
    }
    label57: for (boolean bool = true; ; bool = false)
    {
      this.l = new fc(localList, bool, ae_(), ad_());
      this.k = null;
      return this.l;
    }
  }

  private aw az()
  {
    if (this.n == null)
    {
      this.m = bb.e();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFF7F & this.a);
      return this;
      this.n.g();
    }
  }

  private aw b(int paramInt, aj paramaj)
  {
    if (this.l == null)
    {
      if (paramaj == null)
        throw new NullPointerException();
      au();
      this.k.add(paramInt, paramaj);
      af_();
    }
    while (true)
    {
      return this;
      this.l.b(paramInt, paramaj);
    }
  }

  private aw b(int paramInt, ak paramak)
  {
    if (this.l == null)
    {
      au();
      this.k.add(paramInt, paramak.y());
      af_();
    }
    while (true)
    {
      return this;
      this.l.b(paramInt, paramak.y());
    }
  }

  private aw b(int paramInt, bp parambp)
  {
    if (this.j == null)
    {
      if (parambp == null)
        throw new NullPointerException();
      ap();
      this.i.add(paramInt, parambp);
      af_();
    }
    while (true)
    {
      return this;
      this.j.b(paramInt, parambp);
    }
  }

  private aw b(int paramInt, bq parambq)
  {
    if (this.j == null)
    {
      ap();
      this.i.add(paramInt, parambq.p());
      af_();
    }
    while (true)
    {
      return this;
      this.j.b(paramInt, parambq.p());
    }
  }

  private aw b(int paramInt, r paramr)
  {
    if (this.f == null)
    {
      if (paramr == null)
        throw new NullPointerException();
      af();
      this.e.add(paramInt, paramr);
      af_();
    }
    while (true)
    {
      return this;
      this.f.b(paramInt, paramr);
    }
  }

  private aw b(int paramInt, s params)
  {
    if (this.f == null)
    {
      af();
      this.e.add(paramInt, params.D());
      af_();
    }
    while (true)
    {
      return this;
      this.f.b(paramInt, params.D());
    }
  }

  private aw b(int paramInt, x paramx)
  {
    if (this.h == null)
    {
      if (paramx == null)
        throw new NullPointerException();
      ak();
      this.g.add(paramInt, paramx);
      af_();
    }
    while (true)
    {
      return this;
      this.h.b(paramInt, paramx);
    }
  }

  private aw b(int paramInt, y paramy)
  {
    if (this.h == null)
    {
      ak();
      this.g.add(paramInt, paramy.p());
      af_();
    }
    while (true)
    {
      return this;
      this.h.b(paramInt, paramy.p());
    }
  }

  private aw b(bb parambb)
  {
    if (this.n == null)
      if (((0x80 & this.a) == 128) && (this.m != bb.e()))
      {
        this.m = bb.a(this.m).a(parambb).D();
        af_();
      }
    while (true)
    {
      this.a = (0x80 | this.a);
      return this;
      this.m = parambb;
      break;
      this.n.b(parambb);
    }
  }

  private aw b(bv parambv)
  {
    if (this.p == null)
      if (((0x100 & this.a) == 256) && (this.o != bv.e()))
      {
        this.o = bv.a(this.o).a(parambv).l();
        af_();
      }
    while (true)
    {
      this.a = (0x100 | this.a);
      return this;
      this.o = parambv;
      break;
      this.p.b(parambv);
    }
  }

  private aw b(Iterable paramIterable)
  {
    if (this.f == null)
    {
      af();
      dn.a(paramIterable, this.e);
      af_();
    }
    while (true)
    {
      return this;
      this.f.a(paramIterable);
    }
  }

  private aw b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private aw c(Iterable paramIterable)
  {
    if (this.h == null)
    {
      ak();
      dn.a(paramIterable, this.g);
      af_();
    }
    while (true)
    {
      return this;
      this.h.a(paramIterable);
    }
  }

  private aw c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    ad();
    this.d.add(paramString);
    af_();
    return this;
  }

  private aw d(ev paramev)
  {
    if ((paramev instanceof av));
    for (aw localaw = a((av)paramev); ; localaw = this)
    {
      return localaw;
      super.a(paramev);
    }
  }

  private aw d(Iterable paramIterable)
  {
    if (this.j == null)
    {
      ap();
      dn.a(paramIterable, this.i);
      af_();
    }
    while (true)
    {
      return this;
      this.j.a(paramIterable);
    }
  }

  private aw e(Iterable paramIterable)
  {
    if (this.l == null)
    {
      au();
      dn.a(paramIterable, this.k);
      af_();
    }
    while (true)
    {
      return this;
      this.l.a(paramIterable);
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
    ad();
    this.d.a(parami);
    af_();
  }

  private aw j(int paramInt)
  {
    if (this.f == null)
    {
      af();
      this.e.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.f.d(paramInt);
    }
  }

  private s k(int paramInt)
  {
    return (s)aj().b(paramInt);
  }

  private s l(int paramInt)
  {
    return (s)aj().c(paramInt, r.e());
  }

  private aw m(int paramInt)
  {
    if (this.h == null)
    {
      ak();
      this.g.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.h.d(paramInt);
    }
  }

  private y n(int paramInt)
  {
    return (y)ao().b(paramInt);
  }

  private y o(int paramInt)
  {
    return (y)ao().c(paramInt, x.e());
  }

  private aw p(int paramInt)
  {
    if (this.j == null)
    {
      ap();
      this.i.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.j.d(paramInt);
    }
  }

  private bq q(int paramInt)
  {
    return (bq)at().b(paramInt);
  }

  private bq r(int paramInt)
  {
    return (bq)at().c(paramInt, bp.e());
  }

  private aw s(int paramInt)
  {
    if (this.l == null)
    {
      au();
      this.k.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.l.d(paramInt);
    }
  }

  private ak t(int paramInt)
  {
    return (ak)ay().b(paramInt);
  }

  private ak u(int paramInt)
  {
    return (ak)ay().c(paramInt, aj.e());
  }

  public final bb A()
  {
    if (this.n == null);
    for (bb localbb = this.m; ; localbb = (bb)this.n.c())
      return localbb;
  }

  protected final dv B()
  {
    return p.e();
  }

  public final cj C()
  {
    return av.f();
  }

  public final av D()
  {
    av localav = E();
    if (!localav.a())
      throw b(localav);
    return localav;
  }

  public final av E()
  {
    av localav = new av(this);
    int i1 = this.a;
    int i2 = i1 & 0x1;
    int i3 = 0;
    if (i2 == 1)
      i3 = 1;
    av.a(localav, this.b);
    if ((i1 & 0x2) == 2)
      i3 |= 2;
    av.b(localav, this.c);
    if ((0x4 & this.a) == 4)
    {
      this.d = new gl(this.d);
      this.a = (0xFFFFFFFB & this.a);
    }
    av.a(localav, this.d);
    if (this.f == null)
    {
      if ((0x8 & this.a) == 8)
      {
        this.e = Collections.unmodifiableList(this.e);
        this.a = (0xFFFFFFF7 & this.a);
      }
      av.a(localav, this.e);
      if (this.h != null)
        break label400;
      if ((0x10 & this.a) == 16)
      {
        this.g = Collections.unmodifiableList(this.g);
        this.a = (0xFFFFFFEF & this.a);
      }
      av.b(localav, this.g);
      label205: if (this.j != null)
        break label415;
      if ((0x20 & this.a) == 32)
      {
        this.i = Collections.unmodifiableList(this.i);
        this.a = (0xFFFFFFDF & this.a);
      }
      av.c(localav, this.i);
      label255: if (this.l != null)
        break label430;
      if ((0x40 & this.a) == 64)
      {
        this.k = Collections.unmodifiableList(this.k);
        this.a = (0xFFFFFFBF & this.a);
      }
      av.d(localav, this.k);
      label305: if ((i1 & 0x80) != 128)
        break label488;
    }
    label338: label481: label488: for (int i4 = i3 | 0x4; ; i4 = i3)
    {
      if (this.n == null)
      {
        av.a(localav, this.m);
        if ((i1 & 0x100) != 256)
          break label481;
      }
      for (int i5 = i4 | 0x8; ; i5 = i4)
      {
        if (this.p == null)
          av.a(localav, this.o);
        while (true)
        {
          av.a(localav, i5);
          ab_();
          return localav;
          av.a(localav, this.f.f());
          break;
          av.b(localav, this.h.f());
          break label205;
          av.c(localav, this.j.f());
          break label255;
          av.d(localav, this.l.f());
          break label305;
          av.a(localav, (bb)this.n.d());
          break label338;
          av.a(localav, (bv)this.p.d());
        }
      }
    }
  }

  public final aw a(av paramav)
  {
    aw localaw;
    if (paramav == av.e())
    {
      localaw = this;
      return localaw;
    }
    if (paramav.n_())
    {
      String str2 = paramav.i();
      if (str2 == null)
        throw new NullPointerException();
      this.a = (0x1 | this.a);
      this.b = str2;
      af_();
    }
    if (paramav.j())
    {
      String str1 = paramav.k();
      if (str1 == null)
        throw new NullPointerException();
      this.a = (0x2 | this.a);
      this.c = str1;
      af_();
    }
    label148: label202: label206: label364: label368: bb localbb;
    label256: label260: label310: label314: bv localbv;
    if (!av.a(paramav).isEmpty())
    {
      if (this.d.isEmpty())
      {
        this.d = av.a(paramav);
        this.a = (0xFFFFFFFB & this.a);
        af_();
      }
    }
    else
    {
      if (this.f != null)
        break label583;
      if (!av.b(paramav).isEmpty())
      {
        if (!this.e.isEmpty())
          break label562;
        this.e = av.b(paramav);
        this.a = (0xFFFFFFF7 & this.a);
        af_();
      }
      if (this.h != null)
        break label699;
      if (!av.c(paramav).isEmpty())
      {
        if (!this.g.isEmpty())
          break label678;
        this.g = av.c(paramav);
        this.a = (0xFFFFFFEF & this.a);
        af_();
      }
      if (this.j != null)
        break label815;
      if (!av.d(paramav).isEmpty())
      {
        if (!this.i.isEmpty())
          break label794;
        this.i = av.d(paramav);
        this.a = (0xFFFFFFDF & this.a);
        af_();
      }
      if (this.l != null)
        break label931;
      if (!av.e(paramav).isEmpty())
      {
        if (!this.k.isEmpty())
          break label910;
        this.k = av.e(paramav);
        this.a = (0xFFFFFFBF & this.a);
        af_();
      }
      if (paramav.z())
      {
        localbb = paramav.A();
        if (this.n != null)
          break label1035;
        if (((0x80 & this.a) != 128) || (this.m == bb.e()))
          break label1026;
        this.m = bb.a(this.m).a(localbb).D();
        label431: af_();
        label435: this.a = (0x80 | this.a);
      }
      if (paramav.p_())
      {
        localbv = paramav.q_();
        if (this.p != null)
          break label1057;
        if (((0x100 & this.a) != 256) || (this.o == bv.e()))
          break label1048;
        this.o = bv.a(this.o).a(localbv).l();
        label510: af_();
      }
    }
    while (true)
    {
      this.a = (0x100 | this.a);
      e(paramav.b_());
      localaw = this;
      break;
      ad();
      this.d.addAll(av.a(paramav));
      break label148;
      label562: af();
      this.e.addAll(av.b(paramav));
      break label202;
      label583: if (av.b(paramav).isEmpty())
        break label206;
      if (this.f.d())
      {
        this.f.b();
        this.f = null;
        this.e = av.b(paramav);
        this.a = (0xFFFFFFF7 & this.a);
        if (dk.j);
        for (fc localfc4 = aj(); ; localfc4 = null)
        {
          this.f = localfc4;
          break;
        }
      }
      this.f.a(av.b(paramav));
      break label206;
      label678: ak();
      this.g.addAll(av.c(paramav));
      break label256;
      label699: if (av.c(paramav).isEmpty())
        break label260;
      if (this.h.d())
      {
        this.h.b();
        this.h = null;
        this.g = av.c(paramav);
        this.a = (0xFFFFFFEF & this.a);
        if (dk.j);
        for (fc localfc3 = ao(); ; localfc3 = null)
        {
          this.h = localfc3;
          break;
        }
      }
      this.h.a(av.c(paramav));
      break label260;
      label794: ap();
      this.i.addAll(av.d(paramav));
      break label310;
      label815: if (av.d(paramav).isEmpty())
        break label314;
      if (this.j.d())
      {
        this.j.b();
        this.j = null;
        this.i = av.d(paramav);
        this.a = (0xFFFFFFDF & this.a);
        if (dk.j);
        for (fc localfc2 = at(); ; localfc2 = null)
        {
          this.j = localfc2;
          break;
        }
      }
      this.j.a(av.d(paramav));
      break label314;
      label910: au();
      this.k.addAll(av.e(paramav));
      break label364;
      label931: if (av.e(paramav).isEmpty())
        break label368;
      if (this.l.d())
      {
        this.l.b();
        this.l = null;
        this.k = av.e(paramav);
        this.a = (0xFFFFFFBF & this.a);
        if (dk.j);
        for (fc localfc1 = ay(); ; localfc1 = null)
        {
          this.l = localfc1;
          break;
        }
      }
      this.l.a(av.e(paramav));
      break label368;
      label1026: this.m = localbb;
      break label431;
      label1035: this.n.b(localbb);
      break label435;
      label1048: this.o = localbv;
      break label510;
      label1057: this.p.b(localbv);
    }
  }

  public final String a(int paramInt)
  {
    return (String)this.d.get(paramInt);
  }

  public final boolean a()
  {
    int i1 = 0;
    boolean bool;
    if (i1 < p())
      if (!b(i1).a())
        bool = false;
    while (true)
    {
      return bool;
      i1++;
      break;
      for (int i2 = 0; ; i2++)
      {
        if (i2 >= s())
          break label66;
        if (!d(i2).a())
        {
          bool = false;
          break;
        }
      }
      label66: for (int i3 = 0; ; i3++)
      {
        if (i3 >= v())
          break label99;
        if (!f(i3).a())
        {
          bool = false;
          break;
        }
      }
      label99: for (int i4 = 0; ; i4++)
      {
        if (i4 >= y())
          break label135;
        if (!h(i4).a())
        {
          bool = false;
          break;
        }
      }
      label135: if ((z()) && (!A().a()))
        bool = false;
      else
        bool = true;
    }
  }

  public final r b(int paramInt)
  {
    if (this.f == null);
    for (r localr = (r)this.e.get(paramInt); ; localr = (r)this.f.a(paramInt))
      return localr;
  }

  public final w c(int paramInt)
  {
    if (this.f == null);
    for (w localw = (w)this.e.get(paramInt); ; localw = (w)this.f.c(paramInt))
      return localw;
  }

  public final x d(int paramInt)
  {
    if (this.h == null);
    for (x localx = (x)this.g.get(paramInt); ; localx = (x)this.h.a(paramInt))
      return localx;
  }

  public final aw e(m paramm, df paramdf)
  {
    gi localgi = gg.a(b_());
    while (true)
    {
      int i1 = paramm.a();
      switch (i1)
      {
      default:
        if (!a(paramm, localgi, paramdf, i1))
        {
          d(localgi.b());
          af_();
        }
        break;
      case 0:
        for (aw localaw = this; ; localaw = this)
        {
          return localaw;
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
        ad();
        this.d.a(paramm.k());
        break;
      case 34:
        s locals = r.c_();
        paramm.a(locals, paramdf);
        r localr = locals.E();
        if (this.f == null)
        {
          if (localr == null)
            throw new NullPointerException();
          af();
          this.e.add(localr);
          af_();
        }
        else
        {
          this.f.a(localr);
        }
        break;
      case 42:
        y localy = x.p();
        paramm.a(localy, paramdf);
        x localx = localy.q();
        if (this.h == null)
        {
          if (localx == null)
            throw new NullPointerException();
          ak();
          this.g.add(localx);
          af_();
        }
        else
        {
          this.h.a(localx);
        }
        break;
      case 50:
        bq localbq = bp.p();
        paramm.a(localbq, paramdf);
        bp localbp = localbq.q();
        if (this.j == null)
        {
          if (localbp == null)
            throw new NullPointerException();
          ap();
          this.i.add(localbp);
          af_();
        }
        else
        {
          this.j.a(localbp);
        }
        break;
      case 58:
        ak localak = aj.y();
        paramm.a(localak, paramdf);
        aj localaj = localak.z();
        if (this.l == null)
        {
          if (localaj == null)
            throw new NullPointerException();
          au();
          this.k.add(localaj);
          af_();
        }
        else
        {
          this.l.a(localaj);
        }
        break;
      case 66:
      case 74:
      }
    }
    bc localbc = bb.A();
    if (z())
      localbc.a(A());
    paramm.a(localbc, paramdf);
    bb localbb = localbc.D();
    if (this.n == null)
    {
      if (localbb == null)
        throw new NullPointerException();
      this.m = localbb;
      af_();
    }
    while (true)
    {
      this.a = (0x80 | this.a);
      break;
      this.n.a(localbb);
    }
    bw localbw = bv.k();
    if (p_())
      localbw.a(q_());
    paramm.a(localbw, paramdf);
    bv localbv = localbw.l();
    if (this.p == null)
    {
      if (localbv == null)
        throw new NullPointerException();
      this.o = localbv;
      af_();
    }
    while (true)
    {
      this.a = (0x100 | this.a);
      break;
      this.p.a(localbv);
    }
  }

  public final z e(int paramInt)
  {
    if (this.h == null);
    for (z localz = (z)this.g.get(paramInt); ; localz = (z)this.h.c(paramInt))
      return localz;
  }

  public final bp f(int paramInt)
  {
    if (this.j == null);
    for (bp localbp = (bp)this.i.get(paramInt); ; localbp = (bp)this.j.a(paramInt))
      return localbp;
  }

  public final br g(int paramInt)
  {
    if (this.j == null);
    for (br localbr = (br)this.i.get(paramInt); ; localbr = (br)this.j.c(paramInt))
      return localbr;
  }

  public final aj h(int paramInt)
  {
    if (this.l == null);
    for (aj localaj = (aj)this.k.get(paramInt); ; localaj = (aj)this.l.a(paramInt))
      return localaj;
  }

  public final ap i(int paramInt)
  {
    if (this.l == null);
    for (ap localap = (ap)this.k.get(paramInt); ; localap = (ap)this.l.c(paramInt))
      return localap;
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

  public final List l()
  {
    return Collections.unmodifiableList(this.d);
  }

  public final int m()
  {
    return this.d.size();
  }

  public final List n()
  {
    if (this.f == null);
    for (List localList = Collections.unmodifiableList(this.e); ; localList = this.f.g())
      return localList;
  }

  public final boolean n_()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final List o()
  {
    if (this.f != null);
    for (List localList = this.f.i(); ; localList = Collections.unmodifiableList(this.e))
      return localList;
  }

  public final bf o_()
  {
    if (this.n != null);
    for (Object localObject = (bf)this.n.f(); ; localObject = this.m)
      return localObject;
  }

  public final int p()
  {
    if (this.f == null);
    for (int i1 = this.e.size(); ; i1 = this.f.c())
      return i1;
  }

  public final boolean p_()
  {
    if ((0x100 & this.a) == 256);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final List q()
  {
    if (this.h == null);
    for (List localList = Collections.unmodifiableList(this.g); ; localList = this.h.g())
      return localList;
  }

  public final bv q_()
  {
    if (this.p == null);
    for (bv localbv = this.o; ; localbv = (bv)this.p.c())
      return localbv;
  }

  public final List r()
  {
    if (this.h != null);
    for (List localList = this.h.i(); ; localList = Collections.unmodifiableList(this.g))
      return localList;
  }

  public final ca r_()
  {
    if (this.p != null);
    for (Object localObject = (ca)this.p.f(); ; localObject = this.o)
      return localObject;
  }

  public final int s()
  {
    if (this.h == null);
    for (int i1 = this.g.size(); ; i1 = this.h.c())
      return i1;
  }

  public final List t()
  {
    if (this.j == null);
    for (List localList = Collections.unmodifiableList(this.i); ; localList = this.j.g())
      return localList;
  }

  public final List u()
  {
    if (this.j != null);
    for (List localList = this.j.i(); ; localList = Collections.unmodifiableList(this.i))
      return localList;
  }

  public final int v()
  {
    if (this.j == null);
    for (int i1 = this.i.size(); ; i1 = this.j.c())
      return i1;
  }

  public final List w()
  {
    if (this.l == null);
    for (List localList = Collections.unmodifiableList(this.k); ; localList = this.l.g())
      return localList;
  }

  public final List x()
  {
    if (this.l != null);
    for (List localList = this.l.i(); ; localList = Collections.unmodifiableList(this.k))
      return localList;
  }

  public final int y()
  {
    if (this.l == null);
    for (int i1 = this.k.size(); ; i1 = this.l.c())
      return i1;
  }

  public final boolean z()
  {
    if ((0x80 & this.a) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.aw
 * JD-Core Version:    0.6.2
 */