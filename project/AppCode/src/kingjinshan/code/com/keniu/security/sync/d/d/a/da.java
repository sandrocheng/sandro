package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dk;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ep;
import com.b.a.gg;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;

public final class da extends dk
  implements de
{
  public static final int a = 1;
  public static final int b = 2;
  private static final da c;
  private static final long i;
  private int d;
  private Object e;
  private int f;
  private byte g = -1;
  private int h = -1;

  static
  {
    da localda = new da();
    c = localda;
    localda.e = "";
    localda.f = 0;
  }

  private da()
  {
  }

  private da(db paramdb, byte paramByte)
  {
    super(paramdb);
  }

  private static da a(i parami)
  {
    return db.a((db)db.i().a(parami));
  }

  private static da a(i parami, df paramdf)
  {
    return db.a((db)db.i().a(parami, paramdf));
  }

  private static da a(m paramm)
  {
    return db.a((db)db.i().a(paramm));
  }

  private static da a(m paramm, df paramdf)
  {
    return db.a(db.i().e(paramm, paramdf));
  }

  private static da a(InputStream paramInputStream)
  {
    return db.a((db)db.i().a(paramInputStream));
  }

  private static da a(InputStream paramInputStream, df paramdf)
  {
    return db.a((db)db.i().a(paramInputStream, paramdf));
  }

  private static da a(byte[] paramArrayOfByte)
  {
    return db.a((db)db.i().a(paramArrayOfByte));
  }

  private static da a(byte[] paramArrayOfByte, df paramdf)
  {
    return db.a((db)db.i().a(paramArrayOfByte, paramdf));
  }

  private static db a(da paramda)
  {
    return db.i().a(paramda);
  }

  private static da b(InputStream paramInputStream)
  {
    db localdb = db.i();
    if (localdb.b(paramInputStream));
    for (da localda = db.a(localdb); ; localda = null)
      return localda;
  }

  private static da b(InputStream paramInputStream, df paramdf)
  {
    db localdb = db.i();
    if (localdb.b(paramInputStream, paramdf));
    for (da localda = db.a(localdb); ; localda = null)
      return localda;
  }

  private static db b(dp paramdp)
  {
    return new db(paramdp);
  }

  public static da h()
  {
    return c;
  }

  public static final cj i()
  {
    return a.bn();
  }

  private static da o()
  {
    return c;
  }

  private i p()
  {
    Object localObject = this.e;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.e = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private void q()
  {
    this.e = "";
    this.f = 0;
  }

  private static db r()
  {
    return db.i();
  }

  private static db s()
  {
    return db.i();
  }

  private db t()
  {
    return db.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.d) == 1)
      paramn.a(1, p());
    if ((0x2 & this.d) == 2)
      paramn.a(2, this.f);
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
      else if (!l())
      {
        this.g = 0;
        bool = false;
      }
      else
      {
        this.g = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = this.h;
    if (j != -1);
    while (true)
    {
      return j;
      int k = 0x1 & this.d;
      int m = 0;
      if (k == 1)
        m = 0 + n.c(1, p());
      if ((0x2 & this.d) == 2)
        m += n.d(2, this.f);
      j = m + b_().b();
      this.h = j;
    }
  }

  protected final dv g()
  {
    return a.bo();
  }

  public final boolean j()
  {
    if ((0x1 & this.d) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String k()
  {
    Object localObject1 = this.e;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.e = str;
    }
  }

  public final boolean l()
  {
    if ((0x2 & this.d) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int m()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.da
 * JD-Core Version:    0.6.2
 */