package com.b.a;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class bs extends dr
  implements bu
{
  public static final int a = 999;
  private static final bs b;
  private static final long f;
  private List c;
  private byte d = -1;
  private int e = -1;

  static
  {
    bs localbs = new bs();
    b = localbs;
    localbs.c = Collections.emptyList();
  }

  private bs()
  {
  }

  private bs(bt parambt, byte paramByte)
  {
    super(parambt);
  }

  private static bs a(i parami)
  {
    return bt.a((bt)bt.o().a(parami));
  }

  private static bs a(i parami, df paramdf)
  {
    return bt.a((bt)bt.o().a(parami, paramdf));
  }

  private static bs a(m paramm)
  {
    return bt.a((bt)bt.o().a(paramm));
  }

  private static bs a(m paramm, df paramdf)
  {
    return bt.a(bt.o().e(paramm, paramdf));
  }

  private static bs a(InputStream paramInputStream)
  {
    return bt.a((bt)bt.o().a(paramInputStream));
  }

  private static bs a(InputStream paramInputStream, df paramdf)
  {
    return bt.a((bt)bt.o().a(paramInputStream, paramdf));
  }

  private static bs a(byte[] paramArrayOfByte)
  {
    return bt.a((bt)bt.o().a(paramArrayOfByte));
  }

  private static bs a(byte[] paramArrayOfByte, df paramdf)
  {
    return bt.a((bt)bt.o().a(paramArrayOfByte, paramdf));
  }

  public static bt a(bs parambs)
  {
    return bt.o().a(parambs);
  }

  private static bs b(InputStream paramInputStream)
  {
    bt localbt = bt.o();
    if (localbt.b(paramInputStream));
    for (bs localbs = bt.a(localbt); ; localbs = null)
      return localbs;
  }

  private static bs b(InputStream paramInputStream, df paramdf)
  {
    bt localbt = bt.o();
    if (localbt.b(paramInputStream, paramdf));
    for (bs localbs = bt.a(localbt); ; localbs = null)
      return localbs;
  }

  private static bt b(dp paramdp)
  {
    return new bt(paramdp);
  }

  public static bs e()
  {
    return b;
  }

  public static final cj f()
  {
    return p.D();
  }

  public static bt k()
  {
    return bt.o();
  }

  private static bs l()
  {
    return b;
  }

  private void m()
  {
    this.c = Collections.emptyList();
  }

  private static bt n()
  {
    return bt.o();
  }

  private bt o()
  {
    return bt.o().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final List C_()
  {
    return this.c;
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
    return p.E();
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
 * Qualified Name:     com.b.a.bs
 * JD-Core Version:    0.6.2
 */