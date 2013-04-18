package com.b.a;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class fw
  implements Iterator
{
  private int b = -1;
  private boolean c;
  private Iterator d;

  private fw(fq paramfq, byte paramByte)
  {
  }

  private Map.Entry a()
  {
    this.c = true;
    int i = 1 + this.b;
    this.b = i;
    if (i < fq.b(this.a).size());
    for (Map.Entry localEntry = (Map.Entry)fq.b(this.a).get(this.b); ; localEntry = (Map.Entry)b().next())
      return localEntry;
  }

  private Iterator b()
  {
    if (this.d == null)
      this.d = fq.c(this.a).entrySet().iterator();
    return this.d;
  }

  public final boolean hasNext()
  {
    if ((1 + this.b < fq.b(this.a).size()) || (b().hasNext()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void remove()
  {
    if (!this.c)
      throw new IllegalStateException("remove() was called before next()");
    this.c = false;
    fq.a(this.a);
    if (this.b < fq.b(this.a).size())
    {
      fq localfq = this.a;
      int i = this.b;
      this.b = (i - 1);
      fq.a(localfq, i);
    }
    while (true)
    {
      return;
      b().remove();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.fw
 * JD-Core Version:    0.6.2
 */