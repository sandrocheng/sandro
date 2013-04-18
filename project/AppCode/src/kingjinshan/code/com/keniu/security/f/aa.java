package com.keniu.security.f;

public final class aa
{
  public String a;
  public int b;
  public String c;
  public String d;
  public int e;
  public boolean f;

  public aa()
  {
    a();
  }

  private static int b(h paramh, String paramString)
  {
    String str = paramh.a(paramString, "size");
    if (k.a(str));
    for (int i = 0; ; i = Integer.parseInt(str))
      return i;
  }

  private static int c(h paramh, String paramString)
  {
    String str = paramh.a(paramString, "delta");
    int i;
    if (k.a(str))
      i = 0;
    while (true)
    {
      return i;
      if ("binary".compareToIgnoreCase(str) == 0)
        i = 1;
      else if ("sqlite".compareToIgnoreCase(str) == 0)
        i = 2;
      else
        i = 0;
    }
  }

  private static boolean d(h paramh, String paramString)
  {
    String str = paramh.a(paramString, "compressed");
    if ((!k.a(str)) && ("true".compareToIgnoreCase(str) == 0));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void a()
  {
    this.a = null;
    this.b = 0;
    this.c = null;
    this.d = null;
    this.e = 0;
    this.f = false;
  }

  public final void a(h paramh, String paramString)
  {
    a();
    this.a = paramh.a(paramString, "path");
    String str1 = paramh.a(paramString, "size");
    int i;
    String str2;
    int j;
    if (k.a(str1))
    {
      i = 0;
      this.b = i;
      this.c = paramh.a(paramString, "md5");
      this.d = paramh.a(paramString, "md5_target");
      str2 = paramh.a(paramString, "delta");
      if (k.a(str2))
        break label159;
      if ("binary".compareToIgnoreCase(str2) != 0)
        break label143;
      j = 1;
      label91: this.e = j;
      String str3 = paramh.a(paramString, "compressed");
      if ((k.a(str3)) || ("true".compareToIgnoreCase(str3) != 0))
        break label165;
    }
    label143: label159: label165: for (boolean bool = true; ; bool = false)
    {
      this.f = bool;
      return;
      i = Integer.parseInt(str1);
      break;
      if ("sqlite".compareToIgnoreCase(str2) == 0)
      {
        j = 2;
        break label91;
      }
      j = 0;
      break label91;
    }
  }

  public final int b()
  {
    int i = this.b;
    if (this.f)
      i *= 4;
    if (this.e != 0)
      i *= 3;
    return i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.f.aa
 * JD-Core Version:    0.6.2
 */