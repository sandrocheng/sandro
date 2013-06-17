package com.google.b.a;

import java.util.AbstractSet;
import java.util.Iterator;

final class i extends AbstractSet
{
  private i(e parame)
  {
  }

  public void clear()
  {
    this.a.clear();
  }

  public boolean contains(Object paramObject)
  {
    return this.a.containsKey(paramObject);
  }

  public Iterator iterator()
  {
    return new j(this);
  }

  public boolean remove(Object paramObject)
  {
    int i = e.b(this.a);
    this.a.remove(paramObject);
    if (e.b(this.a) != i);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int size()
  {
    return e.b(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.b.a.i
 * JD-Core Version:    0.6.2
 */