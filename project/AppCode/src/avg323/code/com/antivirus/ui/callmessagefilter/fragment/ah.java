package com.antivirus.ui.callmessagefilter.fragment;

import com.antivirus.ui.callmessagefilter.b.d;
import com.antivirus.ui.callmessagefilter.w;

public enum ah
  implements w
{
  private final int d;
  private final int e;
  private final d[] f;

  static
  {
    d[] arrayOfd1 = new d[5];
    arrayOfd1[0] = d.a;
    arrayOfd1[1] = d.c;
    arrayOfd1[2] = d.e;
    arrayOfd1[3] = d.b;
    arrayOfd1[4] = d.d;
    a = new ah("ALL_INCOMING_MESSAGES", 0, 0, 2131296749, arrayOfd1);
    d[] arrayOfd2 = new d[1];
    arrayOfd2[0] = d.b;
    b = new ah("SUSPICIOUS_MESSAGES", 1, 1, 2131296750, arrayOfd2);
    d[] arrayOfd3 = new d[1];
    arrayOfd3[0] = d.c;
    c = new ah("BLOCKED_MESSAGES", 2, 2, 2131296751, arrayOfd3);
    ah[] arrayOfah = new ah[3];
    arrayOfah[0] = a;
    arrayOfah[1] = b;
    arrayOfah[2] = c;
  }

  private ah(int paramArrayOfd, int arg4, d[] arg5)
  {
    this.d = paramArrayOfd;
    int i;
    this.e = i;
    Object localObject;
    this.f = localObject;
  }

  public static ah a(int paramInt)
  {
    ah[] arrayOfah = values();
    int i = arrayOfah.length;
    int j = 0;
    ah localah;
    if (j < i)
    {
      localah = arrayOfah[j];
      if (paramInt != localah.d);
    }
    while (true)
    {
      return localah;
      j++;
      break;
      localah = a;
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

  public d[] d()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.fragment.ah
 * JD-Core Version:    0.6.2
 */