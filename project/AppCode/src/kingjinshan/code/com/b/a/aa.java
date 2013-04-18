package com.b.a;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class aa extends dr
  implements ac
{
  public static final int a = 999;
  private static final aa b;
  private static final long f;
  private List c;
  private byte d = -1;
  private int e = -1;

  static
  {
    aa localaa = new aa();
    b = localaa;
    localaa.c = Collections.emptyList();
  }

  private aa()
  {
  }

  private aa(ab paramab, byte paramByte)
  {
    super(paramab);
  }

  private static aa a(i parami)
  {
    return ab.a((ab)ab.o().a(parami));
  }

  private static aa a(i parami, df paramdf)
  {
    return ab.a((ab)ab.o().a(parami, paramdf));
  }

  private static aa a(m paramm)
  {
    return ab.a((ab)ab.o().a(paramm));
  }

  private static aa a(m paramm, df paramdf)
  {
    return ab.a(ab.o().e(paramm, paramdf));
  }

  private static aa a(InputStream paramInputStream)
  {
    return ab.a((ab)ab.o().a(paramInputStream));
  }

  private static aa a(InputStream paramInputStream, df paramdf)
  {
    return ab.a((ab)ab.o().a(paramInputStream, paramdf));
  }

  private static aa a(byte[] paramArrayOfByte)
  {
    return ab.a((ab)ab.o().a(paramArrayOfByte));
  }

  private static aa a(byte[] paramArrayOfByte, df paramdf)
  {
    return ab.a((ab)ab.o().a(paramArrayOfByte, paramdf));
  }

  public static ab a(aa paramaa)
  {
    return ab.o().a(paramaa);
  }

  private static aa b(InputStream paramInputStream)
  {
    ab localab = ab.o();
    if (localab.b(paramInputStream));
    for (aa localaa = ab.a(localab); ; localaa = null)
      return localaa;
  }

  private static aa b(InputStream paramInputStream, df paramdf)
  {
    ab localab = ab.o();
    if (localab.b(paramInputStream, paramdf));
    for (aa localaa = ab.a(localab); ; localaa = null)
      return localaa;
  }

  private static ab b(dp paramdp)
  {
    return new ab(paramdp);
  }

  public static aa e()
  {
    return b;
  }

  public static final cj f()
  {
    return p.z();
  }

  public static ab k()
  {
    return ab.o();
  }

  private static aa l()
  {
    return b;
  }

  private void m()
  {
    this.c = Collections.emptyList();
  }

  private static ab n()
  {
    return ab.o();
  }

  private ab o()
  {
    return ab.o().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final cb a(int paramInt)
  {
    return (cb)this.c.get(paramInt);
  }

  public final void a(n paramn)
  {
    b();
    ds localds = K();
    for (int i = 0; i < this.c.size(); i++)
      paramn.b(999, (ex)this.c.get(i));
    localds.a(paramn);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int i = this.d;
    boolean bool;
    if (i != -1)
      if (i == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      for (int j = 0; ; j++)
      {
        if (j >= j())
          break label61;
        if (!a(j).a())
        {
          this.d = 0;
          bool = false;
          break;
        }
      }
      label61: if (!J())
      {
        this.d = 0;
        bool = false;
      }
      else
      {
        this.d = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int i = 0;
    int j = this.e;
    if (j != -1);
    while (true)
    {
      return j;
      int k = 0;
      while (k < this.c.size())
      {
        int m = i + n.e(999, (ex)this.c.get(k));
        k++;
        i = m;
      }
      j = i + L() + b_().b();
      this.e = j;
    }
  }

  public final cg b(int paramInt)
  {
    return (cg)this.c.get(paramInt);
  }

  protected final dv g()
  {
    return p.A();
  }

  public final List g_()
  {
    return this.c;
  }

  public final List i()
  {
    return this.c;
  }

  public final int j()
  {
    return this.c.size();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.aa
 * JD-Core Version:    0.6.2
 */