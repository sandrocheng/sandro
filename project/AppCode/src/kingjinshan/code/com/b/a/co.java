package com.b.a;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class co
  implements cv, er
{
  private final int a;
  private x b;
  private final String c;
  private final ct d;
  private final cj e;
  private cp[] f;

  private co(x paramx, ct paramct, cj paramcj, int paramInt, byte paramByte)
  {
    this.a = paramInt;
    this.b = paramx;
    this.c = ch.a(paramct, paramcj, paramx.i());
    this.d = paramct;
    this.e = paramcj;
    if (paramx.l() == 0)
      throw new cn(this, "Enums must contain at least one value.");
    this.f = new cp[paramx.l()];
    for (int i = 0; i < paramx.l(); i++)
      this.f[i] = new cp(paramx.a(i), paramct, this, i);
    ct.a(paramct).a(this);
  }

  private void a(x paramx)
  {
    this.b = paramx;
    for (int i = 0; i < this.f.length; i++)
      cp.a(this.f[i], paramx.a(i));
  }

  private int e()
  {
    return this.a;
  }

  private x f()
  {
    return this.b;
  }

  private cj g()
  {
    return this.e;
  }

  private aa h()
  {
    return this.b.n();
  }

  public final cp a(String paramString)
  {
    cv localcv = ct.a(this.d).a(this.c + '.' + paramString);
    if ((localcv != null) && ((localcv instanceof cp)));
    for (cp localcp = (cp)localcv; ; localcp = null)
      return localcp;
  }

  public final String a()
  {
    return this.b.i();
  }

  public final cp b(int paramInt)
  {
    return (cp)ck.b(ct.a(this.d)).get(new cl(this, paramInt));
  }

  public final String b()
  {
    return this.c;
  }

  public final ct c()
  {
    return this.d;
  }

  public final List d()
  {
    return Collections.unmodifiableList(Arrays.asList(this.f));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.co
 * JD-Core Version:    0.6.2
 */