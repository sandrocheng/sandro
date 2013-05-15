package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.v;
import com.google.a.w;

public enum j
  implements v
{
  private static w d = new k();
  private final int e;

  static
  {
    j[] arrayOfj = new j[3];
    arrayOfj[0] = a;
    arrayOfj[1] = b;
    arrayOfj[2] = c;
    f = arrayOfj;
  }

  private j(int arg3, int arg4)
  {
    int i;
    this.e = i;
  }

  public static j a(int paramInt)
  {
    j localj;
    switch (paramInt)
    {
    default:
      localj = null;
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return localj;
      localj = a;
      continue;
      localj = b;
      continue;
      localj = c;
    }
  }

  public final int a()
  {
    return this.e;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.j
 * JD-Core Version:    0.6.2
 */