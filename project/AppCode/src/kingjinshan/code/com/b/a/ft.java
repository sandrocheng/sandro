package com.b.a;

import java.util.Iterator;
import java.util.NoSuchElementException;

final class ft
  implements Iterator
{
  public final boolean hasNext()
  {
    return false;
  }

  public final Object next()
  {
    throw new NoSuchElementException();
  }

  public final void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ft
 * JD-Core Version:    0.6.2
 */