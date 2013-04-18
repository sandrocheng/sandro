package com.b.a;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.RandomAccess;

public final class gl extends AbstractList
  implements eu, RandomAccess
{
  private final eu a;

  public gl(eu parameu)
  {
    this.a = parameu;
  }

  private String b(int paramInt)
  {
    return (String)this.a.get(paramInt);
  }

  public final i a(int paramInt)
  {
    return this.a.a(paramInt);
  }

  public final void a(i parami)
  {
    throw new UnsupportedOperationException();
  }

  public final Iterator iterator()
  {
    return new gn(this);
  }

  public final ListIterator listIterator(int paramInt)
  {
    return new gm(this, paramInt);
  }

  public final int size()
  {
    return this.a.size();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.gl
 * JD-Core Version:    0.6.2
 */