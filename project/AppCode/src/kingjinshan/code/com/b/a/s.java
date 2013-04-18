package com.b.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class s extends dn
  implements w
{
  private int a;
  private Object b = "";
  private List c = Collections.emptyList();
  private fc d;
  private List e = Collections.emptyList();
  private fc f;
  private List g = Collections.emptyList();
  private fc h;
  private List i = Collections.emptyList();
  private fc j;
  private List k = Collections.emptyList();
  private fc l;
  private bg m = bg.e();
  private fp n;

  private s()
  {
    V();
  }

  private s(dp paramdp, byte paramByte)
  {
    super(paramdp);
    V();
  }

  private static cj U()
  {
    return p.f();
  }

  private void V()
  {
    if (dk.j)
    {
      ag();
      al();
      aq();
      av();
      aA();
      aD();
    }
  }

  private static s W()
  {
    return new s();
  }

  private s X()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    if (this.d == null)
    {
      this.c = Collections.emptyList();
      this.a = (0xFFFFFFFD & this.a);
      if (this.f != null)
        break label184;
      this.e = Collections.emptyList();
      this.a = (0xFFFFFFFB & this.a);
      label72: if (this.h != null)
        break label194;
      this.g = Collections.emptyList();
      this.a = (0xFFFFFFF7 & this.a);
      label97: if (this.j != null)
        break label204;
      this.i = Collections.emptyList();
      this.a = (0xFFFFFFEF & this.a);
      label122: if (this.l != null)
        break label214;
      this.k = Collections.emptyList();
      this.a = (0xFFFFFFDF & this.a);
      label147: if (this.n != null)
        break label224;
      this.m = bg.e();
    }
    while (true)
    {
      this.a = (0xFFFFFFBF & this.a);
      return this;
      this.d.e();
      break;
      label184: this.f.e();
      break label72;
      label194: this.h.e();
      break label97;
      label204: this.j.e();
      break label122;
      label214: this.l.e();
      break label147;
      label224: this.n.g();
    }
  }

  private s Y()
  {
    return new s().a(E());
  }

  private static r Z()
  {
    return r.e();
  }

  private s a(int paramInt, aj paramaj)
  {
    if (this.d == null)
    {
      if (paramaj == null)
        throw new NullPointerException();
      ac();
      this.c.set(paramInt, paramaj);
      af_();
    }
    while (true)
    {
      return this;
      this.d.a(paramInt, paramaj);
    }
  }

  private s a(int paramInt, ak paramak)
  {
    if (this.d == null)
    {
      ac();
      this.c.set(paramInt, paramak.y());
      af_();
    }
    while (true)
    {
      return this;
      this.d.a(paramInt, paramak.y());
    }
  }

  private s a(int paramInt, r paramr)
  {
    if (this.h == null)
    {
      if (paramr == null)
        throw new NullPointerException();
      am();
      this.g.set(paramInt, paramr);
      af_();
    }
    while (true)
    {
      return this;
      this.h.a(paramInt, paramr);
    }
  }

  private s a(int paramInt, s params)
  {
    if (this.h == null)
    {
      am();
      this.g.set(paramInt, params.D());
      af_();
    }
    while (true)
    {
      return this;
      this.h.a(paramInt, params.D());
    }
  }

  private s a(int paramInt, t paramt)
  {
    if (this.l == null)
    {
      if (paramt == null)
        throw new NullPointerException();
      aw();
      this.k.set(paramInt, paramt);
      af_();
    }
    while (true)
    {
      return this;
      this.l.a(paramInt, paramt);
    }
  }

  private s a(int paramInt, u paramu)
  {
    if (this.l == null)
    {
      aw();
      this.k.set(paramInt, paramu.l());
      af_();
    }
    while (true)
    {
      return this;
      this.l.a(paramInt, paramu.l());
    }
  }

  private s a(int paramInt, x paramx)
  {
    if (this.j == null)
    {
      if (paramx == null)
        throw new NullPointerException();
      ar();
      this.i.set(paramInt, paramx);
      af_();
    }
    while (true)
    {
      return this;
      this.j.a(paramInt, paramx);
    }
  }

  private s a(int paramInt, y paramy)
  {
    if (this.j == null)
    {
      ar();
      this.i.set(paramInt, paramy.p());
      af_();
    }
    while (true)
    {
      return this;
      this.j.a(paramInt, paramy.p());
    }
  }

  private s a(aj paramaj)
  {
    if (this.d == null)
    {
      if (paramaj == null)
        throw new NullPointerException();
      ac();
      this.c.add(paramaj);
      af_();
    }
    while (true)
    {
      return this;
      this.d.a(paramaj);
    }
  }

  private s a(ak paramak)
  {
    if (this.d == null)
    {
      ac();
      this.c.add(paramak.y());
      af_();
    }
    while (true)
    {
      return this;
      this.d.a(paramak.y());
    }
  }

  private s a(bg parambg)
  {
    if (this.n == null)
    {
      if (parambg == null)
        throw new NullPointerException();
      this.m = parambg;
      af_();
    }
    while (true)
    {
      this.a = (0x40 | this.a);
      return this;
      this.n.a(parambg);
    }
  }

  private s a(bh parambh)
  {
    if (this.n == null)
    {
      this.m = parambh.o();
      af_();
    }
    while (true)
    {
      this.a = (0x40 | this.a);
      return this;
      this.n.a(parambh.o());
    }
  }

  private s a(t paramt)
  {
    if (this.l == null)
    {
      if (paramt == null)
        throw new NullPointerException();
      aw();
      this.k.add(paramt);
      af_();
    }
    while (true)
    {
      return this;
      this.l.a(paramt);
    }
  }

  private s a(u paramu)
  {
    if (this.l == null)
    {
      aw();
      this.k.add(paramu.l());
      af_();
    }
    while (true)
    {
      return this;
      this.l.a(paramu.l());
    }
  }

  private s a(x paramx)
  {
    if (this.j == null)
    {
      if (paramx == null)
        throw new NullPointerException();
      ar();
      this.i.add(paramx);
      af_();
    }
    while (true)
    {
      return this;
      this.j.a(paramx);
    }
  }

  private s a(y paramy)
  {
    if (this.j == null)
    {
      ar();
      this.i.add(paramy.p());
      af_();
    }
    while (true)
    {
      return this;
      this.j.a(paramy.p());
    }
  }

  private s a(Iterable paramIterable)
  {
    if (this.d == null)
    {
      ac();
      dn.a(paramIterable, this.c);
      af_();
    }
    while (true)
    {
      return this;
      this.d.a(paramIterable);
    }
  }

  private s a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private fc aA()
  {
    List localList;
    if (this.l == null)
    {
      localList = this.k;
      if ((0x20 & this.a) != 32)
        break label57;
    }
    label57: for (boolean bool = true; ; bool = false)
    {
      this.l = new fc(localList, bool, ae_(), ad_());
      this.k = null;
      return this.l;
    }
  }

  private s aB()
  {
    if (this.n == null)
    {
      this.m = bg.e();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFBF & this.a);
      return this;
      this.n.g();
    }
  }

  private bh aC()
  {
    this.a = (0x40 | this.a);
    af_();
    return (bh)aD().e();
  }

  private fp aD()
  {
    if (this.n == null)
    {
      this.n = new fp(this.m, ae_(), ad_());
      this.m = null;
    }
    return this.n;
  }

  private r aa()
  {
    r localr = E();
    if (!localr.a())
      throw b(localr).a();
    return localr;
  }

  private s ab()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = r.e().i();
    af_();
    return this;
  }

  private void ac()
  {
    if ((0x2 & this.a) != 2)
    {
      this.c = new ArrayList(this.c);
      this.a = (0x2 | this.a);
    }
  }

  private s ad()
  {
    if (this.d == null)
    {
      this.c = Collections.emptyList();
      this.a = (0xFFFFFFFD & this.a);
      af_();
    }
    while (true)
    {
      return this;
      this.d.e();
    }
  }

  private ak ae()
  {
    return (ak)ag().b(aj.e());
  }

  private List af()
  {
    return ag().h();
  }

  private fc ag()
  {
    List localList;
    if (this.d == null)
    {
      localList = this.c;
      if ((0x2 & this.a) != 2)
        break label55;
    }
    label55: for (boolean bool = true; ; bool = false)
    {
      this.d = new fc(localList, bool, ae_(), ad_());
      this.c = null;
      return this.d;
    }
  }

  private void ah()
  {
    if ((0x4 & this.a) != 4)
    {
      this.e = new ArrayList(this.e);
      this.a = (0x4 | this.a);
    }
  }

  private s ai()
  {
    if (this.f == null)
    {
      this.e = Collections.emptyList();
      this.a = (0xFFFFFFFB & this.a);
      af_();
    }
    while (true)
    {
      return this;
      this.f.e();
    }
  }

  private ak aj()
  {
    return (ak)al().b(aj.e());
  }

  private List ak()
  {
    return al().h();
  }

  private fc al()
  {
    List localList;
    if (this.f == null)
    {
      localList = this.e;
      if ((0x4 & this.a) != 4)
        break label55;
    }
    label55: for (boolean bool = true; ; bool = false)
    {
      this.f = new fc(localList, bool, ae_(), ad_());
      this.e = null;
      return this.f;
    }
  }

  private void am()
  {
    if ((0x8 & this.a) != 8)
    {
      this.g = new ArrayList(this.g);
      this.a = (0x8 | this.a);
    }
  }

  private s an()
  {
    if (this.h == null)
    {
      this.g = Collections.emptyList();
      this.a = (0xFFFFFFF7 & this.a);
      af_();
    }
    while (true)
    {
      return this;
      this.h.e();
    }
  }

  private s ao()
  {
    return (s)aq().b(r.e());
  }

  private List ap()
  {
    return aq().h();
  }

  private fc aq()
  {
    List localList;
    if (this.h == null)
    {
      localList = this.g;
      if ((0x8 & this.a) != 8)
        break label57;
    }
    label57: for (boolean bool = true; ; bool = false)
    {
      this.h = new fc(localList, bool, ae_(), ad_());
      this.g = null;
      return this.h;
    }
  }

  private void ar()
  {
    if ((0x10 & this.a) != 16)
    {
      this.i = new ArrayList(this.i);
      this.a = (0x10 | this.a);
    }
  }

  private s as()
  {
    if (this.j == null)
    {
      this.i = Collections.emptyList();
      this.a = (0xFFFFFFEF & this.a);
      af_();
    }
    while (true)
    {
      return this;
      this.j.e();
    }
  }

  private y at()
  {
    return (y)av().b(x.e());
  }

  private List au()
  {
    return av().h();
  }

  private fc av()
  {
    List localList;
    if (this.j == null)
    {
      localList = this.i;
      if ((0x10 & this.a) != 16)
        break label57;
    }
    label57: for (boolean bool = true; ; bool = false)
    {
      this.j = new fc(localList, bool, ae_(), ad_());
      this.i = null;
      return this.j;
    }
  }

  private void aw()
  {
    if ((0x20 & this.a) != 32)
    {
      this.k = new ArrayList(this.k);
      this.a = (0x20 | this.a);
    }
  }

  private s ax()
  {
    if (this.l == null)
    {
      this.k = Collections.emptyList();
      this.a = (0xFFFFFFDF & this.a);
      af_();
    }
    while (true)
    {
      return this;
      this.l.e();
    }
  }

  private u ay()
  {
    return (u)aA().b(t.e());
  }

  private List az()
  {
    return aA().h();
  }

  private s b(int paramInt, aj paramaj)
  {
    if (this.d == null)
    {
      if (paramaj == null)
        throw new NullPointerException();
      ac();
      this.c.add(paramInt, paramaj);
      af_();
    }
    while (true)
    {
      return this;
      this.d.b(paramInt, paramaj);
    }
  }

  private s b(int paramInt, ak paramak)
  {
    if (this.d == null)
    {
      ac();
      this.c.add(paramInt, paramak.y());
      af_();
    }
    while (true)
    {
      return this;
      this.d.b(paramInt, paramak.y());
    }
  }

  private s b(int paramInt, r paramr)
  {
    if (this.h == null)
    {
      if (paramr == null)
        throw new NullPointerException();
      am();
      this.g.add(paramInt, paramr);
      af_();
    }
    while (true)
    {
      return this;
      this.h.b(paramInt, paramr);
    }
  }

  private s b(int paramInt, s params)
  {
    if (this.h == null)
    {
      am();
      this.g.add(paramInt, params.D());
      af_();
    }
    while (true)
    {
      return this;
      this.h.b(paramInt, params.D());
    }
  }

  private s b(int paramInt, t paramt)
  {
    if (this.l == null)
    {
      if (paramt == null)
        throw new NullPointerException();
      aw();
      this.k.add(paramInt, paramt);
      af_();
    }
    while (true)
    {
      return this;
      this.l.b(paramInt, paramt);
    }
  }

  private s b(int paramInt, u paramu)
  {
    if (this.l == null)
    {
      aw();
      this.k.add(paramInt, paramu.l());
      af_();
    }
    while (true)
    {
      return this;
      this.l.b(paramInt, paramu.l());
    }
  }

  private s b(int paramInt, x paramx)
  {
    if (this.j == null)
    {
      if (paramx == null)
        throw new NullPointerException();
      ar();
      this.i.add(paramInt, paramx);
      af_();
    }
    while (true)
    {
      return this;
      this.j.b(paramInt, paramx);
    }
  }

  private s b(int paramInt, y paramy)
  {
    if (this.j == null)
    {
      ar();
      this.i.add(paramInt, paramy.p());
      af_();
    }
    while (true)
    {
      return this;
      this.j.b(paramInt, paramy.p());
    }
  }

  private s b(aj paramaj)
  {
    if (this.f == null)
    {
      if (paramaj == null)
        throw new NullPointerException();
      ah();
      this.e.add(paramaj);
      af_();
    }
    while (true)
    {
      return this;
      this.f.a(paramaj);
    }
  }

  private s b(ak paramak)
  {
    if (this.f == null)
    {
      ah();
      this.e.add(paramak.y());
      af_();
    }
    while (true)
    {
      return this;
      this.f.a(paramak.y());
    }
  }

  private s b(bg parambg)
  {
    if (this.n == null)
      if (((0x40 & this.a) == 64) && (this.m != bg.e()))
      {
        this.m = bg.a(this.m).a(parambg).p();
        af_();
      }
    while (true)
    {
      this.a = (0x40 | this.a);
      return this;
      this.m = parambg;
      break;
      this.n.b(parambg);
    }
  }

  private s b(r paramr)
  {
    if (this.h == null)
    {
      if (paramr == null)
        throw new NullPointerException();
      am();
      this.g.add(paramr);
      af_();
    }
    while (true)
    {
      return this;
      this.h.a(paramr);
    }
  }

  private s b(s params)
  {
    if (this.h == null)
    {
      am();
      this.g.add(params.D());
      af_();
    }
    while (true)
    {
      return this;
      this.h.a(params.D());
    }
  }

  private s b(Iterable paramIterable)
  {
    if (this.f == null)
    {
      ah();
      dn.a(paramIterable, this.e);
      af_();
    }
    while (true)
    {
      return this;
      this.f.a(paramIterable);
    }
  }

  private s c(int paramInt, aj paramaj)
  {
    if (this.f == null)
    {
      if (paramaj == null)
        throw new NullPointerException();
      ah();
      this.e.set(paramInt, paramaj);
      af_();
    }
    while (true)
    {
      return this;
      this.f.a(paramInt, paramaj);
    }
  }

  private s c(int paramInt, ak paramak)
  {
    if (this.f == null)
    {
      ah();
      this.e.set(paramInt, paramak.y());
      af_();
    }
    while (true)
    {
      return this;
      this.f.a(paramInt, paramak.y());
    }
  }

  private s c(Iterable paramIterable)
  {
    if (this.h == null)
    {
      am();
      dn.a(paramIterable, this.g);
      af_();
    }
    while (true)
    {
      return this;
      this.h.a(paramIterable);
    }
  }

  private s d(int paramInt, aj paramaj)
  {
    if (this.f == null)
    {
      if (paramaj == null)
        throw new NullPointerException();
      ah();
      this.e.add(paramInt, paramaj);
      af_();
    }
    while (true)
    {
      return this;
      this.f.b(paramInt, paramaj);
    }
  }

  private s d(int paramInt, ak paramak)
  {
    if (this.f == null)
    {
      ah();
      this.e.add(paramInt, paramak.y());
      af_();
    }
    while (true)
    {
      return this;
      this.f.b(paramInt, paramak.y());
    }
  }

  private s d(ev paramev)
  {
    if ((paramev instanceof r));
    for (s locals = a((r)paramev); ; locals = this)
    {
      return locals;
      super.a(paramev);
    }
  }

  private s d(Iterable paramIterable)
  {
    if (this.j == null)
    {
      ar();
      dn.a(paramIterable, this.i);
      af_();
    }
    while (true)
    {
      return this;
      this.j.a(paramIterable);
    }
  }

  private s e(Iterable paramIterable)
  {
    if (this.l == null)
    {
      aw();
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

  private s k(int paramInt)
  {
    if (this.d == null)
    {
      ac();
      this.c.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.d.d(paramInt);
    }
  }

  private ak l(int paramInt)
  {
    return (ak)ag().b(paramInt);
  }

  private ak m(int paramInt)
  {
    return (ak)ag().c(paramInt, aj.e());
  }

  private s n(int paramInt)
  {
    if (this.f == null)
    {
      ah();
      this.e.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.f.d(paramInt);
    }
  }

  private ak o(int paramInt)
  {
    return (ak)al().b(paramInt);
  }

  private ak p(int paramInt)
  {
    return (ak)al().c(paramInt, aj.e());
  }

  private s q(int paramInt)
  {
    if (this.h == null)
    {
      am();
      this.g.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.h.d(paramInt);
    }
  }

  private s r(int paramInt)
  {
    return (s)aq().b(paramInt);
  }

  private s s(int paramInt)
  {
    return (s)aq().c(paramInt, r.e());
  }

  private s t(int paramInt)
  {
    if (this.j == null)
    {
      ar();
      this.i.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.j.d(paramInt);
    }
  }

  private y u(int paramInt)
  {
    return (y)av().b(paramInt);
  }

  private y v(int paramInt)
  {
    return (y)av().c(paramInt, x.e());
  }

  private s w(int paramInt)
  {
    if (this.l == null)
    {
      aw();
      this.k.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.l.d(paramInt);
    }
  }

  private u x(int paramInt)
  {
    return (u)aA().b(paramInt);
  }

  private u y(int paramInt)
  {
    return (u)aA().c(paramInt, t.e());
  }

  public final bi A()
  {
    if (this.n != null);
    for (Object localObject = (bi)this.n.f(); ; localObject = this.m)
      return localObject;
  }

  protected final dv B()
  {
    return p.g();
  }

  public final cj C()
  {
    return r.f();
  }

  public final r D()
  {
    r localr = E();
    if (!localr.a())
      throw b(localr);
    return localr;
  }

  public final r E()
  {
    r localr = new r(this);
    int i1 = this.a;
    int i2 = i1 & 0x1;
    int i3 = 0;
    if (i2 == 1)
      i3 = 1;
    r.a(localr, this.b);
    if (this.d == null)
    {
      if ((0x2 & this.a) == 2)
      {
        this.c = Collections.unmodifiableList(this.c);
        this.a = (0xFFFFFFFD & this.a);
      }
      r.a(localr, this.c);
      if (this.f != null)
        break label343;
      if ((0x4 & this.a) == 4)
      {
        this.e = Collections.unmodifiableList(this.e);
        this.a = (0xFFFFFFFB & this.a);
      }
      r.b(localr, this.e);
      label134: if (this.h != null)
        break label358;
      if ((0x8 & this.a) == 8)
      {
        this.g = Collections.unmodifiableList(this.g);
        this.a = (0xFFFFFFF7 & this.a);
      }
      r.c(localr, this.g);
      label184: if (this.j != null)
        break label373;
      if ((0x10 & this.a) == 16)
      {
        this.i = Collections.unmodifiableList(this.i);
        this.a = (0xFFFFFFEF & this.a);
      }
      r.d(localr, this.i);
      label234: if (this.l != null)
        break label388;
      if ((0x20 & this.a) == 32)
      {
        this.k = Collections.unmodifiableList(this.k);
        this.a = (0xFFFFFFDF & this.a);
      }
      r.e(localr, this.k);
      label284: if ((i1 & 0x40) == 64)
        i3 |= 2;
      if (this.n != null)
        break label403;
      r.a(localr, this.m);
    }
    while (true)
    {
      r.a(localr, i3);
      ab_();
      return localr;
      r.a(localr, this.d.f());
      break;
      label343: r.b(localr, this.f.f());
      break label134;
      label358: r.c(localr, this.h.f());
      break label184;
      label373: r.d(localr, this.j.f());
      break label234;
      label388: r.e(localr, this.l.f());
      break label284;
      label403: r.a(localr, (bg)this.n.d());
    }
  }

  public final aj a(int paramInt)
  {
    if (this.d == null);
    for (aj localaj = (aj)this.c.get(paramInt); ; localaj = (aj)this.d.a(paramInt))
      return localaj;
  }

  public final s a(r paramr)
  {
    s locals;
    if (paramr == r.e())
    {
      locals = this;
      return locals;
    }
    if (paramr.d_())
    {
      String str = paramr.i();
      if (str == null)
        throw new NullPointerException();
      this.a = (0x1 | this.a);
      this.b = str;
      af_();
    }
    label109: label113: bg localbg;
    if (this.d == null)
      label390: if (!r.a(paramr).isEmpty())
      {
        if (this.c.isEmpty())
        {
          this.c = r.a(paramr);
          this.a = (0xFFFFFFFD & this.a);
          af_();
        }
      }
      else
      {
        if (this.f != null)
          break label557;
        if (!r.b(paramr).isEmpty())
        {
          if (!this.e.isEmpty())
            break label536;
          this.e = r.b(paramr);
          this.a = (0xFFFFFFFB & this.a);
          label163: af_();
        }
        label167: if (this.h != null)
          break label673;
        if (!r.c(paramr).isEmpty())
        {
          if (!this.g.isEmpty())
            break label652;
          this.g = r.c(paramr);
          this.a = (0xFFFFFFF7 & this.a);
          label217: af_();
        }
        label221: if (this.j != null)
          break label789;
        if (!r.d(paramr).isEmpty())
        {
          if (!this.i.isEmpty())
            break label768;
          this.i = r.d(paramr);
          this.a = (0xFFFFFFEF & this.a);
          label271: af_();
        }
        label275: if (this.l != null)
          break label905;
        if (!r.e(paramr).isEmpty())
        {
          if (!this.k.isEmpty())
            break label884;
          this.k = r.e(paramr);
          this.a = (0xFFFFFFDF & this.a);
          label325: af_();
        }
        label329: if (paramr.y())
        {
          localbg = paramr.z();
          if (this.n != null)
            break label1009;
          if (((0x40 & this.a) != 64) || (this.m == bg.e()))
            break label1000;
          this.m = bg.a(this.m).a(localbg).p();
          af_();
        }
      }
    while (true)
    {
      this.a = (0x40 | this.a);
      e(paramr.b_());
      locals = this;
      break;
      ac();
      this.c.addAll(r.a(paramr));
      break label109;
      if (r.a(paramr).isEmpty())
        break label113;
      if (this.d.d())
      {
        this.d.b();
        this.d = null;
        this.c = r.a(paramr);
        this.a = (0xFFFFFFFD & this.a);
        if (dk.j);
        for (fc localfc5 = ag(); ; localfc5 = null)
        {
          this.d = localfc5;
          break;
        }
      }
      this.d.a(r.a(paramr));
      break label113;
      label536: ah();
      this.e.addAll(r.b(paramr));
      break label163;
      label557: if (r.b(paramr).isEmpty())
        break label167;
      if (this.f.d())
      {
        this.f.b();
        this.f = null;
        this.e = r.b(paramr);
        this.a = (0xFFFFFFFB & this.a);
        if (dk.j);
        for (fc localfc4 = al(); ; localfc4 = null)
        {
          this.f = localfc4;
          break;
        }
      }
      this.f.a(r.b(paramr));
      break label167;
      label652: am();
      this.g.addAll(r.c(paramr));
      break label217;
      label673: if (r.c(paramr).isEmpty())
        break label221;
      if (this.h.d())
      {
        this.h.b();
        this.h = null;
        this.g = r.c(paramr);
        this.a = (0xFFFFFFF7 & this.a);
        if (dk.j);
        for (fc localfc3 = aq(); ; localfc3 = null)
        {
          this.h = localfc3;
          break;
        }
      }
      this.h.a(r.c(paramr));
      break label221;
      label768: ar();
      this.i.addAll(r.d(paramr));
      break label271;
      label789: if (r.d(paramr).isEmpty())
        break label275;
      if (this.j.d())
      {
        this.j.b();
        this.j = null;
        this.i = r.d(paramr);
        this.a = (0xFFFFFFEF & this.a);
        if (dk.j);
        for (fc localfc2 = av(); ; localfc2 = null)
        {
          this.j = localfc2;
          break;
        }
      }
      this.j.a(r.d(paramr));
      break label275;
      label884: aw();
      this.k.addAll(r.e(paramr));
      break label325;
      label905: if (r.e(paramr).isEmpty())
        break label329;
      if (this.l.d())
      {
        this.l.b();
        this.l = null;
        this.k = r.e(paramr);
        this.a = (0xFFFFFFDF & this.a);
        if (dk.j);
        for (fc localfc1 = aA(); ; localfc1 = null)
        {
          this.l = localfc1;
          break;
        }
      }
      this.l.a(r.e(paramr));
      break label329;
      label1000: this.m = localbg;
      break label390;
      label1009: this.n.b(localbg);
    }
  }

  public final boolean a()
  {
    int i1 = 0;
    boolean bool;
    if (i1 < l())
      if (!a(i1).a())
        bool = false;
    while (true)
    {
      return bool;
      i1++;
      break;
      for (int i2 = 0; ; i2++)
      {
        if (i2 >= o())
          break label66;
        if (!c(i2).a())
        {
          bool = false;
          break;
        }
      }
      label66: for (int i3 = 0; ; i3++)
      {
        if (i3 >= r())
          break label99;
        if (!e(i3).a())
        {
          bool = false;
          break;
        }
      }
      label99: for (int i4 = 0; ; i4++)
      {
        if (i4 >= u())
          break label135;
        if (!g(i4).a())
        {
          bool = false;
          break;
        }
      }
      label135: if ((y()) && (!z().a()))
        bool = false;
      else
        bool = true;
    }
  }

  public final ap b(int paramInt)
  {
    if (this.d == null);
    for (ap localap = (ap)this.c.get(paramInt); ; localap = (ap)this.d.c(paramInt))
      return localap;
  }

  public final aj c(int paramInt)
  {
    if (this.f == null);
    for (aj localaj = (aj)this.e.get(paramInt); ; localaj = (aj)this.f.a(paramInt))
      return localaj;
  }

  public final ap d(int paramInt)
  {
    if (this.f == null);
    for (ap localap = (ap)this.e.get(paramInt); ; localap = (ap)this.f.c(paramInt))
      return localap;
  }

  public final boolean d_()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final r e(int paramInt)
  {
    if (this.h == null);
    for (r localr = (r)this.g.get(paramInt); ; localr = (r)this.h.a(paramInt))
      return localr;
  }

  public final s e(m paramm, df paramdf)
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
        for (s locals2 = this; ; locals2 = this)
        {
          return locals2;
          d(localgi.b());
          af_();
        }
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramm.k();
        break;
      case 18:
        ak localak2 = aj.y();
        paramm.a(localak2, paramdf);
        aj localaj2 = localak2.z();
        if (this.d == null)
        {
          if (localaj2 == null)
            throw new NullPointerException();
          ac();
          this.c.add(localaj2);
          af_();
        }
        else
        {
          this.d.a(localaj2);
        }
        break;
      case 26:
        s locals1 = r.c_();
        paramm.a(locals1, paramdf);
        r localr = locals1.E();
        if (this.h == null)
        {
          if (localr == null)
            throw new NullPointerException();
          am();
          this.g.add(localr);
          af_();
        }
        else
        {
          this.h.a(localr);
        }
        break;
      case 34:
        y localy = x.p();
        paramm.a(localy, paramdf);
        x localx = localy.q();
        if (this.j == null)
        {
          if (localx == null)
            throw new NullPointerException();
          ar();
          this.i.add(localx);
          af_();
        }
        else
        {
          this.j.a(localx);
        }
        break;
      case 42:
        u localu = t.l();
        paramm.a(localu, paramdf);
        t localt = localu.m();
        if (this.l == null)
        {
          if (localt == null)
            throw new NullPointerException();
          aw();
          this.k.add(localt);
          af_();
        }
        else
        {
          this.l.a(localt);
        }
        break;
      case 50:
        ak localak1 = aj.y();
        paramm.a(localak1, paramdf);
        aj localaj1 = localak1.z();
        if (this.f == null)
        {
          if (localaj1 == null)
            throw new NullPointerException();
          ah();
          this.e.add(localaj1);
          af_();
        }
        else
        {
          this.f.a(localaj1);
        }
        break;
      case 58:
      }
    }
    bh localbh = bg.o();
    if (y())
      localbh.a(z());
    paramm.a(localbh, paramdf);
    bg localbg = localbh.p();
    if (this.n == null)
    {
      if (localbg == null)
        throw new NullPointerException();
      this.m = localbg;
      af_();
    }
    while (true)
    {
      this.a = (0x40 | this.a);
      break;
      this.n.a(localbg);
    }
  }

  public final w f(int paramInt)
  {
    if (this.h == null);
    for (w localw = (w)this.g.get(paramInt); ; localw = (w)this.h.c(paramInt))
      return localw;
  }

  public final x g(int paramInt)
  {
    if (this.j == null);
    for (x localx = (x)this.i.get(paramInt); ; localx = (x)this.j.a(paramInt))
      return localx;
  }

  public final z h(int paramInt)
  {
    if (this.j == null);
    for (z localz = (z)this.i.get(paramInt); ; localz = (z)this.j.c(paramInt))
      return localz;
  }

  public final t i(int paramInt)
  {
    if (this.l == null);
    for (t localt = (t)this.k.get(paramInt); ; localt = (t)this.l.a(paramInt))
      return localt;
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

  public final v j(int paramInt)
  {
    if (this.l == null);
    for (v localv = (v)this.k.get(paramInt); ; localv = (v)this.l.c(paramInt))
      return localv;
  }

  public final List j()
  {
    if (this.d == null);
    for (List localList = Collections.unmodifiableList(this.c); ; localList = this.d.g())
      return localList;
  }

  public final List k()
  {
    if (this.d != null);
    for (List localList = this.d.i(); ; localList = Collections.unmodifiableList(this.c))
      return localList;
  }

  public final int l()
  {
    if (this.d == null);
    for (int i1 = this.c.size(); ; i1 = this.d.c())
      return i1;
  }

  public final List m()
  {
    if (this.f == null);
    for (List localList = Collections.unmodifiableList(this.e); ; localList = this.f.g())
      return localList;
  }

  public final List n()
  {
    if (this.f != null);
    for (List localList = this.f.i(); ; localList = Collections.unmodifiableList(this.e))
      return localList;
  }

  public final int o()
  {
    if (this.f == null);
    for (int i1 = this.e.size(); ; i1 = this.f.c())
      return i1;
  }

  public final List p()
  {
    if (this.h == null);
    for (List localList = Collections.unmodifiableList(this.g); ; localList = this.h.g())
      return localList;
  }

  public final List q()
  {
    if (this.h != null);
    for (List localList = this.h.i(); ; localList = Collections.unmodifiableList(this.g))
      return localList;
  }

  public final int r()
  {
    if (this.h == null);
    for (int i1 = this.g.size(); ; i1 = this.h.c())
      return i1;
  }

  public final List s()
  {
    if (this.j == null);
    for (List localList = Collections.unmodifiableList(this.i); ; localList = this.j.g())
      return localList;
  }

  public final List t()
  {
    if (this.j != null);
    for (List localList = this.j.i(); ; localList = Collections.unmodifiableList(this.i))
      return localList;
  }

  public final int u()
  {
    if (this.j == null);
    for (int i1 = this.i.size(); ; i1 = this.j.c())
      return i1;
  }

  public final List v()
  {
    if (this.l == null);
    for (List localList = Collections.unmodifiableList(this.k); ; localList = this.l.g())
      return localList;
  }

  public final List w()
  {
    if (this.l != null);
    for (List localList = this.l.i(); ; localList = Collections.unmodifiableList(this.k))
      return localList;
  }

  public final int x()
  {
    if (this.l == null);
    for (int i1 = this.k.size(); ; i1 = this.l.c())
      return i1;
  }

  public final boolean y()
  {
    if ((0x40 & this.a) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final bg z()
  {
    if (this.n == null);
    for (bg localbg = this.m; ; localbg = (bg)this.n.c())
      return localbg;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.s
 * JD-Core Version:    0.6.2
 */