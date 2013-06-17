package com.google.b.a;

import java.util.Iterator;
import java.util.NoSuchElementException;

abstract class l
  implements Iterator
{
  k b = e.a(this.d).e;
  k c = null;

  private l(e parame)
  {
  }

  final k b()
  {
    k localk = this.b;
    if (localk == e.a(this.d))
      throw new NoSuchElementException();
    this.b = localk.e;
    this.c = localk;
    return localk;
  }

  public final boolean hasNext()
  {
    if (this.b != e.a(this.d));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void remove()
  {
    if (this.c == null)
      throw new IllegalStateException();
    this.d.remove(this.c.a);
    this.c = null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.b.a.l
 * JD-Core Version:    0.6.2
 */