package com.avast.a.a.a.a;

import com.google.a.am;
import com.google.a.c;
import com.google.a.d;
import com.google.a.g;
import com.google.a.n;
import com.google.a.y;
import com.google.a.z;

public final class k extends n
  implements l
{
  private int a;
  private long b;
  private Object c = "";
  private z d = y.a;
  private z e = y.a;
  private long f;
  private Object g = "";
  private int h;
  private c i = c.a;

  private k()
  {
    k();
  }

  private void k()
  {
  }

  private static k l()
  {
    return new k();
  }

  private void m()
  {
    if ((0x4 & this.a) != 4)
    {
      this.d = new y(this.d);
      this.a = (0x4 | this.a);
    }
  }

  private void n()
  {
    if ((0x8 & this.a) != 8)
    {
      this.e = new y(this.e);
      this.a = (0x8 | this.a);
    }
  }

  public k a()
  {
    return l().a(d());
  }

  public k a(int paramInt)
  {
    this.a = (0x40 | this.a);
    this.h = paramInt;
    return this;
  }

  public k a(long paramLong)
  {
    this.a = (0x1 | this.a);
    this.b = paramLong;
    return this;
  }

  public k a(j paramj)
  {
    if (paramj == j.a())
      return this;
    if (paramj.b())
      a(paramj.c());
    if (paramj.d())
      a(paramj.e());
    if (!j.b(paramj).isEmpty())
    {
      if (this.d.isEmpty())
      {
        this.d = j.b(paramj);
        this.a = (0xFFFFFFFB & this.a);
      }
    }
    else
      label84: if (!j.c(paramj).isEmpty())
      {
        if (!this.e.isEmpty())
          break label215;
        this.e = j.c(paramj);
        this.a = (0xFFFFFFF7 & this.a);
      }
    while (true)
    {
      if (paramj.h())
        b(paramj.i());
      if (paramj.j())
        b(paramj.k());
      if (paramj.l())
        a(paramj.m());
      if (!paramj.n())
        break;
      a(paramj.o());
      break;
      m();
      this.d.addAll(j.b(paramj));
      break label84;
      label215: n();
      this.e.addAll(j.c(paramj));
    }
  }

  public k a(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x80 | this.a);
    this.i = paramc;
    return this;
  }

  public k a(d paramd, g paramg)
  {
    while (true)
    {
      int j = paramd.a();
      switch (j)
      {
      default:
        if (a(paramd, paramg, j))
          continue;
      case 0:
        return this;
      case 8:
        this.a = (0x1 | this.a);
        this.b = paramd.f();
        break;
      case 18:
        this.a = (0x2 | this.a);
        this.c = paramd.l();
        break;
      case 26:
        m();
        this.d.a(paramd.l());
        break;
      case 34:
        n();
        this.e.a(paramd.l());
        break;
      case 40:
        this.a = (0x10 | this.a);
        this.f = paramd.f();
        break;
      case 50:
        this.a = (0x20 | this.a);
        this.g = paramd.l();
        break;
      case 56:
        this.a = (0x40 | this.a);
        this.h = paramd.g();
        break;
      case 66:
      }
      this.a = (0x80 | this.a);
      this.i = paramd.l();
    }
  }

  public k a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    return this;
  }

  public j b()
  {
    return j.a();
  }

  public k b(long paramLong)
  {
    this.a = (0x10 | this.a);
    this.f = paramLong;
    return this;
  }

  public k b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x20 | this.a);
    this.g = paramString;
    return this;
  }

  public j c()
  {
    j localj = d();
    if (!localj.v())
      throw a(localj);
    return localj;
  }

  public j d()
  {
    int j = 1;
    j localj = new j(this, null);
    int k = this.a;
    if ((k & 0x1) == j);
    while (true)
    {
      j.a(localj, this.b);
      if ((k & 0x2) == 2)
        j |= 2;
      j.a(localj, this.c);
      if ((0x4 & this.a) == 4)
      {
        this.d = new am(this.d);
        this.a = (0xFFFFFFFB & this.a);
      }
      j.a(localj, this.d);
      if ((0x8 & this.a) == 8)
      {
        this.e = new am(this.e);
        this.a = (0xFFFFFFF7 & this.a);
      }
      j.b(localj, this.e);
      if ((k & 0x10) == 16)
        j |= 4;
      j.b(localj, this.f);
      if ((k & 0x20) == 32)
        j |= 8;
      j.b(localj, this.g);
      if ((k & 0x40) == 64)
        j |= 16;
      j.a(localj, this.h);
      if ((k & 0x80) == 128)
        j |= 32;
      j.a(localj, this.i);
      j.b(localj, j);
      return localj;
      j = 0;
    }
  }

  public boolean e()
  {
    int j = 1;
    if ((0x1 & this.a) == j);
    while (true)
    {
      return j;
      int k = 0;
    }
  }

  public final boolean v()
  {
    if (!e());
    for (boolean bool = false; ; bool = true)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.a.a.a.a.k
 * JD-Core Version:    0.6.2
 */