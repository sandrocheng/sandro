package com.b.a;

import java.util.List;

public enum bd
  implements fb
{
  public static final int d = 1;
  public static final int e = 2;
  public static final int f = 3;
  private static er g;
  private static final bd[] h = arrayOfbd2;
  private final int i;
  private final int j;

  static
  {
    bd[] arrayOfbd1 = new bd[3];
    arrayOfbd1[0] = a;
    arrayOfbd1[1] = b;
    arrayOfbd1[2] = c;
    k = arrayOfbd1;
    g = new be();
    bd[] arrayOfbd2 = new bd[3];
    arrayOfbd2[0] = a;
    arrayOfbd2[1] = b;
    arrayOfbd2[2] = c;
  }

  private bd(int arg3, int arg4)
  {
    int m;
    this.i = m;
    int n;
    this.j = n;
  }

  public static bd a(int paramInt)
  {
    bd localbd;
    switch (paramInt)
    {
    default:
      localbd = null;
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return localbd;
      localbd = a;
      continue;
      localbd = b;
      continue;
      localbd = c;
    }
  }

  private static bd a(cp paramcp)
  {
    if (paramcp.e() != e())
      throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    return h[paramcp.d()];
  }

  private static er d()
  {
    return g;
  }

  private static co e()
  {
    return (co)bb.f().h().get(0);
  }

  public final int H_()
  {
    return this.j;
  }

  public final cp b()
  {
    return (cp)e().d().get(this.i);
  }

  public final co c()
  {
    return e();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.bd
 * JD-Core Version:    0.6.2
 */