package com.google.b.b;

final class i
{
  private final String[] a = new String[512];

  public String a(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    int j = 0;
    while (i < paramInt1 + paramInt2)
    {
      j = j * 31 + paramArrayOfChar[i];
      i++;
    }
    int k = j ^ (j >>> 20 ^ j >>> 12);
    int m = (k ^ (k >>> 7 ^ k >>> 4)) & -1 + this.a.length;
    String str = this.a[m];
    int i1;
    if (str != null)
    {
      int n = str.length();
      i1 = 0;
      if (n == paramInt2);
    }
    else
    {
      str = new String(paramArrayOfChar, paramInt1, paramInt2);
      this.a[m] = str;
    }
    while (true)
    {
      return str;
      i1++;
      if (i1 < paramInt2)
      {
        if (str.charAt(i1) == paramArrayOfChar[(paramInt1 + i1)])
          break;
        str = new String(paramArrayOfChar, paramInt1, paramInt2);
        this.a[m] = str;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.b.b.i
 * JD-Core Version:    0.6.2
 */