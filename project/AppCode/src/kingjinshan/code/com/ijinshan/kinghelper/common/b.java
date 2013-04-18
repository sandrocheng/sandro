package com.ijinshan.kinghelper.common;

public final class b
{
  private char[] a = { 21834, -32083, 25830, 25645, -30978, 21457, 22134, 21704, 21704, 20987, 21888, 22403, 22920, 25343, 21734, 21866, 26399, 28982, 25746, 22604, 22604, 22604, 25366, 26132, 21387, 21277, 24231 };
  private char[] b = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90 };
  private int[] c = new int[27];

  public b()
  {
    for (int i = 0; i < 27; i++)
      this.c[i] = b(this.a[i]);
  }

  private char a(char paramChar)
  {
    char c1;
    if ((paramChar >= 'a') && (paramChar <= 'z'))
      c1 = (char)(65 + (paramChar - 'a'));
    while (true)
    {
      return c1;
      if ((paramChar >= 'A') && (paramChar <= 'Z'))
      {
        c1 = paramChar;
      }
      else
      {
        int i = b(paramChar);
        if (i < this.c[0])
        {
          c1 = '0';
        }
        else
        {
          int j = 0;
          if (j < 26)
          {
            int m;
            int k;
            if (i >= this.c[j])
            {
              for (m = j + 1; (m < 26) && (this.c[m] == this.c[j]); m++);
              if (m == 26)
                if (i <= this.c[m])
                  k = 1;
            }
            while (true)
            {
              if (k != 0)
                break label178;
              j++;
              break;
              k = 0;
              continue;
              if (i < this.c[m])
                k = 1;
              else
                k = 0;
            }
          }
          label178: if (j >= 26)
            c1 = '0';
          else
            c1 = this.b[j];
        }
      }
    }
  }

  private boolean a(int paramInt1, int paramInt2)
  {
    boolean bool;
    if (paramInt2 < this.c[paramInt1])
      bool = false;
    while (true)
    {
      return bool;
      for (int i = paramInt1 + 1; (i < 26) && (this.c[i] == this.c[paramInt1]); i++);
      if (i == 26)
      {
        if (paramInt2 <= this.c[i])
          bool = true;
        else
          bool = false;
      }
      else if (paramInt2 < this.c[i])
        bool = true;
      else
        bool = false;
    }
  }

  private static int b(char paramChar)
  {
    String str1 = new String();
    String str2 = str1 + paramChar;
    int i;
    try
    {
      byte[] arrayOfByte = str2.getBytes("GB2312");
      if (arrayOfByte.length < 2)
      {
        i = 0;
      }
      else
      {
        int j = 0xFF00 & arrayOfByte[0] << 8;
        int k = arrayOfByte[1];
        i = j + (k & 0xFF);
      }
    }
    catch (Exception localException)
    {
      i = 0;
    }
    return i;
  }

  public final String a(String paramString)
  {
    int i = paramString.length();
    Object localObject1 = "";
    int j = 0;
    while (true)
    {
      if (j < i);
      try
      {
        String str = (String)localObject1 + a(paramString.charAt(j));
        localObject1 = str;
        j++;
        continue;
        localObject2 = localObject1;
        return localObject2;
      }
      catch (Exception localException)
      {
        while (true)
          Object localObject2 = "";
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.common.b
 * JD-Core Version:    0.6.2
 */