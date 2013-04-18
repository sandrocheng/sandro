package com.b.a;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class cj
  implements cv
{
  private final int a;
  private r b;
  private final String c;
  private final ct d;
  private final cj e;
  private final cj[] f;
  private final co[] g;
  private final cq[] h;
  private final cq[] i;

  private cj(r paramr, ct paramct, cj paramcj, int paramInt)
  {
    this.a = paramInt;
    this.b = paramr;
    this.c = ch.a(paramct, paramcj, paramr.i());
    this.d = paramct;
    this.e = paramcj;
    this.f = new cj[paramr.r()];
    for (int j = 0; j < paramr.r(); j++)
      this.f[j] = new cj(paramr.e(j), paramct, this, j);
    this.g = new co[paramr.u()];
    for (int k = 0; k < paramr.u(); k++)
      this.g[k] = new co(paramr.g(k), paramct, this, k);
    this.h = new cq[paramr.l()];
    for (int m = 0; m < paramr.l(); m++)
      this.h[m] = new cq(paramr.a(m), paramct, this, m, false);
    this.i = new cq[paramr.o()];
    for (int n = 0; n < paramr.o(); n++)
      this.i[n] = new cq(paramr.c(n), paramct, this, n, true);
    ct.a(paramct).a(this);
  }

  private void a(r paramr)
  {
    this.b = paramr;
    for (int j = 0; j < this.f.length; j++)
      this.f[j].a(paramr.e(j));
    for (int k = 0; k < this.g.length; k++)
      co.a(this.g[k], paramr.g(k));
    for (int m = 0; m < this.h.length; m++)
      cq.a(this.h[m], paramr.a(m));
    for (int n = 0; n < this.i.length; n++)
      cq.a(this.i[n], paramr.c(n));
  }

  private cj b(String paramString)
  {
    cv localcv = ct.a(this.d).a(this.c + '.' + paramString);
    if ((localcv != null) && ((localcv instanceof cj)));
    for (cj localcj = (cj)localcv; ; localcj = null)
      return localcj;
  }

  private co c(String paramString)
  {
    cv localcv = ct.a(this.d).a(this.c + '.' + paramString);
    if ((localcv != null) && ((localcv instanceof co)));
    for (co localco = (co)localcv; ; localco = null)
      return localco;
  }

  private int j()
  {
    return this.a;
  }

  private r k()
  {
    return this.b;
  }

  private cj l()
  {
    return this.e;
  }

  private void m()
  {
    cj[] arrayOfcj = this.f;
    int j = arrayOfcj.length;
    for (int k = 0; k < j; k++)
      arrayOfcj[k].m();
    cq[] arrayOfcq1 = this.h;
    int m = arrayOfcq1.length;
    for (int n = 0; n < m; n++)
      cq.a(arrayOfcq1[n]);
    cq[] arrayOfcq2 = this.i;
    int i1 = arrayOfcq2.length;
    for (int i2 = 0; i2 < i1; i2++)
      cq.a(arrayOfcq2[i2]);
  }

  public final cq a(String paramString)
  {
    cv localcv = ct.a(this.d).a(this.c + '.' + paramString);
    if ((localcv != null) && ((localcv instanceof cq)));
    for (cq localcq = (cq)localcv; ; localcq = null)
      return localcq;
  }

  public final String a()
  {
    return this.b.i();
  }

  public final boolean a(int paramInt)
  {
    Iterator localIterator = this.b.v().iterator();
    t localt;
    do
    {
      if (!localIterator.hasNext())
        break;
      localt = (t)localIterator.next();
    }
    while ((localt.i() > paramInt) || (paramInt >= localt.k()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final cq b(int paramInt)
  {
    return (cq)ck.a(ct.a(this.d)).get(new cl(this, paramInt));
  }

  public final String b()
  {
    return this.c;
  }

  public final ct c()
  {
    return this.d;
  }

  public final bg d()
  {
    return this.b.z();
  }

  public final List e()
  {
    return Collections.unmodifiableList(Arrays.asList(this.h));
  }

  public final List f()
  {
    return Collections.unmodifiableList(Arrays.asList(this.i));
  }

  public final List g()
  {
    return Collections.unmodifiableList(Arrays.asList(this.f));
  }

  public final List h()
  {
    return Collections.unmodifiableList(Arrays.asList(this.g));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.cj
 * JD-Core Version:    0.6.2
 */