package com.a.a;

import java.util.ArrayList;
import java.util.HashMap;

public class g
{
  private j b;

  g(d paramd, a parama)
  {
    this.b = ((j)d.b(paramd).get(parama));
    if (this.b == null)
    {
      this.b = new j(parama);
      d.b(paramd).put(parama, this.b);
      d.d(paramd).add(this.b);
    }
  }

  public g a(long paramLong)
  {
    ak localak = ak.b(new float[] { 0.0F, 1.0F });
    localak.b(paramLong);
    a(localak);
    return this;
  }

  public g a(a parama)
  {
    j localj = (j)d.b(this.a).get(parama);
    if (localj == null)
    {
      localj = new j(parama);
      d.b(this.a).put(parama, localj);
      d.d(this.a).add(localj);
    }
    h localh = new h(localj, 1);
    this.b.a(localh);
    return this;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.a.a.g
 * JD-Core Version:    0.6.2
 */