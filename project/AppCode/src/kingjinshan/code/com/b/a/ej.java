package com.b.a;

public abstract class ej extends ef
  implements el
{
  private final dh a;

  protected ej()
  {
    super((byte)0);
    this.a = dh.a();
  }

  private ej(ei paramei)
  {
    super((byte)0);
    this.a = ei.a(paramei);
  }

  private void d(en paramen)
  {
    if (paramen.a() != H())
      throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
  }

  private boolean e()
  {
    return this.a.i();
  }

  private ek f()
  {
    return new ek(this, false);
  }

  private ek g()
  {
    return new ek(this, true);
  }

  private int h()
  {
    return this.a.j();
  }

  private int i()
  {
    return this.a.k();
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
 * Qualified Name:     com.b.a.ej
 * JD-Core Version:    0.6.2
 */