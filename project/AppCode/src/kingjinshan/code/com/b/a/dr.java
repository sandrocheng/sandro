package com.b.a;

import java.util.Collections;
import java.util.Map;

public abstract class dr extends dk
  implements dt
{
  private final dh a;

  protected dr()
  {
    this.a = dh.a();
  }

  protected dr(dq paramdq)
  {
    super(paramdq);
    this.a = dq.a(paramdq);
  }

  private void d(cq paramcq)
  {
    if (paramcq.r() != C())
      throw new IllegalArgumentException("FieldDescriptor does not match message type.");
  }

  private void d(ed paramed)
  {
    if (paramed.a().r() != C())
      throw new IllegalArgumentException("Extension is for type \"" + paramed.a().r().b() + "\" which does not match message type \"" + C().b() + "\".");
  }

  private ds h()
  {
    return new ds(this, true);
  }

  private int i()
  {
    return this.a.k();
  }

  private Map j()
  {
    return this.a.g();
  }

  protected final boolean J()
  {
    return this.a.i();
  }

  protected final ds K()
  {
    return new ds(this, false);
  }

  protected final int L()
  {
    return this.a.j();
  }

  public final Object a(cq paramcq, int paramInt)
  {
    if (paramcq.q())
      d(paramcq);
    for (Object localObject = this.a.a(paramcq, paramInt); ; localObject = super.a(paramcq, paramInt))
      return localObject;
  }

  public final Object a(ed paramed, int paramInt)
  {
    d(paramed);
    cq localcq = paramed.a();
    return ed.b(paramed, this.a.a(localcq, paramInt));
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
      d(paramcq);
    for (boolean bool = this.a.a(paramcq); ; bool = super.a(paramcq))
      return bool;
  }

  public final boolean a(ed paramed)
  {
    d(paramed);
    return this.a.a(paramed.a());
  }

  public final Map a_()
  {
    Map localMap = dk.a(this);
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
      d(paramcq);
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
      d(paramcq);
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.dr
 * JD-Core Version:    0.6.2
 */