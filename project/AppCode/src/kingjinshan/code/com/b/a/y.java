package com.b.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class y extends dn
  implements z
{
  private int a;
  private Object b = "";
  private List c = Collections.emptyList();
  private fc d;
  private aa e = aa.e();
  private fp f;

  private y()
  {
    t();
  }

  private y(dp paramdp, byte paramByte)
  {
    super(paramdp);
    t();
  }

  private void A()
  {
    if ((0x2 & this.a) != 2)
    {
      this.c = new ArrayList(this.c);
      this.a = (0x2 | this.a);
    }
  }

  private y D()
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

  private ae E()
  {
    return (ae)U().b(ad.e());
  }

  private List N()
  {
    return U().h();
  }

  private fc U()
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

  private y V()
  {
    if (this.f == null)
    {
      this.e = aa.e();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFB & this.a);
      return this;
      this.f.g();
    }
  }

  private ab W()
  {
    this.a = (0x4 | this.a);
    af_();
    return (ab)X().e();
  }

  private fp X()
  {
    if (this.f == null)
    {
      this.f = new fp(this.e, ae_(), ad_());
      this.e = null;
    }
    return this.f;
  }

  private y a(int paramInt, ad paramad)
  {
    if (this.d == null)
    {
      if (paramad == null)
        throw new NullPointerException();
      A();
      this.c.set(paramInt, paramad);
      af_();
    }
    while (true)
    {
      return this;
      this.d.a(paramInt, paramad);
    }
  }

  private y a(int paramInt, ae paramae)
  {
    if (this.d == null)
    {
      A();
      this.c.set(paramInt, paramae.o());
      af_();
    }
    while (true)
    {
      return this;
      this.d.a(paramInt, paramae.o());
    }
  }

  private y a(aa paramaa)
  {
    if (this.f == null)
    {
      if (paramaa == null)
        throw new NullPointerException();
      this.e = paramaa;
      af_();
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      return this;
      this.f.a(paramaa);
    }
  }

  private y a(ab paramab)
  {
    if (this.f == null)
    {
      this.e = paramab.k();
      af_();
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      return this;
      this.f.a(paramab.k());
    }
  }

  private y a(ad paramad)
  {
    if (this.d == null)
    {
      if (paramad == null)
        throw new NullPointerException();
      A();
      this.c.add(paramad);
      af_();
    }
    while (true)
    {
      return this;
      this.d.a(paramad);
    }
  }

  private y a(ae paramae)
  {
    if (this.d == null)
    {
      A();
      this.c.add(paramae.o());
      af_();
    }
    while (true)
    {
      return this;
      this.d.a(paramae.o());
    }
  }

  private y a(Iterable paramIterable)
  {
    if (this.d == null)
    {
      A();
      dn.a(paramIterable, this.c);
      af_();
    }
    while (true)
    {
      return this;
      this.d.a(paramIterable);
    }
  }

  private y a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private y b(int paramInt, ad paramad)
  {
    if (this.d == null)
    {
      if (paramad == null)
        throw new NullPointerException();
      A();
      this.c.add(paramInt, paramad);
      af_();
    }
    while (true)
    {
      return this;
      this.d.b(paramInt, paramad);
    }
  }

  private y b(int paramInt, ae paramae)
  {
    if (this.d == null)
    {
      A();
      this.c.add(paramInt, paramae.o());
      af_();
    }
    while (true)
    {
      return this;
      this.d.b(paramInt, paramae.o());
    }
  }

  private y b(aa paramaa)
  {
    if (this.f == null)
      if (((0x4 & this.a) == 4) && (this.e != aa.e()))
      {
        this.e = aa.a(this.e).a(paramaa).l();
        af_();
      }
    while (true)
    {
      this.a = (0x4 | this.a);
      return this;
      this.e = paramaa;
      break;
      this.f.b(paramaa);
    }
  }

  private y c(int paramInt)
  {
    if (this.d == null)
    {
      A();
      this.c.remove(paramInt);
      af_();
    }
    while (true)
    {
      return this;
      this.d.d(paramInt);
    }
  }

  private ae d(int paramInt)
  {
    return (ae)U().b(paramInt);
  }

  private y d(ev paramev)
  {
    if ((paramev instanceof x));
    for (y localy = a((x)paramev); ; localy = this)
    {
      return localy;
      super.a(paramev);
    }
  }

  private ae e(int paramInt)
  {
    return (ae)U().c(paramInt, ad.e());
  }

  private void e(i parami)
  {
    this.a = (0x1 | this.a);
    this.b = parami;
    af_();
  }

  private static cj s()
  {
    return p.l();
  }

  private void t()
  {
    if (dk.j)
    {
      U();
      X();
    }
  }

  private static y u()
  {
    return new y();
  }

  private y v()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    if (this.d == null)
    {
      this.c = Collections.emptyList();
      this.a = (0xFFFFFFFD & this.a);
      if (this.f != null)
        break label84;
      this.e = aa.e();
    }
    while (true)
    {
      this.a = (0xFFFFFFFB & this.a);
      return this;
      this.d.e();
      break;
      label84: this.f.g();
    }
  }

  private y w()
  {
    return new y().a(q());
  }

  private static x x()
  {
    return x.e();
  }

  private x y()
  {
    x localx = q();
    if (!localx.a())
      throw b(localx).a();
    return localx;
  }

  private y z()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = x.e().i();
    af_();
    return this;
  }

  protected final dv B()
  {
    return p.m();
  }

  public final cj C()
  {
    return x.f();
  }

  public final ad a(int paramInt)
  {
    if (this.d == null);
    for (ad localad = (ad)this.c.get(paramInt); ; localad = (ad)this.d.a(paramInt))
      return localad;
  }

  public final y a(x paramx)
  {
    y localy;
    if (paramx == x.e())
    {
      localy = this;
      return localy;
    }
    if (paramx.f_())
    {
      String str = paramx.i();
      if (str == null)
        throw new NullPointerException();
      this.a = (0x1 | this.a);
      this.b = str;
      af_();
    }
    label109: label113: aa localaa;
    if (this.d == null)
      if (!x.a(paramx).isEmpty())
      {
        if (this.c.isEmpty())
        {
          this.c = x.a(paramx);
          this.a = (0xFFFFFFFD & this.a);
          af_();
        }
      }
      else if (paramx.m())
      {
        localaa = paramx.n();
        if (this.f != null)
          break label326;
        if (((0x4 & this.a) != 4) || (this.e == aa.e()))
          break label317;
        this.e = aa.a(this.e).a(localaa).l();
        label172: af_();
      }
    while (true)
    {
      this.a = (0x4 | this.a);
      e(paramx.b_());
      localy = this;
      break;
      A();
      this.c.addAll(x.a(paramx));
      break label109;
      if (x.a(paramx).isEmpty())
        break label113;
      if (this.d.d())
      {
        this.d.b();
        this.d = null;
        this.c = x.a(paramx);
        this.a = (0xFFFFFFFD & this.a);
        if (dk.j);
        for (fc localfc = U(); ; localfc = null)
        {
          this.d = localfc;
          break;
        }
      }
      this.d.a(x.a(paramx));
      break label113;
      label317: this.e = localaa;
      break label172;
      label326: this.f.b(localaa);
    }
  }

  public final boolean a()
  {
    int i = 0;
    boolean bool;
    if (i < l())
      if (!a(i).a())
        bool = false;
    while (true)
    {
      return bool;
      i++;
      break;
      if ((m()) && (!n().a()))
        bool = false;
      else
        bool = true;
    }
  }

  public final af b(int paramInt)
  {
    if (this.d == null);
    for (af localaf = (af)this.c.get(paramInt); ; localaf = (af)this.d.c(paramInt))
      return localaf;
  }

  public final y e(m paramm, df paramdf)
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
        for (y localy = this; ; localy = this)
        {
          return localy;
          d(localgi.b());
          af_();
        }
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramm.k();
        break;
      case 18:
        ae localae = ad.o();
        paramm.a(localae, paramdf);
        ad localad = localae.p();
        if (this.d == null)
        {
          if (localad == null)
            throw new NullPointerException();
          A();
          this.c.add(localad);
          af_();
        }
        else
        {
          this.d.a(localad);
        }
        break;
      case 26:
      }
    }
    ab localab = aa.k();
    if (m())
      localab.a(n());
    paramm.a(localab, paramdf);
    aa localaa = localab.l();
    if (this.f == null)
    {
      if (localaa == null)
        throw new NullPointerException();
      this.e = localaa;
      af_();
    }
    while (true)
    {
      this.a = (0x4 | this.a);
      break;
      this.f.a(localaa);
    }
  }

  public final boolean f_()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
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
    for (int i = this.c.size(); ; i = this.d.c())
      return i;
  }

  public final boolean m()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final aa n()
  {
    if (this.f == null);
    for (aa localaa = this.e; ; localaa = (aa)this.f.c())
      return localaa;
  }

  public final ac o()
  {
    if (this.f != null);
    for (Object localObject = (ac)this.f.f(); ; localObject = this.e)
      return localObject;
  }

  public final x p()
  {
    x localx = q();
    if (!localx.a())
      throw b(localx);
    return localx;
  }

  public final x q()
  {
    x localx = new x(this);
    int i = this.a;
    int j = i & 0x1;
    int k = 0;
    if (j == 1)
      k = 1;
    x.a(localx, this.b);
    if (this.d == null)
    {
      if ((0x2 & this.a) == 2)
      {
        this.c = Collections.unmodifiableList(this.c);
        this.a = (0xFFFFFFFD & this.a);
      }
      x.a(localx, this.c);
      if ((i & 0x4) == 4)
        k |= 2;
      if (this.f != null)
        break label143;
      x.a(localx, this.e);
    }
    while (true)
    {
      x.a(localx, k);
      ab_();
      return localx;
      x.a(localx, this.d.f());
      break;
      label143: x.a(localx, (aa)this.f.d());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.y
 * JD-Core Version:    0.6.2
 */