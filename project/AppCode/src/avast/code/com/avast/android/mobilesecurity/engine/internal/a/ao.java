package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.aa;
import com.google.a.e;
import com.google.a.l;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class ao extends l
  implements aq
{
  private static final ao a = new ao(true);
  private List b;
  private byte c = -1;
  private int d = -1;

  static
  {
    a.f();
  }

  private ao(ap paramap)
  {
    super(paramap);
  }

  private ao(boolean paramBoolean)
  {
  }

  public static ao a()
  {
    return a;
  }

  public static ao a(InputStream paramInputStream)
  {
    return ap.a((ap)c().a(paramInputStream));
  }

  public static ap a(ao paramao)
  {
    return c().a(paramao);
  }

  public static ap c()
  {
    return ap.e();
  }

  private void f()
  {
    this.b = Collections.emptyList();
  }

  public ai a(int paramInt)
  {
    return (ai)this.b.get(paramInt);
  }

  public void a(e parame)
  {
    w();
    for (int i = 0; i < this.b.size(); i++)
      parame.b(1, (aa)this.b.get(i));
  }

  public int b()
  {
    return this.b.size();
  }

  public ap d()
  {
    return c();
  }

  public ap e()
  {
    return a(this);
  }

  public final boolean v()
  {
    int i = 1;
    int j = this.c;
    if (j != -1)
      if (j != i);
    while (true)
    {
      return i;
      i = 0;
      continue;
      this.c = i;
    }
  }

  public int w()
  {
    int i = this.d;
    if (i != -1);
    while (true)
    {
      return i;
      int j = 0;
      i = 0;
      while (j < this.b.size())
      {
        i += e.d(1, (aa)this.b.get(j));
        j++;
      }
      this.d = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.ao
 * JD-Core Version:    0.6.2
 */