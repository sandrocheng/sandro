package com.b.a;

public final class cw
  implements cv
{
  private final int a;
  private bj b;
  private final String c;
  private final ct d;
  private final cx e;
  private cj f;
  private cj g;

  private cw(bj parambj, ct paramct, cx paramcx, int paramInt, byte paramByte)
  {
    this.a = paramInt;
    this.b = parambj;
    this.d = paramct;
    this.e = paramcx;
    this.c = (paramcx.b() + '.' + parambj.i());
    ct.a(paramct).a(this);
  }

  private void a(bj parambj)
  {
    this.b = parambj;
  }

  private int d()
  {
    return this.a;
  }

  private bj e()
  {
    return this.b;
  }

  private cx f()
  {
    return this.e;
  }

  private cj g()
  {
    return this.f;
  }

  private cj h()
  {
    return this.g;
  }

  private bm j()
  {
    return this.b.o();
  }

  private void k()
  {
    cv localcv1 = ct.a(this.d).a(this.b.k(), this);
    if (!(localcv1 instanceof cj))
      throw new cn(this, '"' + this.b.k() + "\" is not a message type.");
    this.f = ((cj)localcv1);
    cv localcv2 = ct.a(this.d).a(this.b.m(), this);
    if (!(localcv2 instanceof cj))
      throw new cn(this, '"' + this.b.m() + "\" is not a message type.");
    this.g = ((cj)localcv2);
  }

  public final String a()
  {
    return this.b.i();
  }

  public final String b()
  {
    return this.c;
  }

  public final ct c()
  {
    return this.d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.cw
 * JD-Core Version:    0.6.2
 */