package com.a.a;

import java.util.ArrayList;

class j
  implements Cloneable
{
  public a a;
  public ArrayList b = null;
  public ArrayList c = null;
  public ArrayList d = null;
  public ArrayList e = null;
  public boolean f = false;

  public j(a parama)
  {
    this.a = parama;
  }

  public j a()
  {
    try
    {
      j localj = (j)super.clone();
      localj.a = this.a.c();
      return localj;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
    }
    throw new AssertionError();
  }

  public void a(h paramh)
  {
    if (this.b == null)
    {
      this.b = new ArrayList();
      this.d = new ArrayList();
    }
    this.b.add(paramh);
    if (!this.d.contains(paramh.a))
      this.d.add(paramh.a);
    j localj = paramh.a;
    if (localj.e == null)
      localj.e = new ArrayList();
    localj.e.add(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.a.a.j
 * JD-Core Version:    0.6.2
 */