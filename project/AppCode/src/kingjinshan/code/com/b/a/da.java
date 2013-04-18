package com.b.a;

import java.util.Map;

public final class da extends c
{
  private final cj a;
  private dh b;
  private gg c;

  private da(cj paramcj, byte paramByte)
  {
    this.a = paramcj;
    this.b = dh.a();
    this.c = gg.f();
  }

  private da b(cq paramcq, int paramInt, Object paramObject)
  {
    h(paramcq);
    this.b.a(paramcq, paramInt, paramObject);
    return this;
  }

  private da c(cq paramcq, Object paramObject)
  {
    h(paramcq);
    this.b.a(paramcq, paramObject);
    return this;
  }

  private da d(cq paramcq, Object paramObject)
  {
    h(paramcq);
    this.b.b(paramcq, paramObject);
    return this;
  }

  private da d(gg paramgg)
  {
    this.c = paramgg;
    return this;
  }

  private da e(gg paramgg)
  {
    this.c = gg.a(this.c).a(paramgg).b();
    return this;
  }

  private da f(cq paramcq)
  {
    h(paramcq);
    if (paramcq.f() != cr.i)
      throw new IllegalArgumentException("newBuilderForField is only valid for fields with message type.");
    return new da(paramcq.t(), (byte)0);
  }

  private da g(cq paramcq)
  {
    h(paramcq);
    this.b.c(paramcq);
    return this;
  }

  private void h(cq paramcq)
  {
    if (paramcq.r() != this.a)
      throw new IllegalArgumentException("FieldDescriptor does not match message type.");
  }

  private da i()
  {
    if (this.b == null)
      throw new IllegalStateException("Cannot call clear() after build().");
    this.b.f();
    return this;
  }

  private cy j()
  {
    if ((this.b != null) && (!a()))
      throw b(new cy(this.a, this.b, this.c));
    return l();
  }

  private cy k()
  {
    if (!a())
      throw b(new cy(this.a, this.b, this.c)).a();
    return l();
  }

  private cy l()
  {
    if (this.b == null)
      throw new IllegalStateException("build() has already been called on this Builder.");
    this.b.c();
    cy localcy = new cy(this.a, this.b, this.c);
    this.b = null;
    this.c = null;
    return localcy;
  }

  private da m()
  {
    da localda = new da(this.a, (byte)0);
    localda.b.a(this.b);
    return localda;
  }

  private cy n()
  {
    return cy.a(this.a);
  }

  public final cj C()
  {
    return this.a;
  }

  public final Object a(cq paramcq, int paramInt)
  {
    h(paramcq);
    return this.b.a(paramcq, paramInt);
  }

  public final boolean a()
  {
    return cy.a(this.a, this.b);
  }

  public final boolean a(cq paramcq)
  {
    h(paramcq);
    return this.b.a(paramcq);
  }

  public final Map a_()
  {
    return this.b.g();
  }

  public final Object b(cq paramcq)
  {
    h(paramcq);
    Object localObject = this.b.b(paramcq);
    if (localObject == null)
      if (paramcq.f() != cr.i)
        break label38;
    label38: for (localObject = cy.a(paramcq.t()); ; localObject = paramcq.p())
      return localObject;
  }

  public final gg b_()
  {
    return this.c;
  }

  public final int c(cq paramcq)
  {
    h(paramcq);
    return this.b.d(paramcq);
  }

  public final da d(ev paramev)
  {
    if ((paramev instanceof cy))
    {
      cy localcy = (cy)paramev;
      if (cy.a(localcy) != this.a)
        throw new IllegalArgumentException("mergeFrom(Message) can only merge messages of the same type.");
      this.b.a(cy.b(localcy));
      e(cy.c(localcy));
    }
    for (da localda = this; ; localda = (da)super.a(paramev))
      return localda;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.da
 * JD-Core Version:    0.6.2
 */