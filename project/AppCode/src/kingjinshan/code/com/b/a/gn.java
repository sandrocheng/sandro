package com.b.a;

import java.util.Iterator;

final class gn
  implements Iterator
{
  Iterator a = gl.a(this.b).iterator();

  gn(gl paramgl)
  {
  }

  private String a()
  {
    return (String)this.a.next();
  }

  public final boolean hasNext()
  {
    return this.a.hasNext();
  }

  public final void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.gn
 * JD-Core Version:    0.6.2
 */