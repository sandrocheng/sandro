package com.b.a;

public enum cs
{
  private cr s;

  static
  {
    cs[] arrayOfcs = new cs[18];
    arrayOfcs[0] = a;
    arrayOfcs[1] = b;
    arrayOfcs[2] = c;
    arrayOfcs[3] = d;
    arrayOfcs[4] = e;
    arrayOfcs[5] = f;
    arrayOfcs[6] = g;
    arrayOfcs[7] = h;
    arrayOfcs[8] = i;
    arrayOfcs[9] = j;
    arrayOfcs[10] = k;
    arrayOfcs[11] = l;
    arrayOfcs[12] = m;
    arrayOfcs[13] = n;
    arrayOfcs[14] = o;
    arrayOfcs[15] = p;
    arrayOfcs[16] = q;
    arrayOfcs[17] = r;
  }

  private cs(cr arg3)
  {
    Object localObject;
    this.s = localObject;
  }

  public static cs a(an paraman)
  {
    return values()[(paraman.H_() - 1)];
  }

  private an b()
  {
    return an.a(1 + ordinal());
  }

  public final cr a()
  {
    return this.s;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.cs
 * JD-Core Version:    0.6.2
 */