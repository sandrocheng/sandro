package com.b.a;

final class cl
{
  private final cv a;
  private final int b;

  cl(cv paramcv, int paramInt)
  {
    this.a = paramcv;
    this.b = paramInt;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool;
    if (!(paramObject instanceof cl))
      bool = false;
    while (true)
    {
      return bool;
      cl localcl = (cl)paramObject;
      if ((this.a == localcl.a) && (this.b == localcl.b))
        bool = true;
      else
        bool = false;
    }
  }

  public final int hashCode()
  {
    return 65535 * this.a.hashCode() + this.b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.cl
 * JD-Core Version:    0.6.2
 */