package com.b.a;

import java.util.List;

public enum al
  implements fb
{
  public static final int d = 1;
  public static final int e = 2;
  public static final int f = 3;
  private static er g;
  private static final al[] h = arrayOfal2;
  private final int i;
  private final int j;

  static
  {
    al[] arrayOfal1 = new al[3];
    arrayOfal1[0] = a;
    arrayOfal1[1] = b;
    arrayOfal1[2] = c;
    k = arrayOfal1;
    g = new am();
    al[] arrayOfal2 = new al[3];
    arrayOfal2[0] = a;
    arrayOfal2[1] = b;
    arrayOfal2[2] = c;
  }

  private al(int arg3, int arg4)
  {
    int m;
    this.i = m;
    int n;
    this.j = n;
  }

  public static al a(int paramInt)
  {
    al localal;
    switch (paramInt)
    {
    default:
      localal = null;
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return localal;
      localal = a;
      continue;
      localal = b;
      continue;
      localal = c;
    }
  }

  private static al a(cp paramcp)
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
    return (co)aj.f().h().get(1);
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
 * Qualified Name:     com.b.a.al
 * JD-Core Version:    0.6.2
 */