package com.avast.a.a.a;

import com.google.a.e;
import com.google.a.l;
import com.google.a.y;
import com.google.a.z;
import java.io.InputStream;
import java.util.List;

public final class h extends l
  implements j
{
  private static final h a = new h(true);
  private int b;
  private int c;
  private z d;
  private boolean e;
  private boolean f;
  private boolean g;
  private boolean h;
  private boolean i;
  private boolean j;
  private boolean k;
  private boolean l;
  private boolean m;
  private boolean n;
  private boolean o;
  private int p;
  private boolean q;
  private byte r = -1;
  private int s = -1;

  static
  {
    a.M();
  }

  private h(i parami)
  {
    super(parami);
  }

  private h(boolean paramBoolean)
  {
  }

  public static i J()
  {
    return i.f();
  }

  private void M()
  {
    this.c = 0;
    this.d = y.a;
    this.e = false;
    this.f = false;
    this.g = false;
    this.h = false;
    this.i = false;
    this.j = false;
    this.k = false;
    this.l = false;
    this.m = false;
    this.n = false;
    this.o = false;
    this.p = 0;
    this.q = false;
  }

  public static h a()
  {
    return a;
  }

  public static h a(InputStream paramInputStream)
  {
    return i.a((i)J().a(paramInputStream));
  }

  public static h a(byte[] paramArrayOfByte)
  {
    return i.a((i)J().a(paramArrayOfByte));
  }

  public static i a(h paramh)
  {
    return J().a(paramh);
  }

  public boolean C()
  {
    return this.n;
  }

  public boolean D()
  {
    if ((0x800 & this.b) == 2048);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean E()
  {
    return this.o;
  }

  public boolean F()
  {
    if ((0x1000 & this.b) == 4096);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int G()
  {
    return this.p;
  }

  public boolean H()
  {
    if ((0x2000 & this.b) == 8192);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean I()
  {
    return this.q;
  }

  public i K()
  {
    return J();
  }

  public i L()
  {
    return a(this);
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.a(1, this.c);
    for (int i1 = 0; i1 < this.d.size(); i1++)
      parame.a(2, this.d.c(i1));
    if ((0x2 & this.b) == 2)
      parame.a(3, this.e);
    if ((0x4 & this.b) == 4)
      parame.a(4, this.f);
    if ((0x8 & this.b) == 8)
      parame.a(5, this.g);
    if ((0x10 & this.b) == 16)
      parame.a(6, this.h);
    if ((0x20 & this.b) == 32)
      parame.a(7, this.i);
    if ((0x40 & this.b) == 64)
      parame.a(8, this.j);
    if ((0x80 & this.b) == 128)
      parame.a(9, this.k);
    if ((0x100 & this.b) == 256)
      parame.a(10, this.l);
    if ((0x200 & this.b) == 512)
      parame.a(11, this.m);
    if ((0x400 & this.b) == 1024)
      parame.a(12, this.n);
    if ((0x800 & this.b) == 2048)
      parame.a(13, this.o);
    if ((0x1000 & this.b) == 4096)
      parame.a(14, this.p);
    if ((0x2000 & this.b) == 8192)
      parame.a(15, this.q);
  }

  public boolean b()
  {
    int i1 = 1;
    if ((0x1 & this.b) == i1);
    while (true)
    {
      return i1;
      int i2 = 0;
    }
  }

  public int c()
  {
    return this.c;
  }

  public List d()
  {
    return this.d;
  }

  public int e()
  {
    return this.d.size();
  }

  public boolean f()
  {
    if ((0x2 & this.b) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean g()
  {
    return this.e;
  }

  public boolean h()
  {
    if ((0x4 & this.b) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean i()
  {
    return this.f;
  }

  public boolean j()
  {
    if ((0x8 & this.b) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean k()
  {
    return this.g;
  }

  public boolean l()
  {
    if ((0x10 & this.b) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean m()
  {
    return this.h;
  }

  public boolean n()
  {
    if ((0x20 & this.b) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean o()
  {
    return this.i;
  }

  public boolean p()
  {
    if ((0x40 & this.b) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean q()
  {
    return this.j;
  }

  public boolean r()
  {
    if ((0x80 & this.b) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean s()
  {
    return this.k;
  }

  public boolean t()
  {
    if ((0x100 & this.b) == 256);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean u()
  {
    return this.l;
  }

  public final boolean v()
  {
    int i1 = 1;
    int i2 = this.r;
    if (i2 != -1)
      if (i2 != i1);
    while (true)
    {
      return i1;
      i1 = 0;
      continue;
      if (!b())
      {
        this.r = 0;
        i1 = 0;
      }
      else
      {
        this.r = i1;
      }
    }
  }

  public int w()
  {
    int i1 = 0;
    int i2 = this.s;
    if (i2 != -1)
      return i2;
    if ((0x1 & this.b) == 1);
    for (int i3 = 0 + e.e(1, this.c); ; i3 = 0)
    {
      int i4 = 0;
      while (i1 < this.d.size())
      {
        i4 += e.b(this.d.c(i1));
        i1++;
      }
      i2 = i3 + i4 + 1 * d().size();
      if ((0x2 & this.b) == 2)
        i2 += e.b(3, this.e);
      if ((0x4 & this.b) == 4)
        i2 += e.b(4, this.f);
      if ((0x8 & this.b) == 8)
        i2 += e.b(5, this.g);
      if ((0x10 & this.b) == 16)
        i2 += e.b(6, this.h);
      if ((0x20 & this.b) == 32)
        i2 += e.b(7, this.i);
      if ((0x40 & this.b) == 64)
        i2 += e.b(8, this.j);
      if ((0x80 & this.b) == 128)
        i2 += e.b(9, this.k);
      if ((0x100 & this.b) == 256)
        i2 += e.b(10, this.l);
      if ((0x200 & this.b) == 512)
        i2 += e.b(11, this.m);
      if ((0x400 & this.b) == 1024)
        i2 += e.b(12, this.n);
      if ((0x800 & this.b) == 2048)
        i2 += e.b(13, this.o);
      if ((0x1000 & this.b) == 4096)
        i2 += e.e(14, this.p);
      if ((0x2000 & this.b) == 8192)
        i2 += e.b(15, this.q);
      this.s = i2;
      break;
    }
  }

  public boolean x()
  {
    if ((0x200 & this.b) == 512);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean y()
  {
    return this.m;
  }

  public boolean z()
  {
    if ((0x400 & this.b) == 1024);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.a.a.a.h
 * JD-Core Version:    0.6.2
 */