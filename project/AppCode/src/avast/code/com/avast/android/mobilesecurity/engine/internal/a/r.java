package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class r extends n
  implements s
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";

  private r()
  {
    m();
  }

  private void m()
  {
  }

  private static r n()
  {
    return new r();
  }

  public r a()
  {
    return n().a(d());
  }

  public r a(q paramq)
  {
    if (paramq == q.a());
    while (true)
    {
      return this;
      if (paramq.b())
        a(paramq.c());
      if (paramq.d())
        b(paramq.e());
      if (paramq.f())
        c(paramq.g());
    }
  }

  public r a(d paramd, g paramg)
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
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramd.l();
        break;
      case 18:
        this.a = (0x2 | this.a);
        this.c = paramd.l();
        break;
      case 26:
      }
      this.a = (0x4 | this.a);
      this.d = paramd.l();
    }
  }

  public r a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    return this;
  }

  public q b()
  {
    return q.a();
  }

  public r b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    return this;
  }

  public q c()
  {
    q localq = d();
    if (!localq.v())
      throw a(localq);
    return localq;
  }

  public r c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    return this;
  }

  public q d()
  {
    int i = 1;
    q localq = new q(this, null);
    int j = this.a;
    if ((j & 0x1) == i);
    while (true)
    {
      q.a(localq, this.b);
      if ((j & 0x2) == 2)
        i |= 2;
      q.b(localq, this.c);
      if ((j & 0x4) == 4)
        i |= 4;
      q.c(localq, this.d);
      q.a(localq, i);
      return localq;
      i = 0;
    }
  }

  public boolean e()
  {
    int i = 1;
    if ((0x1 & this.a) == i);
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  public boolean f()
  {
    if ((0x2 & this.a) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean k()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean v()
  {
    boolean bool1 = e();
    boolean bool2 = false;
    if (!bool1);
    while (true)
    {
      return bool2;
      boolean bool3 = f();
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = k();
        bool2 = false;
        if (bool4)
          bool2 = true;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.r
 * JD-Core Version:    0.6.2
 */