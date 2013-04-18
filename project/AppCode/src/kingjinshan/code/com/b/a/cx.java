package com.b.a;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class cx
  implements cv
{
  private final int a;
  private bp b;
  private final String c;
  private final ct d;
  private cw[] e;

  private cx(bp parambp, ct paramct, int paramInt, byte paramByte)
  {
    this.a = paramInt;
    this.b = parambp;
    this.c = ch.a(paramct, null, parambp.i());
    this.d = paramct;
    this.e = new cw[parambp.l()];
    for (int i = 0; i < parambp.l(); i++)
      this.e[i] = new cw(parambp.a(i), paramct, this, i);
    ct.a(paramct).a(this);
  }

  private cw a(String paramString)
  {
    cv localcv = ct.a(this.d).a(this.c + '.' + paramString);
    if ((localcv != null) && ((localcv instanceof cw)));
    for (cw localcw = (cw)localcv; ; localcw = null)
      return localcw;
  }

  private void a(bp parambp)
  {
    this.b = parambp;
    for (int i = 0; i < this.e.length; i++)
      cw.a(this.e[i], parambp.a(i));
  }

  private int d()
  {
    return this.a;
  }

  private bp e()
  {
    return this.b;
  }

  private bs f()
  {
    return this.b.n();
  }

  private List g()
  {
    return Collections.unmodifiableList(Arrays.asList(this.e));
  }

  private void h()
  {
    cw[] arrayOfcw = this.e;
    int i = arrayOfcw.length;
    for (int j = 0; j < i; j++)
      cw.a(arrayOfcw[j]);
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
 * Qualified Name:     com.b.a.cx
 * JD-Core Version:    0.6.2
 */