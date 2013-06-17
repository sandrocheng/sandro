package com.antivirus.ui.callmessagefilter.fragment;

import com.antivirus.ui.callmessagefilter.contacts.k;
import com.antivirus.ui.callmessagefilter.w;

public enum r
  implements w
{
  private final int d;
  private final int e;

  static
  {
    r[] arrayOfr = new r[3];
    arrayOfr[0] = a;
    arrayOfr[1] = b;
    arrayOfr[2] = c;
  }

  private r(int arg3, int arg4)
  {
    int i;
    this.d = i;
    int j;
    this.e = j;
  }

  public static r a(int paramInt)
  {
    r[] arrayOfr = values();
    int i = arrayOfr.length;
    int j = 0;
    r localr;
    if (j < i)
    {
      localr = arrayOfr[j];
      if (paramInt != localr.d);
    }
    while (true)
    {
      return localr;
      j++;
      break;
      localr = a;
    }
  }

  public int a()
  {
    return this.d;
  }

  public int c()
  {
    return this.e;
  }

  public k[] d()
  {
    return new k[0];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.fragment.r
 * JD-Core Version:    0.6.2
 */