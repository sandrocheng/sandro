package com.avast.android.generic.internet.c.a;

import com.google.a.aa;
import com.google.a.e;
import com.google.a.l;
import java.util.Collections;
import java.util.List;

public final class aj extends l
  implements al
{
  private static final aj a = new aj(true);
  private int b;
  private az c;
  private List d;
  private byte e = -1;
  private int f = -1;

  static
  {
    a.g();
  }

  private aj(ak paramak)
  {
    super(paramak);
  }

  private aj(boolean paramBoolean)
  {
  }

  public static aj a()
  {
    return a;
  }

  public static ak a(aj paramaj)
  {
    return d().a(paramaj);
  }

  public static ak d()
  {
    return ak.e();
  }

  private void g()
  {
    this.c = az.a;
    this.d = Collections.emptyList();
  }

  public void a(e parame)
  {
    w();
    if ((0x1 & this.b) == 1)
      parame.c(1, this.c.a());
    for (int i = 0; i < this.d.size(); i++)
      parame.b(2, (aa)this.d.get(i));
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

  public az c()
  {
    return this.c;
  }

  public ak e()
  {
    return d();
  }

  public ak f()
  {
    return a(this);
  }

  public final boolean v()
  {
    int i = 1;
    int j = this.e;
    if (j != -1)
      if (j != i);
    while (true)
    {
      return i;
      i = 0;
      continue;
      this.e = i;
    }
  }

  public int w()
  {
    int i = 0;
    int j = this.f;
    if (j != -1)
      return j;
    if ((0x1 & this.b) == 1);
    for (int k = 0 + e.g(1, this.c.a()); ; k = 0)
    {
      int m;
      for (j = k; i < this.d.size(); j = m)
      {
        m = j + e.d(2, (aa)this.d.get(i));
        i++;
      }
      this.f = j;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.aj
 * JD-Core Version:    0.6.2
 */