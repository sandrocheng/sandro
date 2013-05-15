package com.a.a;

import java.util.ArrayList;
import java.util.HashMap;

class f
  implements b
{
  private d b;

  f(d paramd1, d paramd2)
  {
    this.b = paramd2;
  }

  public void a(a parama)
  {
  }

  public void b(a parama)
  {
    parama.b(this);
    d.a(this.a).remove(parama);
    ((j)d.b(this.b).get(parama)).f = true;
    int j;
    if (!this.a.b)
    {
      ArrayList localArrayList1 = d.c(this.b);
      int i = localArrayList1.size();
      j = 0;
      if (j >= i)
        break label175;
      if (((j)localArrayList1.get(j)).f);
    }
    label175: for (int k = 0; ; k = 1)
    {
      if (k != 0)
      {
        if (this.a.a != null)
        {
          ArrayList localArrayList2 = (ArrayList)this.a.a.clone();
          int m = localArrayList2.size();
          int n = 0;
          while (true)
            if (n < m)
            {
              ((b)localArrayList2.get(n)).b(this.b);
              n++;
              continue;
              j++;
              break;
            }
        }
        d.a(this.b, false);
      }
      return;
    }
  }

  public void c(a parama)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.a.a.f
 * JD-Core Version:    0.6.2
 */