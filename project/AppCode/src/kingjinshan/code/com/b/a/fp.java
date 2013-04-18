package com.b.a;

public final class fp
  implements dp
{
  private dp a;
  private dn b;
  private dk c;
  private boolean d;

  public fp(dk paramdk, dp paramdp, boolean paramBoolean)
  {
    if (paramdk == null)
      throw new NullPointerException();
    this.c = paramdk;
    this.a = paramdp;
    this.d = paramBoolean;
  }

  private void h()
  {
    if (this.b != null)
      this.c = null;
    if ((this.d) && (this.a != null))
    {
      this.a.a();
      this.d = false;
    }
  }

  public final fp a(dk paramdk)
  {
    if (paramdk == null)
      throw new NullPointerException();
    this.c = paramdk;
    if (this.b != null)
    {
      this.b.O();
      this.b = null;
    }
    h();
    return this;
  }

  public final void a()
  {
    h();
  }

  public final fp b(dk paramdk)
  {
    if ((this.b == null) && (this.c == this.c.I()))
      this.c = paramdk;
    while (true)
    {
      h();
      return this;
      e().a(paramdk);
    }
  }

  public final void b()
  {
    this.a = null;
  }

  public final dk c()
  {
    if (this.c == null)
      this.c = ((dk)this.b.J());
    return this.c;
  }

  public final dk d()
  {
    this.d = true;
    return c();
  }

  public final dn e()
  {
    if (this.b == null)
    {
      this.b = ((dn)this.c.a(this));
      this.b.a(this.c);
      this.b.ac_();
    }
    return this.b;
  }

  public final fa f()
  {
    if (this.b != null);
    for (Object localObject = this.b; ; localObject = this.c)
      return localObject;
  }

  public final fp g()
  {
    if (this.c != null);
    for (ev localev = this.c.I(); ; localev = this.b.I())
    {
      this.c = ((dk)localev);
      if (this.b != null)
      {
        this.b.O();
        this.b = null;
      }
      h();
      return this;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.fp
 * JD-Core Version:    0.6.2
 */