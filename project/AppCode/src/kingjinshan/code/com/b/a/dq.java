package com.b.a;

import java.util.Collections;
import java.util.Map;

public abstract class dq extends dn
  implements dt
{
  private dh a = dh.b();

  protected dq()
  {
  }

  protected dq(dp paramdp)
  {
    super(paramdp);
  }

  private dq a(ed paramed, int paramInt, Object paramObject)
  {
    d(paramed);
    i();
    cq localcq = paramed.a();
    this.a.a(localcq, paramInt, ed.d(paramed, paramObject));
    af_();
    return this;
  }

  private dq a(ed paramed, Object paramObject)
  {
    d(paramed);
    i();
    cq localcq = paramed.a();
    this.a.a(localcq, ed.c(paramed, paramObject));
    af_();
    return this;
  }

  private dq b(ed paramed, Object paramObject)
  {
    d(paramed);
    i();
    cq localcq = paramed.a();
    this.a.b(localcq, ed.d(paramed, paramObject));
    af_();
    return this;
  }

  private dq c(cq paramcq, int paramInt, Object paramObject)
  {
    if (paramcq.q())
    {
      h(paramcq);
      i();
      this.a.a(paramcq, paramInt, paramObject);
      af_();
    }
    for (dq localdq = this; ; localdq = (dq)super.b(paramcq, paramInt, paramObject))
      return localdq;
  }

  private void d(ed paramed)
  {
    if (paramed.a().r() != C())
      throw new IllegalArgumentException("Extension is for type \"" + paramed.a().r().b() + "\" which does not match message type \"" + C().b() + "\".");
  }

  private dq e(cq paramcq, Object paramObject)
  {
    if (paramcq.q())
    {
      h(paramcq);
      i();
      this.a.a(paramcq, paramObject);
      af_();
    }
    for (dq localdq = this; ; localdq = (dq)super.c(paramcq, paramObject))
      return localdq;
  }

  private dq e(ed paramed)
  {
    d(paramed);
    i();
    this.a.c(paramed.a());
    af_();
    return this;
  }

  private dq f(cq paramcq, Object paramObject)
  {
    if (paramcq.q())
    {
      h(paramcq);
      i();
      this.a.b(paramcq, paramObject);
      af_();
    }
    for (dq localdq = this; ; localdq = (dq)super.d(paramcq, paramObject))
      return localdq;
  }

  private dq g(cq paramcq)
  {
    if (paramcq.q())
    {
      h(paramcq);
      i();
      this.a.c(paramcq);
      af_();
    }
    for (dq localdq = this; ; localdq = (dq)super.f(paramcq))
      return localdq;
  }

  private void h(cq paramcq)
  {
    if (paramcq.r() != C())
      throw new IllegalArgumentException("FieldDescriptor does not match message type.");
  }

  private void i()
  {
    if (this.a.d())
      this.a = this.a.e();
  }

  private dh j()
  {
    this.a.c();
    return this.a;
  }

  protected final boolean N()
  {
    return this.a.i();
  }

  public final Object a(cq paramcq, int paramInt)
  {
    if (paramcq.q())
      h(paramcq);
    for (Object localObject = this.a.a(paramcq, paramInt); ; localObject = super.a(paramcq, paramInt))
      return localObject;
  }

  public final Object a(ed paramed, int paramInt)
  {
    d(paramed);
    cq localcq = paramed.a();
    return ed.b(paramed, this.a.a(localcq, paramInt));
  }

  protected final void a(dr paramdr)
  {
    i();
    this.a.a(dr.a(paramdr));
    af_();
  }

  public boolean a()
  {
    if ((super.a()) && (this.a.i()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean a(cq paramcq)
  {
    if (paramcq.q())
      h(paramcq);
    for (boolean bool = this.a.a(paramcq); ; bool = super.a(paramcq))
      return bool;
  }

  public final boolean a(ed paramed)
  {
    d(paramed);
    return this.a.a(paramed.a());
  }

  protected final boolean a(m paramm, gi paramgi, df paramdf, int paramInt)
  {
    return c.a(paramm, paramgi, paramdf, this, paramInt);
  }

  public final Map a_()
  {
    Map localMap = dn.a(this);
    localMap.putAll(this.a.g());
    return Collections.unmodifiableMap(localMap);
  }

  public final int b(ed paramed)
  {
    d(paramed);
    cq localcq = paramed.a();
    return this.a.d(localcq);
  }

  public final Object b(cq paramcq)
  {
    Object localObject;
    if (paramcq.q())
    {
      h(paramcq);
      localObject = this.a.b(paramcq);
      if (localObject == null)
      {
        if (paramcq.f() != cr.i)
          break label45;
        localObject = cy.a(paramcq.t());
      }
    }
    while (true)
    {
      return localObject;
      label45: localObject = paramcq.p();
      continue;
      localObject = super.b(paramcq);
    }
  }

  public final int c(cq paramcq)
  {
    if (paramcq.q())
      h(paramcq);
    for (int i = this.a.d(paramcq); ; i = super.c(paramcq))
      return i;
  }

  public final Object c(ed paramed)
  {
    d(paramed);
    cq localcq = paramed.a();
    Object localObject1 = this.a.b(localcq);
    Object localObject2;
    if (localObject1 == null)
      if (localcq.m())
        localObject2 = Collections.emptyList();
    while (true)
    {
      return localObject2;
      if (localcq.f() == cr.i)
      {
        localObject2 = paramed.b();
      }
      else
      {
        localObject2 = ed.a(paramed, localcq.p());
        continue;
        localObject2 = ed.a(paramed, localObject1);
      }
    }
  }

  public dq m()
  {
    throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
  }

  public dq n()
  {
    this.a = dh.b();
    return (dq)super.F();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.dq
 * JD-Core Version:    0.6.2
 */