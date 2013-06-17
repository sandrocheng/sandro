package com.google.b.a;

import java.util.AbstractCollection;
import java.util.Iterator;

final class m extends AbstractCollection
{
  private m(e parame)
  {
  }

  public void clear()
  {
    this.a.clear();
  }

  public boolean contains(Object paramObject)
  {
    return this.a.containsValue(paramObject);
  }

  public Iterator iterator()
  {
    return new n(this);
  }

  public int size()
  {
    return e.b(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.b.a.m
 * JD-Core Version:    0.6.2
 */