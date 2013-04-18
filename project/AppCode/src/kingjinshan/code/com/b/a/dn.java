package com.b.a;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public abstract class dn extends c
{
  private dp a;
  private do b;
  private boolean c;
  private gg d = gg.f();

  protected dn()
  {
    this(null);
  }

  protected dn(dp paramdp)
  {
    this.a = paramdp;
  }

  private Map i()
  {
    TreeMap localTreeMap = new TreeMap();
    Iterator localIterator = dv.a(B()).e().iterator();
    while (localIterator.hasNext())
    {
      cq localcq = (cq)localIterator.next();
      if (localcq.m())
      {
        List localList = (List)b(localcq);
        if (!localList.isEmpty())
          localTreeMap.put(localcq, localList);
      }
      else if (a(localcq))
      {
        localTreeMap.put(localcq, b(localcq));
      }
    }
    return localTreeMap;
  }

  protected abstract dv B();

  public cj C()
  {
    return dv.a(B());
  }

  public dn F()
  {
    this.d = gg.f();
    af_();
    return this;
  }

  public dn G()
  {
    throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
  }

  final void O()
  {
    this.a = null;
  }

  public Object a(cq paramcq, int paramInt)
  {
    return dv.a(B(), paramcq).a(this, paramInt);
  }

  public boolean a()
  {
    Iterator localIterator1 = C().e().iterator();
    break label83;
    label13: cq localcq;
    boolean bool;
    if (localIterator1.hasNext())
    {
      localcq = (cq)localIterator1.next();
      if ((localcq.k()) && (!a(localcq)))
        bool = false;
    }
    while (true)
    {
      return bool;
      if (localcq.f() != cr.i)
        break label13;
      if (localcq.m())
      {
        Iterator localIterator2 = ((List)b(localcq)).iterator();
        label83: if (!localIterator2.hasNext())
          break label13;
        if (((ev)localIterator2.next()).a())
          break;
        bool = false;
        continue;
      }
      if ((!a(localcq)) || (((ev)b(localcq)).a()))
        break label13;
      bool = false;
      continue;
      bool = true;
    }
  }

  public boolean a(cq paramcq)
  {
    return dv.a(B(), paramcq).b(this);
  }

  protected boolean a(m paramm, gi paramgi, df paramdf, int paramInt)
  {
    return paramgi.a(paramInt, paramm);
  }

  public Map a_()
  {
    return Collections.unmodifiableMap(i());
  }

  protected final void ab_()
  {
    if (this.a != null)
      this.c = true;
  }

  protected final void ac_()
  {
    this.c = true;
  }

  protected final boolean ad_()
  {
    return this.c;
  }

  protected final dp ae_()
  {
    if (this.b == null)
      this.b = new do(this);
    return this.b;
  }

  protected final void af_()
  {
    if ((this.c) && (this.a != null))
    {
      this.a.a();
      this.c = false;
    }
  }

  public dn b(cq paramcq, int paramInt, Object paramObject)
  {
    dv.a(B(), paramcq).a(this, paramInt, paramObject);
    return this;
  }

  public Object b(cq paramcq)
  {
    Object localObject1 = dv.a(B(), paramcq).a(this);
    if (paramcq.m());
    for (Object localObject2 = Collections.unmodifiableList((List)localObject1); ; localObject2 = localObject1)
      return localObject2;
  }

  public final gg b_()
  {
    return this.d;
  }

  public int c(cq paramcq)
  {
    return dv.a(B(), paramcq).c(this);
  }

  public dn c(cq paramcq, Object paramObject)
  {
    dv.a(B(), paramcq).a(this, paramObject);
    return this;
  }

  public dn d(cq paramcq, Object paramObject)
  {
    dv.a(B(), paramcq).b(this, paramObject);
    return this;
  }

  public final dn d(gg paramgg)
  {
    this.d = paramgg;
    af_();
    return this;
  }

  public final dn e(gg paramgg)
  {
    this.d = gg.a(this.d).a(paramgg).b();
    af_();
    return this;
  }

  public final ew e(cq paramcq)
  {
    return dv.a(B(), paramcq).a();
  }

  public dn f(cq paramcq)
  {
    dv.a(B(), paramcq).d(this);
    return this;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.dn
 * JD-Core Version:    0.6.2
 */