package com.b.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class fc
  implements dp
{
  private dp a;
  private List b;
  private boolean c;
  private List d;
  private boolean e;
  private fe f;
  private fd g;
  private ff h;

  public fc(List paramList, boolean paramBoolean1, dp paramdp, boolean paramBoolean2)
  {
    this.b = paramList;
    this.c = paramBoolean1;
    this.a = paramdp;
    this.e = paramBoolean2;
  }

  private dk a(int paramInt, boolean paramBoolean)
  {
    dk localdk;
    if (this.d == null)
      localdk = (dk)this.b.get(paramInt);
    while (true)
    {
      return localdk;
      fp localfp = (fp)this.d.get(paramInt);
      if (localfp == null)
        localdk = (dk)this.b.get(paramInt);
      else if (paramBoolean)
        localdk = localfp.d();
      else
        localdk = localfp.c();
    }
  }

  private void j()
  {
    if (!this.c)
    {
      this.b = new ArrayList(this.b);
      this.c = true;
    }
  }

  private void k()
  {
    if (this.d == null)
    {
      this.d = new ArrayList(this.b.size());
      for (int i = 0; i < this.b.size(); i++)
        this.d.add(null);
    }
  }

  private void l()
  {
    if ((this.e) && (this.a != null))
    {
      this.a.a();
      this.e = false;
    }
  }

  private void m()
  {
    if (this.f != null)
      this.f.a();
    if (this.g != null)
      this.g.a();
    if (this.h != null)
      this.h.a();
  }

  public final dk a(int paramInt)
  {
    return a(paramInt, false);
  }

  public final fc a(int paramInt, dk paramdk)
  {
    if (paramdk == null)
      throw new NullPointerException();
    j();
    this.b.set(paramInt, paramdk);
    if (this.d != null)
    {
      fp localfp = (fp)this.d.set(paramInt, null);
      if (localfp != null)
        localfp.b();
    }
    l();
    m();
    return this;
  }

  public final fc a(dk paramdk)
  {
    if (paramdk == null)
      throw new NullPointerException();
    j();
    this.b.add(paramdk);
    if (this.d != null)
      this.d.add(null);
    l();
    m();
    return this;
  }

  public final fc a(Iterable paramIterable)
  {
    Iterator localIterator1 = paramIterable.iterator();
    while (localIterator1.hasNext())
      if ((dk)localIterator1.next() == null)
        throw new NullPointerException();
    if ((paramIterable instanceof Collection))
      if (((Collection)paramIterable).size() != 0);
    for (fc localfc = this; ; localfc = this)
    {
      return localfc;
      j();
      Iterator localIterator3 = paramIterable.iterator();
      while (localIterator3.hasNext())
      {
        a((dk)localIterator3.next());
        continue;
        j();
        Iterator localIterator2 = paramIterable.iterator();
        while (localIterator2.hasNext())
          a((dk)localIterator2.next());
      }
      l();
      m();
    }
  }

  public final void a()
  {
    l();
  }

  public final dn b(int paramInt)
  {
    k();
    Object localObject = (fp)this.d.get(paramInt);
    if (localObject == null)
    {
      fp localfp = new fp((dk)this.b.get(paramInt), this, this.e);
      this.d.set(paramInt, localfp);
      localObject = localfp;
    }
    return ((fp)localObject).e();
  }

  public final dn b(dk paramdk)
  {
    j();
    k();
    fp localfp = new fp(paramdk, this, this.e);
    this.b.add(null);
    this.d.add(localfp);
    l();
    m();
    return localfp.e();
  }

  public final fc b(int paramInt, dk paramdk)
  {
    if (paramdk == null)
      throw new NullPointerException();
    j();
    this.b.add(paramInt, paramdk);
    if (this.d != null)
      this.d.add(paramInt, null);
    l();
    m();
    return this;
  }

  public final void b()
  {
    this.a = null;
  }

  public final int c()
  {
    return this.b.size();
  }

  public final dn c(int paramInt, dk paramdk)
  {
    j();
    k();
    fp localfp = new fp(paramdk, this, this.e);
    this.b.add(paramInt, null);
    this.d.add(paramInt, localfp);
    l();
    m();
    return localfp.e();
  }

  public final fa c(int paramInt)
  {
    fa localfa;
    if (this.d == null)
      localfa = (fa)this.b.get(paramInt);
    while (true)
    {
      return localfa;
      fp localfp = (fp)this.d.get(paramInt);
      if (localfp == null)
        localfa = (fa)this.b.get(paramInt);
      else
        localfa = localfp.f();
    }
  }

  public final void d(int paramInt)
  {
    j();
    this.b.remove(paramInt);
    if (this.d != null)
    {
      fp localfp = (fp)this.d.remove(paramInt);
      if (localfp != null)
        localfp.b();
    }
    l();
    m();
  }

  public final boolean d()
  {
    return this.b.isEmpty();
  }

  public final void e()
  {
    this.b = Collections.emptyList();
    this.c = false;
    if (this.d != null)
    {
      Iterator localIterator = this.d.iterator();
      while (localIterator.hasNext())
      {
        fp localfp = (fp)localIterator.next();
        if (localfp != null)
          localfp.b();
      }
      this.d = null;
    }
    l();
    m();
  }

  public final List f()
  {
    this.e = true;
    List localList;
    if ((!this.c) && (this.d == null))
    {
      localList = this.b;
      return localList;
    }
    int j;
    if (!this.c)
    {
      j = 0;
      label36: if (j >= this.b.size())
        break label185;
      ev localev = (ev)this.b.get(j);
      fp localfp = (fp)this.d.get(j);
      if ((localfp == null) || (localfp.d() == localev));
    }
    label185: for (int k = 0; ; k = 1)
    {
      if (k != 0)
      {
        localList = this.b;
        break;
        j++;
        break label36;
      }
      j();
      for (int i = 0; i < this.b.size(); i++)
        this.b.set(i, a(i, true));
      this.b = Collections.unmodifiableList(this.b);
      this.c = false;
      localList = this.b;
      break;
    }
  }

  public final List g()
  {
    if (this.f == null)
      this.f = new fe(this);
    return this.f;
  }

  public final List h()
  {
    if (this.g == null)
      this.g = new fd(this);
    return this.g;
  }

  public final List i()
  {
    if (this.h == null)
      this.h = new ff(this);
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.fc
 * JD-Core Version:    0.6.2
 */