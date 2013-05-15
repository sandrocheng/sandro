package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.al;
import com.google.a.d;
import com.google.a.g;
import com.google.a.n;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ap extends n
  implements aq
{
  private int a;
  private List b = Collections.emptyList();

  private ap()
  {
    f();
  }

  private void f()
  {
  }

  private static ap k()
  {
    return new ap();
  }

  private ao l()
  {
    ao localao = d();
    if (!localao.v())
      throw a(localao).a();
    return localao;
  }

  private void m()
  {
    if ((0x1 & this.a) != 1)
    {
      this.b = new ArrayList(this.b);
      this.a = (0x1 | this.a);
    }
  }

  public ap a()
  {
    return k().a(d());
  }

  public ap a(ai paramai)
  {
    if (paramai == null)
      throw new NullPointerException();
    m();
    this.b.add(paramai);
    return this;
  }

  public ap a(ao paramao)
  {
    if (paramao == ao.a());
    while (true)
    {
      return this;
      if (!ao.b(paramao).isEmpty())
        if (this.b.isEmpty())
        {
          this.b = ao.b(paramao);
          this.a = (0xFFFFFFFE & this.a);
        }
        else
        {
          m();
          this.b.addAll(ao.b(paramao));
        }
    }
  }

  public ap a(d paramd, g paramg)
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
      }
      aj localaj = ai.j();
      paramd.a(localaj, paramg);
      a(localaj.d());
    }
  }

  public ao b()
  {
    return ao.a();
  }

  public ao c()
  {
    ao localao = d();
    if (!localao.v())
      throw a(localao);
    return localao;
  }

  public ao d()
  {
    ao localao = new ao(this, null);
    if ((0x1 & this.a) == 1)
    {
      this.b = Collections.unmodifiableList(this.b);
      this.a = (0xFFFFFFFE & this.a);
    }
    ao.a(localao, this.b);
    return localao;
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.ap
 * JD-Core Version:    0.6.2
 */