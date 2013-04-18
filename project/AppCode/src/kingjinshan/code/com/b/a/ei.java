package com.b.a;

public abstract class ei extends eh
  implements el
{
  private dh a = dh.b();
  private boolean b;

  private ei a(en paramen, int paramInt, Object paramObject)
  {
    d(paramen);
    j();
    this.a.a(en.a(paramen), paramInt, paramObject);
    return this;
  }

  private ei a(en paramen, Object paramObject)
  {
    d(paramen);
    j();
    this.a.a(en.a(paramen), paramObject);
    return this;
  }

  private void a(ej paramej)
  {
    j();
    this.a.a(ej.a(paramej));
  }

  private ei b(en paramen, Object paramObject)
  {
    d(paramen);
    j();
    this.a.b(en.a(paramen), paramObject);
    return this;
  }

  private void d(en paramen)
  {
    if (paramen.a() != h())
      throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
  }

  private ei e(en paramen)
  {
    d(paramen);
    j();
    this.a.c(en.a(paramen));
    return this;
  }

  private ei i()
  {
    this.a.f();
    this.b = false;
    return (ei)super.b();
  }

  private void j()
  {
    if (!this.b)
    {
      this.a = this.a.e();
      this.b = true;
    }
  }

  private dh k()
  {
    this.a.c();
    this.b = false;
    return this.a;
  }

  private static ei l()
  {
    throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
  }

  private boolean m()
  {
    return this.a.i();
  }

  public final Object a(en paramen, int paramInt)
  {
    d(paramen);
    return this.a.a(en.a(paramen), paramInt);
  }

  public final boolean a(en paramen)
  {
    d(paramen);
    return this.a.a(en.a(paramen));
  }

  protected final boolean a(m paramm, df paramdf, int paramInt)
  {
    int i = go.a(paramInt);
    int j = go.b(paramInt);
    en localen = paramdf.a(h(), j);
    int m;
    int k;
    if (localen != null)
      if (i == dh.a(en.a(localen).j(), false))
      {
        m = 0;
        k = 0;
      }
    boolean bool;
    while (k != 0)
    {
      bool = paramm.b(paramInt);
      return bool;
      if ((em.a(en.a(localen))) && (em.b(en.a(localen)).c()) && (i == dh.a(en.a(localen).j(), true)))
      {
        m = 1;
        k = 0;
      }
      else
      {
        k = 1;
        m = 0;
      }
    }
    if (m != 0)
    {
      int i1 = paramm.c(paramm.r());
      if (en.a(localen).j() == gq.n)
        while (true)
        {
          if (paramm.v() <= 0)
            break label260;
          int i2 = paramm.m();
          eq localeq = en.a(localen).v().a(i2);
          if (localeq == null)
          {
            bool = true;
            break;
          }
          j();
          this.a.b(en.a(localen), localeq);
        }
      while (paramm.v() > 0)
      {
        Object localObject2 = dh.a(paramm, en.a(localen).j());
        j();
        this.a.b(en.a(localen), localObject2);
      }
      label260: paramm.d(i1);
    }
    label266: Object localObject1;
    while (true)
    {
      bool = true;
      break;
      switch (eg.a[en.a(localen).g().ordinal()])
      {
      default:
        localObject1 = dh.a(paramm, en.a(localen).j());
        label322: if (!en.a(localen).m())
          break label495;
        j();
        this.a.b(en.a(localen), localObject1);
      case 1:
      case 2:
      }
    }
    ex localex;
    if (!en.a(localen).m())
    {
      localex = (ex)this.a.b(en.a(localen));
      if (localex == null);
    }
    for (ey localey = localex.F(); ; localey = null)
    {
      if (localey == null)
        localey = en.c(localen).G();
      if (en.a(localen).j() == gq.j)
        paramm.a(localen.b(), localey, paramdf);
      while (true)
      {
        localObject1 = localey.M();
        break;
        paramm.a(localey, paramdf);
      }
      int n = paramm.m();
      localObject1 = en.a(localen).v().a(n);
      if (localObject1 != null)
        break label322;
      bool = true;
      break;
      label495: j();
      this.a.a(en.a(localen), localObject1);
      break label266;
    }
  }

  public final int b(en paramen)
  {
    d(paramen);
    return this.a.d(en.a(paramen));
  }

  public final Object c(en paramen)
  {
    d(paramen);
    Object localObject = this.a.b(en.a(paramen));
    if (localObject == null)
      localObject = en.b(paramen);
    return localObject;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ei
 * JD-Core Version:    0.6.2
 */