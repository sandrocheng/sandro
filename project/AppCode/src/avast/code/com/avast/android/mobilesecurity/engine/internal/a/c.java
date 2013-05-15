package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.v;
import com.google.a.w;

public enum c
  implements v
{
  private static w d = new d();
  private final int e;

  static
  {
    c[] arrayOfc = new c[3];
    arrayOfc[0] = a;
    arrayOfc[1] = b;
    arrayOfc[2] = c;
    f = arrayOfc;
  }

  private c(int arg3, int arg4)
  {
    int i;
    this.e = i;
  }

  public static c a(int paramInt)
  {
    c localc;
    switch (paramInt)
    {
    default:
      localc = null;
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return localc;
      localc = a;
      continue;
      localc = b;
      continue;
      localc = c;
    }
  }

  public final int a()
  {
    return this.e;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.c
 * JD-Core Version:    0.6.2
 */