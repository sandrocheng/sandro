package com.b.a;

import java.util.ListIterator;

final class gm
  implements ListIterator
{
  ListIterator a = gl.a(this.c).listIterator(this.b);

  gm(gl paramgl, int paramInt)
  {
  }

  private String a()
  {
    return (String)this.a.next();
  }

  private String b()
  {
    return (String)this.a.previous();
  }

  private static void c()
  {
    throw new UnsupportedOperationException();
  }

  private static void d()
  {
    throw new UnsupportedOperationException();
  }

  public final boolean hasNext()
  {
    return this.a.hasNext();
  }

  public final boolean hasPrevious()
  {
    return this.a.hasPrevious();
  }

  public final int nextIndex()
  {
    return this.a.nextIndex();
  }

  public final int previousIndex()
  {
    return this.a.previousIndex();
  }

  public final void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.gm
 * JD-Core Version:    0.6.2
 */