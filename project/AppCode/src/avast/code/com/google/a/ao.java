package com.google.a;

import java.util.Iterator;

class ao
  implements Iterator
{
  Iterator a = am.a(this.b).iterator();

  ao(am paramam)
  {
  }

  public String a()
  {
    return (String)this.a.next();
  }

  public boolean hasNext()
  {
    return this.a.hasNext();
  }

  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.ao
 * JD-Core Version:    0.6.2
 */