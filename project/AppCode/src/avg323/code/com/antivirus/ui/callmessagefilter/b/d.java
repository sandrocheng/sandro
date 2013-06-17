package com.antivirus.ui.callmessagefilter.b;

import com.antivirus.ui.callmessagefilter.x;

public enum d
  implements x
{
  private final int f;
  private final int g;

  static
  {
    d[] arrayOfd = new d[5];
    arrayOfd[0] = a;
    arrayOfd[1] = b;
    arrayOfd[2] = c;
    arrayOfd[3] = d;
    arrayOfd[4] = e;
  }

  private d(int arg3, int arg4)
  {
    int i;
    this.g = i;
    int j;
    this.f = j;
  }

  public static d a(int paramInt)
  {
    d[] arrayOfd = values();
    int i = arrayOfd.length;
    int j = 0;
    d locald;
    if (j < i)
    {
      locald = arrayOfd[j];
      if (paramInt != locald.g);
    }
    while (true)
    {
      return locald;
      j++;
      break;
      locald = a;
    }
  }

  public int a()
  {
    return this.f;
  }

  public int b()
  {
    return this.g;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.b.d
 * JD-Core Version:    0.6.2
 */