package com.b.a;

import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class cy extends a
{
  private final cj a;
  private final dh b;
  private final gg c;
  private int d = -1;

  private cy(cj paramcj, dh paramdh, gg paramgg, byte paramByte)
  {
    this.a = paramcj;
    this.b = paramdh;
    this.c = paramgg;
  }

  public static cy a(cj paramcj)
  {
    return new cy(paramcj, dh.b(), gg.f(), (byte)0);
  }

  private static cy a(cj paramcj, i parami)
  {
    return da.a((da)b(paramcj).a(parami));
  }

  private static cy a(cj paramcj, i parami, db paramdb)
  {
    return da.a((da)b(paramcj).a(parami, paramdb));
  }

  private static cy a(cj paramcj, m paramm)
  {
    return da.a((da)b(paramcj).a(paramm));
  }

  private static cy a(cj paramcj, m paramm, db paramdb)
  {
    return da.a((da)b(paramcj).a(paramm, paramdb));
  }

  private static cy a(cj paramcj, InputStream paramInputStream)
  {
    return da.a((da)b(paramcj).a(paramInputStream));
  }

  private static cy a(cj paramcj, InputStream paramInputStream, db paramdb)
  {
    return da.a((da)b(paramcj).a(paramInputStream, paramdb));
  }

  private static cy a(cj paramcj, byte[] paramArrayOfByte)
  {
    return da.a((da)b(paramcj).a(paramArrayOfByte));
  }

  private static cy a(cj paramcj, byte[] paramArrayOfByte, db paramdb)
  {
    return da.a((da)b(paramcj).a(paramArrayOfByte, paramdb));
  }

  private static da a(ev paramev)
  {
    return new da(paramev.C()).d(paramev);
  }

  private static da b(cj paramcj)
  {
    return new da(paramcj);
  }

  private static boolean b(cj paramcj, dh paramdh)
  {
    Iterator localIterator = paramcj.e().iterator();
    cq localcq;
    do
    {
      if (!localIterator.hasNext())
        break;
      localcq = (cq)localIterator.next();
    }
    while ((!localcq.k()) || (paramdh.a(localcq)));
    for (boolean bool = false; ; bool = paramdh.i())
      return bool;
  }

  private void d(cq paramcq)
  {
    if (paramcq.r() != this.a)
      throw new IllegalArgumentException("FieldDescriptor does not match message type.");
  }

  private cy g()
  {
    return a(this.a);
  }

  private da h()
  {
    return new da(this.a);
  }

  private da i()
  {
    return h().d(this);
  }

  public final cj C()
  {
    return this.a;
  }

  public final Object a(cq paramcq, int paramInt)
  {
    d(paramcq);
    return this.b.a(paramcq, paramInt);
  }

  public final void a(n paramn)
  {
    if (this.a.d().i())
    {
      this.b.b(paramn);
      this.c.b(paramn);
    }
    while (true)
    {
      return;
      this.b.a(paramn);
      this.c.a(paramn);
    }
  }

  public final boolean a()
  {
    return b(this.a, this.b);
  }

  public final boolean a(cq paramcq)
  {
    d(paramcq);
    return this.b.a(paramcq);
  }

  public final Map a_()
  {
    return this.b.g();
  }

  public final int b()
  {
    int i = this.d;
    if (i != -1)
      return i;
    if (this.a.d().i());
    for (i = this.b.k() + this.c.h(); ; i = this.b.j() + this.c.b())
    {
      this.d = i;
      break;
    }
  }

  public final Object b(cq paramcq)
  {
    d(paramcq);
    Object localObject = this.b.b(paramcq);
    if (localObject == null)
      if (paramcq.f() != cr.i)
        break label38;
    label38: for (localObject = a(paramcq.t()); ; localObject = paramcq.p())
      return localObject;
  }

  public final gg b_()
  {
    return this.c;
  }

  public final int c(cq paramcq)
  {
    d(paramcq);
    return this.b.d(paramcq);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.cy
 * JD-Core Version:    0.6.2
 */