package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.dk;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ex;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class df extends dk
  implements dh
{
  public static final int a = 1;
  public static final int b = 2;
  private static final df c;
  private static final long i;
  private int d;
  private ge e;
  private List f;
  private byte g = -1;
  private int h = -1;

  static
  {
    df localdf = new df();
    c = localdf;
    localdf.e = ge.h();
    localdf.f = Collections.emptyList();
  }

  private df()
  {
  }

  private df(dg paramdg, byte paramByte)
  {
    super(paramdg);
  }

  private static df a(i parami)
  {
    return dg.a((dg)dg.i().a(parami));
  }

  private static df a(i parami, com.b.a.df paramdf)
  {
    return dg.a((dg)dg.i().a(parami, paramdf));
  }

  private static df a(m paramm)
  {
    return dg.a((dg)dg.i().a(paramm));
  }

  private static df a(m paramm, com.b.a.df paramdf)
  {
    return dg.a(dg.i().e(paramm, paramdf));
  }

  private static df a(InputStream paramInputStream)
  {
    return dg.a((dg)dg.i().a(paramInputStream));
  }

  private static df a(InputStream paramInputStream, com.b.a.df paramdf)
  {
    return dg.a((dg)dg.i().a(paramInputStream, paramdf));
  }

  private static df a(byte[] paramArrayOfByte)
  {
    return dg.a((dg)dg.i().a(paramArrayOfByte));
  }

  private static df a(byte[] paramArrayOfByte, com.b.a.df paramdf)
  {
    return dg.a((dg)dg.i().a(paramArrayOfByte, paramdf));
  }

  private static df b(InputStream paramInputStream)
  {
    dg localdg = dg.i();
    if (localdg.b(paramInputStream));
    for (df localdf = dg.a(localdg); ; localdf = null)
      return localdf;
  }

  private static df b(InputStream paramInputStream, com.b.a.df paramdf)
  {
    dg localdg = dg.i();
    if (localdg.b(paramInputStream, paramdf));
    for (df localdf = dg.a(localdg); ; localdf = null)
      return localdf;
  }

  private static dg b(dp paramdp)
  {
    return new dg(paramdp);
  }

  private static dg b(df paramdf)
  {
    return dg.i().a(paramdf);
  }

  public static df h()
  {
    return c;
  }

  public static final cj i()
  {
    return a.bp();
  }

  private static df r()
  {
    return c;
  }

  private void s()
  {
    this.e = ge.h();
    this.f = Collections.emptyList();
  }

  private static dg t()
  {
    return dg.i();
  }

  private static dg u()
  {
    return dg.i();
  }

  private dg v()
  {
    return dg.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final gn a(int paramInt)
  {
    return (gn)this.f.get(paramInt);
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.d) == 1)
      paramn.b(1, this.e);
    for (int j = 0; j < this.f.size(); j++)
      paramn.b(2, (ex)this.f.get(j));
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.g;
    boolean bool;
    if (j != -1)
      if (j == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      if (!j())
      {
        this.g = 0;
        bool = false;
      }
      else if (!this.e.a())
      {
        this.g = 0;
        bool = false;
      }
      else
      {
        for (int k = 0; ; k++)
        {
          if (k >= o())
            break label98;
          if (!a(k).a())
          {
            this.g = 0;
            bool = false;
            break;
          }
        }
        label98: this.g = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = this.h;
    if (j != -1)
      return j;
    if ((0x1 & this.d) == 1);
    for (int k = 0 + n.e(1, this.e); ; k = 0)
    {
      int m = 0;
      int i1;
      for (int n = k; m < this.f.size(); n = i1)
      {
        i1 = n + n.e(2, (ex)this.f.get(m));
        m++;
      }
      j = n + b_().b();
      this.h = j;
      break;
    }
  }

  public final gp b(int paramInt)
  {
    return (gp)this.f.get(paramInt);
  }

  protected final dv g()
  {
    return a.bq();
  }

  public final boolean j()
  {
    if ((0x1 & this.d) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ge k()
  {
    return this.e;
  }

  public final gg l()
  {
    return this.e;
  }

  public final List m()
  {
    return this.f;
  }

  public final List n()
  {
    return this.f;
  }

  public final int o()
  {
    return this.f.size();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.df
 * JD-Core Version:    0.6.2
 */