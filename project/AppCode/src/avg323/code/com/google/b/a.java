package com.google.b;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class a extends b
  implements Iterable
{
  private final List a = new ArrayList();

  public int a()
  {
    return this.a.size();
  }

  public b a(int paramInt)
  {
    return (b)this.a.get(paramInt);
  }

  public void a(b paramb)
  {
    if (paramb == null)
      paramb = d.a;
    this.a.add(paramb);
  }

  public Number b()
  {
    if (this.a.size() == 1)
      return ((b)this.a.get(0)).b();
    throw new IllegalStateException();
  }

  public String c()
  {
    if (this.a.size() == 1)
      return ((b)this.a.get(0)).c();
    throw new IllegalStateException();
  }

  public int d()
  {
    if (this.a.size() == 1)
      return ((b)this.a.get(0)).d();
    throw new IllegalStateException();
  }

  public boolean e()
  {
    if (this.a.size() == 1)
      return ((b)this.a.get(0)).e();
    throw new IllegalStateException();
  }

  public boolean equals(Object paramObject)
  {
    if ((paramObject == this) || (((paramObject instanceof a)) && (((a)paramObject).a.equals(this.a))));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int hashCode()
  {
    return this.a.hashCode();
  }

  public Iterator iterator()
  {
    return this.a.iterator();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.b.a
 * JD-Core Version:    0.6.2
 */