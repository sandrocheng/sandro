package com.b.a;

final class dd
{
  private final cj a;
  private final int b;

  dd(cj paramcj, int paramInt)
  {
    this.a = paramcj;
    this.b = paramInt;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool;
    if (!(paramObject instanceof dd))
      bool = false;
    while (true)
    {
      return bool;
      dd localdd = (dd)paramObject;
      if ((this.a == localdd.a) && (this.b == localdd.b))
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
 * Qualified Name:     com.b.a.dd
 * JD-Core Version:    0.6.2
 */