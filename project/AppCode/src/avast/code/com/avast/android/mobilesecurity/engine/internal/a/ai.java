package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.e;
import com.google.a.l;

public final class ai extends l
  implements ak
{
  private static final ai a = new ai(true);
  private int b;
  private ar c;
  private ac d;
  private w e;
  private af f;
  private byte g = -1;
  private int h = -1;

  static
  {
    a.m();
  }

  private ai(aj paramaj)
  {
    super(paramaj);
  }

  private ai(boolean paramBoolean)
  {
  }

  public static ai a()
  {
    return a;
  }

  public static aj a(ai paramai)
  {
    return j().a(paramai);
  }

  public static aj j()
  {
    return aj.q();
  }

  private void m()
  {
    this.c = ar.a();
    this.d = ac.a();
    this.e = w.a();
    this.f = af.a();
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.b(1, this.c);
    if ((0x2 & this.b) == 2)
      parame.b(2, this.d);
    if ((0x4 & this.b) == 4)
      parame.b(3, this.e);
    if ((0x8 & this.b) == 8)
      parame.b(4, this.f);
  }

  public boolean b()
  {
    int i = 1;
    if ((0x1 & this.b) == i);
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  public ar c()
  {
    return this.c;
  }

  public boolean d()
  {
    if ((0x2 & this.b) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public ac e()
  {
    return this.d;
  }

  public boolean f()
  {
    if ((0x4 & this.b) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public w g()
  {
    return this.e;
  }

  public boolean h()
  {
    if ((0x8 & this.b) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public af i()
  {
    return this.f;
  }

  public aj k()
  {
    return j();
  }

  public aj l()
  {
    return a(this);
  }

  public final boolean v()
  {
    int i = 1;
    int j = this.g;
    if (j != -1)
      if (j != i);
    while (true)
    {
      return i;
      i = 0;
      continue;
      this.g = i;
    }
  }

  public int w()
  {
    int i = this.h;
    if (i != -1);
    while (true)
    {
      return i;
      int j = 0x1 & this.b;
      i = 0;
      if (j == 1)
        i = 0 + e.d(1, this.c);
      if ((0x2 & this.b) == 2)
        i += e.d(2, this.d);
      if ((0x4 & this.b) == 4)
        i += e.d(3, this.e);
      if ((0x8 & this.b) == 8)
        i += e.d(4, this.f);
      this.h = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.ai
 * JD-Core Version:    0.6.2
 */