package com.google.a;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class aj
  implements Iterator
{
  private int b = -1;
  private boolean c;
  private Iterator d;

  private aj(ad paramad)
  {
  }

  private Iterator b()
  {
    if (this.d == null)
      this.d = ad.c(this.a).entrySet().iterator();
    return this.d;
  }

  public Map.Entry a()
  {
    this.c = true;
    int i = 1 + this.b;
    this.b = i;
    if (i < ad.b(this.a).size());
    for (Map.Entry localEntry = (Map.Entry)ad.b(this.a).get(this.b); ; localEntry = (Map.Entry)b().next())
      return localEntry;
  }

  public boolean hasNext()
  {
    if ((1 + this.b < ad.b(this.a).size()) || (b().hasNext()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public void remove()
  {
    if (!this.c)
      throw new IllegalStateException("remove() was called before next()");
    this.c = false;
    ad.a(this.a);
    if (this.b < ad.b(this.a).size())
    {
      ad localad = this.a;
      int i = this.b;
      this.b = (i - 1);
      ad.a(localad, i);
    }
    while (true)
    {
      return;
      b().remove();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.aj
 * JD-Core Version:    0.6.2
 */