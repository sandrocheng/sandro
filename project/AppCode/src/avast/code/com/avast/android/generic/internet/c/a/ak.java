package com.avast.android.generic.internet.c.a;

import com.google.a.d;
import com.google.a.g;
import com.google.a.n;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ak extends n
  implements al
{
  private int a;
  private az b = az.a;
  private List c = Collections.emptyList();

  private ak()
  {
    f();
  }

  private void f()
  {
  }

  private static ak k()
  {
    return new ak();
  }

  private void l()
  {
    if ((0x2 & this.a) != 2)
    {
      this.c = new ArrayList(this.c);
      this.a = (0x2 | this.a);
    }
  }

  public ak a()
  {
    return k().a(d());
  }

  public ak a(aj paramaj)
  {
    if (paramaj == aj.a());
    while (true)
    {
      return this;
      if (paramaj.b())
        a(paramaj.c());
      if (!aj.b(paramaj).isEmpty())
        if (this.c.isEmpty())
        {
          this.c = aj.b(paramaj);
          this.a = (0xFFFFFFFD & this.a);
        }
        else
        {
          l();
          this.c.addAll(aj.b(paramaj));
        }
    }
  }

  public ak a(ap paramap)
  {
    if (paramap == null)
      throw new NullPointerException();
    l();
    this.c.add(paramap);
    return this;
  }

  public ak a(az paramaz)
  {
    if (paramaz == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramaz;
    return this;
  }

  public ak a(d paramd, g paramg)
  {
    while (true)
    {
      int i = paramd.a();
      switch (i)
      {
      default:
        if (a(paramd, paramg, i))
          continue;
      case 0:
        return this;
      case 8:
        az localaz = az.a(paramd.n());
        if (localaz == null)
          continue;
        this.a = (0x1 | this.a);
        this.b = localaz;
        break;
      case 18:
      }
      aq localaq = ap.h();
      paramd.a(localaq, paramg);
      a(localaq.d());
    }
  }

  public aj b()
  {
    return aj.a();
  }

  public aj c()
  {
    aj localaj = d();
    if (!localaj.v())
      throw a(localaj);
    return localaj;
  }

  public aj d()
  {
    int i = 1;
    aj localaj = new aj(this, null);
    if ((0x1 & this.a) == i);
    while (true)
    {
      aj.a(localaj, this.b);
      if ((0x2 & this.a) == 2)
      {
        this.c = Collections.unmodifiableList(this.c);
        this.a = (0xFFFFFFFD & this.a);
      }
      aj.a(localaj, this.c);
      aj.a(localaj, i);
      return localaj;
      i = 0;
    }
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.ak
 * JD-Core Version:    0.6.2
 */