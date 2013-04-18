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

public final class fe extends dk
  implements fg
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  private static final fe d;
  private static final long l;
  private int e;
  private Object f;
  private Object g;
  private Object h;
  private byte i = -1;
  private int k = -1;

  static
  {
    fe localfe = new fe();
    d = localfe;
    localfe.f = "";
    localfe.g = "";
    localfe.h = "";
  }

  private fe()
  {
  }

  private fe(ff paramff, byte paramByte)
  {
    super(paramff);
  }

  private static fe a(i parami)
  {
    return ff.a((ff)ff.i().a(parami));
  }

  private static fe a(i parami, df paramdf)
  {
    return ff.a((ff)ff.i().a(parami, paramdf));
  }

  private static fe a(m paramm)
  {
    return ff.a((ff)ff.i().a(paramm));
  }

  private static fe a(m paramm, df paramdf)
  {
    return ff.a(ff.i().e(paramm, paramdf));
  }

  private static fe a(InputStream paramInputStream)
  {
    return ff.a((ff)ff.i().a(paramInputStream));
  }

  private static fe a(InputStream paramInputStream, df paramdf)
  {
    return ff.a((ff)ff.i().a(paramInputStream, paramdf));
  }

  private static fe a(byte[] paramArrayOfByte)
  {
    return ff.a((ff)ff.i().a(paramArrayOfByte));
  }

  private static fe a(byte[] paramArrayOfByte, df paramdf)
  {
    return ff.a((ff)ff.i().a(paramArrayOfByte, paramdf));
  }

  private static ff a(fe paramfe)
  {
    return ff.i().a(paramfe);
  }

  private static fe b(InputStream paramInputStream)
  {
    ff localff = ff.i();
    if (localff.b(paramInputStream));
    for (fe localfe = ff.a(localff); ; localfe = null)
      return localfe;
  }

  private static fe b(InputStream paramInputStream, df paramdf)
  {
    ff localff = ff.i();
    if (localff.b(paramInputStream, paramdf));
    for (fe localfe = ff.a(localff); ; localfe = null)
      return localfe;
  }

  private static ff b(dp paramdp)
  {
    return new ff(paramdp);
  }

  public static fe h()
  {
    return d;
  }

  public static final cj i()
  {
    return a.D();
  }

  private static fe q()
  {
    return d;
  }

  private i r()
  {
    Object localObject = this.f;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.f = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private i s()
  {
    Object localObject = this.g;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.g = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private i t()
  {
    Object localObject = this.h;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.h = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private void u()
  {
    this.f = "";
    this.g = "";
    this.h = "";
  }

  private static ff v()
  {
    return ff.i();
  }

  private static ff w()
  {
    return ff.i();
  }

  private ff x()
  {
    return ff.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.e) == 1)
      paramn.a(1, r());
    if ((0x2 & this.e) == 2)
      paramn.a(2, s());
    if ((0x4 & this.e) == 4)
      paramn.a(3, t());
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
      else if (!l())
      {
        this.i = 0;
        bool = false;
      }
      else if (!n())
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
        n = 0 + n.c(1, r());
      if ((0x2 & this.e) == 2)
        n += n.c(2, s());
      if ((0x4 & this.e) == 4)
        n += n.c(3, t());
      j = n + b_().b();
      this.k = j;
    }
  }

  protected final dv g()
  {
    return a.E();
  }

  public final boolean j()
  {
    if ((0x1 & this.e) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String k()
  {
    Object localObject1 = this.f;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.f = str;
    }
  }

  public final boolean l()
  {
    if ((0x2 & this.e) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String m()
  {
    Object localObject1 = this.g;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.g = str;
    }
  }

  public final boolean n()
  {
    if ((0x4 & this.e) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String o()
  {
    Object localObject1 = this.h;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.h = str;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.fe
 * JD-Core Version:    0.6.2
 */