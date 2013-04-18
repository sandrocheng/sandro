package com.b.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class gk
{
  private gj a;

  private static gk c()
  {
    gk localgk = new gk();
    localgk.a = new gj();
    return localgk;
  }

  private gk d()
  {
    this.a = new gj();
    return this;
  }

  public final gj a()
  {
    if (gj.a(this.a) == null)
    {
      gj.a(this.a, Collections.emptyList());
      if (gj.b(this.a) != null)
        break label140;
      gj.b(this.a, Collections.emptyList());
      label42: if (gj.c(this.a) != null)
        break label161;
      gj.c(this.a, Collections.emptyList());
      label63: if (gj.d(this.a) != null)
        break label182;
      gj.d(this.a, Collections.emptyList());
      label84: if (gj.e(this.a) != null)
        break label203;
      gj.e(this.a, Collections.emptyList());
    }
    while (true)
    {
      gj localgj = this.a;
      this.a = null;
      return localgj;
      gj.a(this.a, Collections.unmodifiableList(gj.a(this.a)));
      break;
      label140: gj.b(this.a, Collections.unmodifiableList(gj.b(this.a)));
      break label42;
      label161: gj.c(this.a, Collections.unmodifiableList(gj.c(this.a)));
      break label63;
      label182: gj.d(this.a, Collections.unmodifiableList(gj.d(this.a)));
      break label84;
      label203: gj.e(this.a, Collections.unmodifiableList(gj.e(this.a)));
    }
  }

  public final gk a(int paramInt)
  {
    if (gj.b(this.a) == null)
      gj.b(this.a, new ArrayList());
    gj.b(this.a).add(Integer.valueOf(paramInt));
    return this;
  }

  public final gk a(long paramLong)
  {
    if (gj.a(this.a) == null)
      gj.a(this.a, new ArrayList());
    gj.a(this.a).add(Long.valueOf(paramLong));
    return this;
  }

  public final gk a(gg paramgg)
  {
    if (gj.e(this.a) == null)
      gj.e(this.a, new ArrayList());
    gj.e(this.a).add(paramgg);
    return this;
  }

  public final gk a(gj paramgj)
  {
    if (!gj.a(paramgj).isEmpty())
    {
      if (gj.a(this.a) == null)
        gj.a(this.a, new ArrayList());
      gj.a(this.a).addAll(gj.a(paramgj));
    }
    if (!gj.b(paramgj).isEmpty())
    {
      if (gj.b(this.a) == null)
        gj.b(this.a, new ArrayList());
      gj.b(this.a).addAll(gj.b(paramgj));
    }
    if (!gj.c(paramgj).isEmpty())
    {
      if (gj.c(this.a) == null)
        gj.c(this.a, new ArrayList());
      gj.c(this.a).addAll(gj.c(paramgj));
    }
    if (!gj.d(paramgj).isEmpty())
    {
      if (gj.d(this.a) == null)
        gj.d(this.a, new ArrayList());
      gj.d(this.a).addAll(gj.d(paramgj));
    }
    if (!gj.e(paramgj).isEmpty())
    {
      if (gj.e(this.a) == null)
        gj.e(this.a, new ArrayList());
      gj.e(this.a).addAll(gj.e(paramgj));
    }
    return this;
  }

  public final gk a(i parami)
  {
    if (gj.d(this.a) == null)
      gj.d(this.a, new ArrayList());
    gj.d(this.a).add(parami);
    return this;
  }

  public final gk b(long paramLong)
  {
    if (gj.c(this.a) == null)
      gj.c(this.a, new ArrayList());
    gj.c(this.a).add(Long.valueOf(paramLong));
    return this;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.gk
 * JD-Core Version:    0.6.2
 */