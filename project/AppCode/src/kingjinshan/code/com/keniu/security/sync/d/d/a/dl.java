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

public final class dl extends dk
  implements dn
{
  public static final int a = 1;
  public static final int b = 2;
  private static final dl c;
  private static final long i;
  private int d;
  private ge e;
  private List f;
  private byte g = -1;
  private int h = -1;

  static
  {
    dl localdl = new dl();
    c = localdl;
    localdl.e = ge.h();
    localdl.f = Collections.emptyList();
  }

  private dl()
  {
  }

  private dl(dm paramdm, byte paramByte)
  {
    super(paramdm);
  }

  private static dl a(i parami)
  {
    return dm.a((dm)dm.i().a(parami));
  }

  private static dl a(i parami, df paramdf)
  {
    return dm.a((dm)dm.i().a(parami, paramdf));
  }

  private static dl a(m paramm)
  {
    return dm.a((dm)dm.i().a(paramm));
  }

  private static dl a(m paramm, df paramdf)
  {
    return dm.a(dm.i().e(paramm, paramdf));
  }

  private static dl a(InputStream paramInputStream)
  {
    return dm.a((dm)dm.i().a(paramInputStream));
  }

  private static dl a(InputStream paramInputStream, df paramdf)
  {
    return dm.a((dm)dm.i().a(paramInputStream, paramdf));
  }

  private static dl a(byte[] paramArrayOfByte)
  {
    return dm.a((dm)dm.i().a(paramArrayOfByte));
  }

  private static dl a(byte[] paramArrayOfByte, df paramdf)
  {
    return dm.a((dm)dm.i().a(paramArrayOfByte, paramdf));
  }

  private static dl b(InputStream paramInputStream)
  {
    dm localdm = dm.i();
    if (localdm.b(paramInputStream));
    for (dl localdl = dm.a(localdm); ; localdl = null)
      return localdl;
  }

  private static dl b(InputStream paramInputStream, df paramdf)
  {
    dm localdm = dm.i();
    if (localdm.b(paramInputStream, paramdf));
    for (dl localdl = dm.a(localdm); ; localdl = null)
      return localdl;
  }

  private static dm b(dp paramdp)
  {
    return new dm(paramdp);
  }

  private static dm b(dl paramdl)
  {
    return dm.i().a(paramdl);
  }

  public static dl h()
  {
    return c;
  }

  public static final cj i()
  {
    return a.ah();
  }

  private static dl r()
  {
    return c;
  }

  private void s()
  {
    this.e = ge.h();
    this.f = Collections.emptyList();
  }

  private static dm t()
  {
    return dm.i();
  }

  private static dm u()
  {
    return dm.i();
  }

  private dm v()
  {
    return dm.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final gq a(int paramInt)
  {
    return (gq)this.f.get(paramInt);
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

  public final gs b(int paramInt)
  {
    return (gs)this.f.get(paramInt);
  }

  protected final dv g()
  {
    return a.ai();
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.dl
 * JD-Core Version:    0.6.2
 */