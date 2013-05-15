package com.a.a;

import java.util.ArrayList;

class i
  implements b
{
  private d a;
  private j b;
  private int c;

  public i(d paramd, j paramj, int paramInt)
  {
    this.a = paramd;
    this.b = paramj;
    this.c = paramInt;
  }

  private void d(a parama)
  {
    if (this.a.b)
      return;
    int i = this.b.c.size();
    int j = 0;
    label24: h localh;
    if (j < i)
    {
      localh = (h)this.b.c.get(j);
      if ((localh.b == this.c) && (localh.a.a == parama))
        parama.b(this);
    }
    while (true)
    {
      this.b.c.remove(localh);
      if (this.b.c.size() != 0)
        break;
      this.b.a.a();
      d.a(this.a).add(this.b.a);
      break;
      j++;
      break label24;
      localh = null;
    }
  }

  public void a(a parama)
  {
    if (this.c == 0)
      d(parama);
  }

  public void b(a parama)
  {
    if (this.c == 1)
      d(parama);
  }

  public void c(a parama)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.a.a.i
 * JD-Core Version:    0.6.2
 */