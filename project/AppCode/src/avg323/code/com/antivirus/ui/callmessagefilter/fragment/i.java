package com.antivirus.ui.callmessagefilter.fragment;

import com.antivirus.ui.callmessagefilter.a.d;
import com.antivirus.ui.callmessagefilter.w;

public enum i
  implements w
{
  private final int c;
  private final int d;
  private final d[] e;

  static
  {
    d[] arrayOfd1 = new d[5];
    arrayOfd1[0] = d.a;
    arrayOfd1[1] = d.d;
    arrayOfd1[2] = d.e;
    arrayOfd1[3] = d.c;
    arrayOfd1[4] = d.b;
    a = new i("ALL_INCOMING_CALLS", 0, 0, 2131296735, arrayOfd1);
    d[] arrayOfd2 = new d[3];
    arrayOfd2[0] = d.d;
    arrayOfd2[1] = d.e;
    arrayOfd2[2] = d.c;
    b = new i("BLOCKED_CALLS", 1, 1, 2131296736, arrayOfd2);
    i[] arrayOfi = new i[2];
    arrayOfi[0] = a;
    arrayOfi[1] = b;
  }

  private i(int paramArrayOfd, int arg4, d[] arg5)
  {
    this.c = paramArrayOfd;
    int i;
    this.d = i;
    Object localObject;
    this.e = localObject;
  }

  public static i a(int paramInt)
  {
    i[] arrayOfi = values();
    int i = arrayOfi.length;
    int j = 0;
    i locali;
    if (j < i)
    {
      locali = arrayOfi[j];
      if (paramInt != locali.c);
    }
    while (true)
    {
      return locali;
      j++;
      break;
      locali = a;
    }
  }

  public int a()
  {
    return this.c;
  }

  public int c()
  {
    return this.d;
  }

  public d[] d()
  {
    return this.e;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.fragment.i
 * JD-Core Version:    0.6.2
 */