package com.b.a;

import java.util.List;

public enum as
  implements fb
{
  public static final int d = 0;
  public static final int e = 1;
  public static final int f = 2;
  private static er g;
  private static final as[] h = arrayOfas2;
  private final int i;
  private final int j;

  static
  {
    as[] arrayOfas1 = new as[3];
    arrayOfas1[0] = a;
    arrayOfas1[1] = b;
    arrayOfas1[2] = c;
    k = arrayOfas1;
    g = new at();
    as[] arrayOfas2 = new as[3];
    arrayOfas2[0] = a;
    arrayOfas2[1] = b;
    arrayOfas2[2] = c;
  }

  private as(int arg3, int arg4)
  {
    int m;
    this.i = m;
    int n;
    this.j = n;
  }

  public static as a(int paramInt)
  {
    as localas;
    switch (paramInt)
    {
    default:
      localas = null;
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return localas;
      localas = a;
      continue;
      localas = b;
      continue;
      localas = c;
    }
  }

  private static as a(cp paramcp)
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
    return (co)aq.f().h().get(0);
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
 * Qualified Name:     com.b.a.as
 * JD-Core Version:    0.6.2
 */