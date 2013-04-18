package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.co;
import com.b.a.cp;
import com.b.a.er;
import com.b.a.fb;
import java.util.List;

public enum he
  implements fb
{
  public static final int e = 1;
  public static final int f = 2;
  public static final int g = 3;
  public static final int h = 4;
  private static er i;
  private static final he[] j = arrayOfhe2;
  private final int k;
  private final int l;

  static
  {
    he[] arrayOfhe1 = new he[4];
    arrayOfhe1[0] = a;
    arrayOfhe1[1] = b;
    arrayOfhe1[2] = c;
    arrayOfhe1[3] = d;
    m = arrayOfhe1;
    i = new hf();
    he[] arrayOfhe2 = new he[4];
    arrayOfhe2[0] = a;
    arrayOfhe2[1] = b;
    arrayOfhe2[2] = c;
    arrayOfhe2[3] = d;
  }

  private he(int arg3, int arg4)
  {
    int n;
    this.k = n;
    int i1;
    this.l = i1;
  }

  public static he a(int paramInt)
  {
    he localhe;
    switch (paramInt)
    {
    default:
      localhe = null;
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return localhe;
      localhe = a;
      continue;
      localhe = b;
      continue;
      localhe = c;
      continue;
      localhe = d;
    }
  }

  private static he a(cp paramcp)
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
    return (co)hc.i().h().get(0);
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.he
 * JD-Core Version:    0.6.2
 */