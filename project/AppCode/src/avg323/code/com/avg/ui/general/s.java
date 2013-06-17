package com.avg.ui.general;

public enum s
{
  private final int g;

  static
  {
    s[] arrayOfs = new s[6];
    arrayOfs[0] = a;
    arrayOfs[1] = b;
    arrayOfs[2] = c;
    arrayOfs[3] = d;
    arrayOfs[4] = e;
    arrayOfs[5] = f;
  }

  private s(int arg3)
  {
    int j;
    this.g = j;
  }

  public static s a(int paramInt)
  {
    for (s locals : values())
      if (locals.g == paramInt)
        return locals;
    throw new IllegalArgumentException("No such item in Privacy view");
  }

  public int a()
  {
    return this.g;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.s
 * JD-Core Version:    0.6.2
 */