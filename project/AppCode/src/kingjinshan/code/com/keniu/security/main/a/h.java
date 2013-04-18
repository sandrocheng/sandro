package com.keniu.security.main.a;

import android.content.Context;
import com.keniu.security.main.bn;
import com.keniu.security.malware.bz;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class h
  implements l
{
  public int a = 0;
  private Context b;
  private String c;
  private int d = 0;
  private j e = null;
  private i f = null;
  private boolean g = false;
  private long h = 0L;
  private List i = new ArrayList();
  private List j = null;

  private int c(m paramm)
  {
    int k = 0;
    Iterator localIterator = this.i.iterator();
    while (localIterator.hasNext())
    {
      m localm = (m)localIterator.next();
      if (localm == paramm)
        break;
      k += localm.d();
    }
    return k;
  }

  private void d(m paramm)
  {
    try
    {
      this.j.add(paramm);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int a(m paramm)
  {
    int k = c(paramm);
    this.c = paramm.a(k.k);
    this.e.b(paramm);
    this.e.a(this.c, k * 100 / this.d);
    return 0;
  }

  public final void a()
  {
    Iterator localIterator = this.i.iterator();
    while (localIterator.hasNext())
      localIterator.next();
    this.i.clear();
    this.b = null;
  }

  public final void a(Context paramContext)
  {
    this.b = paramContext;
    this.i.clear();
    this.i.add(new ag());
    this.i.add(new x());
    this.i.add(new p());
    this.i.add(new q());
    this.i.add(new af());
    this.i.add(new n());
    bz.a();
    if (bz.b())
      this.i.add(new a());
    this.i.add(new u());
    this.i.add(new w());
    this.i.add(new ab());
    Iterator localIterator = this.i.iterator();
    while (localIterator.hasNext())
    {
      m localm = (m)localIterator.next();
      localm.e();
      this.d += localm.d();
    }
  }

  public final void a(j paramj)
  {
    try
    {
      if (this.f == null)
      {
        this.j = new ArrayList();
        this.g = false;
        this.a = 0;
        this.e = paramj;
        this.f = new i(this);
        this.f.start();
        bn.a().a(bn.f, "param2", "false");
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean a(m paramm, int paramInt)
  {
    if (this.g);
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      int k = 100 * (c(paramm) + paramInt * paramm.d() / 100);
      this.e.a(this.c, k / this.d);
    }
  }

  public final int b(m paramm)
  {
    d(paramm);
    this.e.a(paramm);
    this.a = (1 + this.a);
    return 0;
  }

  public final List b()
  {
    try
    {
      List localList = this.j;
      return localList;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void c()
  {
    try
    {
      this.g = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean d()
  {
    try
    {
      i locali = this.f;
      if (locali != null)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  protected final void e()
  {
    try
    {
      this.e.h();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected final void f()
  {
    try
    {
      bn localbn = bn.a();
      if (!this.g)
      {
        localbn.a(bn.f, "param2", "true");
        localbn.a(bn.f, "param1", "true");
        String str = Long.toString(System.currentTimeMillis());
        localbn.a(bn.f, "param3", str);
      }
      this.e.b(this.g);
      this.f = null;
      this.e = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.a.h
 * JD-Core Version:    0.6.2
 */