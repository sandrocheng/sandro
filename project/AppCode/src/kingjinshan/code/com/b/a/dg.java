package com.b.a;

final class dg
{
  private final Object a;
  private final int b;

  dg(Object paramObject, int paramInt)
  {
    this.a = paramObject;
    this.b = paramInt;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool;
    if (!(paramObject instanceof dg))
      bool = false;
    while (true)
    {
      return bool;
      dg localdg = (dg)paramObject;
      if ((this.a == localdg.a) && (this.b == localdg.b))
        bool = true;
      else
        bool = false;
    }
  }

  public final int hashCode()
  {
    return 65535 * System.identityHashCode(this.a) + this.b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.dg
 * JD-Core Version:    0.6.2
 */