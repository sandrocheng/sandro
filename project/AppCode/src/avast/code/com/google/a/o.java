package com.google.a;

public abstract class o extends n
  implements r
{
  private i a = i.b();
  private boolean b;

  private void a()
  {
    if (!this.b)
    {
      this.a = this.a.d();
      this.b = true;
    }
  }

  private i b()
  {
    this.a.c();
    this.b = false;
    return this.a;
  }

  public o C()
  {
    throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
  }

  protected boolean E()
  {
    return this.a.f();
  }

  protected final void a(p paramp)
  {
    a();
    this.a.a(p.a(paramp));
  }

  protected boolean a(d paramd, g paramg, int paramInt)
  {
    int i = 0;
    int j = ap.a(paramInt);
    int k = ap.b(paramInt);
    t localt = paramg.a(g(), k);
    int m;
    if (localt == null)
      m = 1;
    boolean bool;
    while (m != 0)
    {
      bool = paramd.b(paramInt);
      return bool;
      if (j == i.a(t.a(localt).b(), false))
      {
        i = 0;
        m = 0;
      }
      else if ((s.b(t.a(localt))) && (s.c(t.a(localt)).c()) && (j == i.a(t.a(localt).b(), true)))
      {
        i = 1;
        m = 0;
      }
      else
      {
        m = 1;
        i = 0;
      }
    }
    if (i != 0)
    {
      int i1 = paramd.d(paramd.s());
      if (t.a(localt).b() == ar.n)
        while (true)
        {
          if (paramd.w() <= 0)
            break label269;
          int i2 = paramd.n();
          v localv = t.a(localt).f().b(i2);
          if (localv == null)
          {
            bool = true;
            break;
          }
          a();
          this.a.b(t.a(localt), localv);
        }
      while (paramd.w() > 0)
      {
        Object localObject2 = i.a(paramd, t.a(localt).b());
        a();
        this.a.b(t.a(localt), localObject2);
      }
      label269: paramd.e(i1);
    }
    label275: Object localObject1;
    while (true)
    {
      bool = true;
      break;
      switch (m.a[t.a(localt).c().ordinal()])
      {
      default:
        localObject1 = i.a(paramd, t.a(localt).b());
        label334: if (!t.a(localt).d())
          break label507;
        a();
        this.a.b(t.a(localt), localObject1);
      case 1:
      case 2:
      }
    }
    aa localaa;
    if (!t.a(localt).d())
    {
      localaa = (aa)this.a.a(t.a(localt));
      if (localaa == null);
    }
    for (ab localab = localaa.A(); ; localab = null)
    {
      if (localab == null)
        localab = t.b(localt).B();
      if (t.a(localt).b() == ar.j)
        paramd.a(localt.a(), localab, paramg);
      while (true)
      {
        localObject1 = localab.j();
        break;
        paramd.a(localab, paramg);
      }
      int n = paramd.n();
      localObject1 = t.a(localt).f().b(n);
      if (localObject1 != null)
        break label334;
      bool = true;
      break;
      label507: a();
      this.a.a(t.a(localt), localObject1);
      break label275;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.o
 * JD-Core Version:    0.6.2
 */