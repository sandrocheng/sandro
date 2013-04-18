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

public final class jb extends dk
  implements jd
{
  public static final int a = 1;
  public static final int b = 2;
  private static final jb c;
  private static final long i;
  private int d;
  private ge e;
  private List f;
  private byte g = -1;
  private int h = -1;

  static
  {
    jb localjb = new jb();
    c = localjb;
    localjb.e = ge.h();
    localjb.f = Collections.emptyList();
  }

  private jb()
  {
  }

  private jb(jc paramjc, byte paramByte)
  {
    super(paramjc);
  }

  private static jb a(i parami)
  {
    return jc.a((jc)jc.i().a(parami));
  }

  private static jb a(i parami, df paramdf)
  {
    return jc.a((jc)jc.i().a(parami, paramdf));
  }

  private static jb a(m paramm)
  {
    return jc.a((jc)jc.i().a(paramm));
  }

  private static jb a(m paramm, df paramdf)
  {
    return jc.a(jc.i().e(paramm, paramdf));
  }

  private static jb a(InputStream paramInputStream)
  {
    return jc.a((jc)jc.i().a(paramInputStream));
  }

  private static jb a(InputStream paramInputStream, df paramdf)
  {
    return jc.a((jc)jc.i().a(paramInputStream, paramdf));
  }

  private static jb a(byte[] paramArrayOfByte)
  {
    return jc.a((jc)jc.i().a(paramArrayOfByte));
  }

  private static jb a(byte[] paramArrayOfByte, df paramdf)
  {
    return jc.a((jc)jc.i().a(paramArrayOfByte, paramdf));
  }

  private static jb b(InputStream paramInputStream)
  {
    jc localjc = jc.i();
    if (localjc.b(paramInputStream));
    for (jb localjb = jc.a(localjc); ; localjb = null)
      return localjb;
  }

  private static jb b(InputStream paramInputStream, df paramdf)
  {
    jc localjc = jc.i();
    if (localjc.b(paramInputStream, paramdf));
    for (jb localjb = jc.a(localjc); ; localjb = null)
      return localjb;
  }

  private static jc b(dp paramdp)
  {
    return new jc(paramdp);
  }

  private static jc b(jb paramjb)
  {
    return jc.i().a(paramjb);
  }

  public static jb h()
  {
    return c;
  }

  public static final cj i()
  {
    return ih.z();
  }

  private static jb r()
  {
    return c;
  }

  private void s()
  {
    this.e = ge.h();
    this.f = Collections.emptyList();
  }

  private static jc t()
  {
    return jc.i();
  }

  private static jc u()
  {
    return jc.i();
  }

  private jc v()
  {
    return jc.i().a(this);
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
    return ih.A();
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.jb
 * JD-Core Version:    0.6.2
 */