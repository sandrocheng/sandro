package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
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

public final class jh extends dk
  implements jj
{
  public static final int a = 1;
  public static final int b = 2;
  private static final jh c;
  private static final long i;
  private int d;
  private ge e;
  private List f;
  private byte g = -1;
  private int h = -1;

  static
  {
    jh localjh = new jh();
    c = localjh;
    localjh.e = ge.h();
    localjh.f = Collections.emptyList();
  }

  private jh()
  {
  }

  private jh(ji paramji, byte paramByte)
  {
    super(paramji);
  }

  private static jh a(i parami)
  {
    return ji.a((ji)ji.i().a(parami));
  }

  private static jh a(i parami, df paramdf)
  {
    return ji.a((ji)ji.i().a(parami, paramdf));
  }

  private static jh a(m paramm)
  {
    return ji.a((ji)ji.i().a(paramm));
  }

  private static jh a(m paramm, df paramdf)
  {
    return ji.a(ji.i().e(paramm, paramdf));
  }

  private static jh a(InputStream paramInputStream)
  {
    return ji.a((ji)ji.i().a(paramInputStream));
  }

  private static jh a(InputStream paramInputStream, df paramdf)
  {
    return ji.a((ji)ji.i().a(paramInputStream, paramdf));
  }

  private static jh a(byte[] paramArrayOfByte)
  {
    return ji.a((ji)ji.i().a(paramArrayOfByte));
  }

  private static jh a(byte[] paramArrayOfByte, df paramdf)
  {
    return ji.a((ji)ji.i().a(paramArrayOfByte, paramdf));
  }

  private static jh b(InputStream paramInputStream)
  {
    ji localji = ji.i();
    if (localji.b(paramInputStream));
    for (jh localjh = ji.a(localji); ; localjh = null)
      return localjh;
  }

  private static jh b(InputStream paramInputStream, df paramdf)
  {
    ji localji = ji.i();
    if (localji.b(paramInputStream, paramdf));
    for (jh localjh = ji.a(localji); ; localjh = null)
      return localjh;
  }

  private static ji b(dp paramdp)
  {
    return new ji(paramdp);
  }

  private static ji b(jh paramjh)
  {
    return ji.i().a(paramjh);
  }

  public static jh h()
  {
    return c;
  }

  public static final cj i()
  {
    return ih.v();
  }

  private static jh r()
  {
    return c;
  }

  private void s()
  {
    this.e = ge.h();
    this.f = Collections.emptyList();
  }

  private static ji t()
  {
    return ji.i();
  }

  private static ji u()
  {
    return ji.i();
  }

  private ji v()
  {
    return ji.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final ip a(int paramInt)
  {
    return (ip)this.f.get(paramInt);
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

  public final ir b(int paramInt)
  {
    return (ir)this.f.get(paramInt);
  }

  protected final dv g()
  {
    return ih.w();
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.jh
 * JD-Core Version:    0.6.2
 */