package com.google.a;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.RandomAccess;

public class am extends AbstractList
  implements z, RandomAccess
{
  private final z a;

  public am(z paramz)
  {
    this.a = paramz;
  }

  public String a(int paramInt)
  {
    return (String)this.a.get(paramInt);
  }

  public void a(c paramc)
  {
    throw new UnsupportedOperationException();
  }

  public c c(int paramInt)
  {
    return this.a.c(paramInt);
  }

  public Iterator iterator()
  {
    return new ao(this);
  }

  public ListIterator listIterator(int paramInt)
  {
    return new an(this, paramInt);
  }

  public int size()
  {
    return this.a.size();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.am
 * JD-Core Version:    0.6.2
 */