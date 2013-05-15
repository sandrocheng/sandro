package com.google.a;

import java.util.Iterator;
import java.util.NoSuchElementException;

final class ag
  implements Iterator
{
  public boolean hasNext()
  {
    return false;
  }

  public Object next()
  {
    throw new NoSuchElementException();
  }

  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.ag
 * JD-Core Version:    0.6.2
 */