package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.co;
import com.b.a.cp;
import com.b.a.er;
import com.b.a.fb;
import java.util.List;

public enum dc
  implements fb
{
  public static final int e = 1;
  public static final int f = 2;
  public static final int g = 3;
  public static final int h = 4;
  private static er i;
  private static final dc[] j = arrayOfdc2;
  private final int k;
  private final int l;

  static
  {
    dc[] arrayOfdc1 = new dc[4];
    arrayOfdc1[0] = a;
    arrayOfdc1[1] = b;
    arrayOfdc1[2] = c;
    arrayOfdc1[3] = d;
    m = arrayOfdc1;
    i = new dd();
    dc[] arrayOfdc2 = new dc[4];
    arrayOfdc2[0] = a;
    arrayOfdc2[1] = b;
    arrayOfdc2[2] = c;
    arrayOfdc2[3] = d;
  }

  private dc(int arg3, int arg4)
  {
    int n;
    this.k = n;
    int i1;
    this.l = i1;
  }

  public static dc a(int paramInt)
  {
    dc localdc;
    switch (paramInt)
    {
    default:
      localdc = null;
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return localdc;
      localdc = a;
      continue;
      localdc = b;
      continue;
      localdc = c;
      continue;
      localdc = d;
    }
  }

  private static dc a(cp paramcp)
  {
    if (paramcp.e() != e())
      throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    return j[paramcp.d()];
  }

  private static er d()
  {
    return i;
  }

  private static co e()
  {
    return (co)da.i().h().get(0);
  }

  public final int H_()
  {
    return this.l;
  }

  public final cp b()
  {
    return (cp)e().d().get(this.k);
  }

  public final co c()
  {
    return e();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.dc
 * JD-Core Version:    0.6.2
 */