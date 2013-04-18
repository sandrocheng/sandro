package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ex;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class dr extends com.b.a.dk
  implements dt
{
  public static final int a = 1;
  public static final int b = 2;
  private static final dr c;
  private static final long i;
  private int d;
  private ge e;
  private List f;
  private byte g = -1;
  private int h = -1;

  static
  {
    dr localdr = new dr();
    c = localdr;
    localdr.e = ge.h();
    localdr.f = Collections.emptyList();
  }

  private dr()
  {
  }

  private dr(ds paramds, byte paramByte)
  {
    super(paramds);
  }

  private static dr a(i parami)
  {
    return ds.a((ds)ds.i().a(parami));
  }

  private static dr a(i parami, df paramdf)
  {
    return ds.a((ds)ds.i().a(parami, paramdf));
  }

  private static dr a(m paramm)
  {
    return ds.a((ds)ds.i().a(paramm));
  }

  private static dr a(m paramm, df paramdf)
  {
    return ds.a(ds.i().e(paramm, paramdf));
  }

  public static dr a(InputStream paramInputStream)
  {
    return ds.a((ds)ds.i().a(paramInputStream));
  }

  private static dr a(InputStream paramInputStream, df paramdf)
  {
    return ds.a((ds)ds.i().a(paramInputStream, paramdf));
  }

  private static dr a(byte[] paramArrayOfByte)
  {
    return ds.a((ds)ds.i().a(paramArrayOfByte));
  }

  private static dr a(byte[] paramArrayOfByte, df paramdf)
  {
    return ds.a((ds)ds.i().a(paramArrayOfByte, paramdf));
  }

  private static dr b(InputStream paramInputStream)
  {
    ds localds = ds.i();
    if (localds.b(paramInputStream));
    for (dr localdr = ds.a(localds); ; localdr = null)
      return localdr;
  }

  private static dr b(InputStream paramInputStream, df paramdf)
  {
    ds localds = ds.i();
    if (localds.b(paramInputStream, paramdf));
    for (dr localdr = ds.a(localds); ; localdr = null)
      return localdr;
  }

  private static ds b(dp paramdp)
  {
    return new ds(paramdp);
  }

  private static ds b(dr paramdr)
  {
    return ds.i().a(paramdr);
  }

  public static dr h()
  {
    return c;
  }

  public static final cj i()
  {
    return a.af();
  }

  private static dr r()
  {
    return c;
  }

  private void s()
  {
    this.e = ge.h();
    this.f = Collections.emptyList();
  }

  private static ds t()
  {
    return ds.i();
  }

  private static ds u()
  {
    return ds.i();
  }

  private ds v()
  {
    return ds.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final di a(int paramInt)
  {
    return (di)this.f.get(paramInt);
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

  public final dk b(int paramInt)
  {
    return (dk)this.f.get(paramInt);
  }

  protected final dv g()
  {
    return a.ag();
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.dr
 * JD-Core Version:    0.6.2
 */