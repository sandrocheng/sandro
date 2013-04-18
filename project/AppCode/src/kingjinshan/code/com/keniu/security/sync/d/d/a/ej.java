package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dk;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;

public final class ej extends dk
  implements el
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  private static final ej d;
  private static final long l;
  private int e;
  private ge f;
  private gj g;
  private gy h;
  private byte i = -1;
  private int k = -1;

  static
  {
    ej localej = new ej();
    d = localej;
    localej.f = ge.h();
    localej.g = gj.h();
    localej.h = gy.h();
  }

  private ej()
  {
  }

  private ej(ek paramek, byte paramByte)
  {
    super(paramek);
  }

  private static ej a(i parami)
  {
    return ek.a((ek)ek.i().a(parami));
  }

  private static ej a(i parami, df paramdf)
  {
    return ek.a((ek)ek.i().a(parami, paramdf));
  }

  private static ej a(m paramm)
  {
    return ek.a((ek)ek.i().a(paramm));
  }

  private static ej a(m paramm, df paramdf)
  {
    return ek.a(ek.i().e(paramm, paramdf));
  }

  private static ej a(InputStream paramInputStream)
  {
    return ek.a((ek)ek.i().a(paramInputStream));
  }

  private static ej a(InputStream paramInputStream, df paramdf)
  {
    return ek.a((ek)ek.i().a(paramInputStream, paramdf));
  }

  private static ej a(byte[] paramArrayOfByte)
  {
    return ek.a((ek)ek.i().a(paramArrayOfByte));
  }

  private static ej a(byte[] paramArrayOfByte, df paramdf)
  {
    return ek.a((ek)ek.i().a(paramArrayOfByte, paramdf));
  }

  private static ek a(ej paramej)
  {
    return ek.i().a(paramej);
  }

  private static ej b(InputStream paramInputStream)
  {
    ek localek = ek.i();
    if (localek.b(paramInputStream));
    for (ej localej = ek.a(localek); ; localej = null)
      return localej;
  }

  private static ej b(InputStream paramInputStream, df paramdf)
  {
    ek localek = ek.i();
    if (localek.b(paramInputStream, paramdf));
    for (ej localej = ek.a(localek); ; localej = null)
      return localej;
  }

  private static ek b(dp paramdp)
  {
    return new ek(paramdp);
  }

  public static ej h()
  {
    return d;
  }

  public static final cj i()
  {
    return a.al();
  }

  private static ej t()
  {
    return d;
  }

  private void u()
  {
    this.f = ge.h();
    this.g = gj.h();
    this.h = gy.h();
  }

  private static ek v()
  {
    return ek.i();
  }

  private static ek w()
  {
    return ek.i();
  }

  private ek x()
  {
    return ek.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.e) == 1)
      paramn.b(1, this.f);
    if ((0x2 & this.e) == 2)
      paramn.b(2, this.g);
    if ((0x4 & this.e) == 4)
      paramn.b(3, this.h);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.i;
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
        this.i = 0;
        bool = false;
      }
      else if (!this.f.a())
      {
        this.i = 0;
        bool = false;
      }
      else
      {
        this.i = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = this.k;
    if (j != -1);
    while (true)
    {
      return j;
      int m = 0x1 & this.e;
      int n = 0;
      if (m == 1)
        n = 0 + n.e(1, this.f);
      if ((0x2 & this.e) == 2)
        n += n.e(2, this.g);
      if ((0x4 & this.e) == 4)
        n += n.e(3, this.h);
      j = n + b_().b();
      this.k = j;
    }
  }

  protected final dv g()
  {
    return a.am();
  }

  public final boolean j()
  {
    if ((0x1 & this.e) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ge k()
  {
    return this.f;
  }

  public final gg l()
  {
    return this.f;
  }

  public final boolean m()
  {
    if ((0x2 & this.e) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gj n()
  {
    return this.g;
  }

  public final gl o()
  {
    return this.g;
  }

  public final boolean p()
  {
    if ((0x4 & this.e) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gy q()
  {
    return this.h;
  }

  public final ha r()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.ej
 * JD-Core Version:    0.6.2
 */