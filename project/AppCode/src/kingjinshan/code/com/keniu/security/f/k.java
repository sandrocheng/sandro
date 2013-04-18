package com.keniu.security.f;

public final class k
{
  private static final String a = "0123456789abcdef";

  public static String a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null);
    StringBuilder localStringBuilder;
    for (String str = null; ; str = localStringBuilder.toString())
    {
      return str;
      int i = paramArrayOfByte.length;
      localStringBuilder = new StringBuilder(i * 2);
      for (int j = 0; j < i; j++)
      {
        localStringBuilder.append("0123456789abcdef".charAt((0xF0 & paramArrayOfByte[j]) >>> 4));
        localStringBuilder.append("0123456789abcdef".charAt(0xF & paramArrayOfByte[j]));
      }
    }
  }

  public static boolean a(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private static boolean a(String paramString1, int paramInt1, int paramInt2, String paramString2, int paramInt3, int paramInt4)
  {
    int i = paramInt3;
    int k;
    boolean bool;
    while (true)
      if ((i < paramInt4) && (paramInt1 < paramInt2))
      {
        k = paramString1.charAt(paramInt1);
        if (k == 63)
        {
          if (a(paramString1, paramInt1 + 1, paramInt2, paramString2, i, paramInt4))
          {
            bool = true;
            label49: return bool;
          }
          paramInt1++;
          i++;
        }
        else
        {
          if (k != 42)
            break;
        }
      }
    while (true)
    {
      int m = paramInt1 + 1;
      if (m < paramInt2)
      {
        int n = paramString1.charAt(m);
        if ((n == 42) || (n == 63));
      }
      else
      {
        if (m >= paramInt2)
        {
          bool = true;
          break label49;
        }
        do
        {
          i++;
          if (i >= paramInt4)
            break;
        }
        while (!a(paramString1, m, paramInt2, paramString2, i, paramInt4));
        bool = true;
        break label49;
        bool = false;
        break label49;
        if (k != paramString2.charAt(i))
        {
          bool = false;
          break label49;
        }
        paramInt1++;
        i++;
        break;
        if (i < paramInt4)
        {
          bool = false;
          break label49;
        }
        while (paramInt1 < paramInt2)
        {
          int j = paramString1.charAt(paramInt1);
          if ((j != 42) && (j != 63))
            break;
          paramInt1++;
        }
        if (paramInt1 >= paramInt2)
        {
          bool = true;
          break label49;
        }
        bool = false;
        break label49;
      }
      paramInt1 = m;
    }
  }

  public static boolean a(String paramString1, String paramString2)
  {
    boolean bool;
    if ((a(paramString1)) && (a(paramString2)))
      bool = true;
    while (true)
    {
      return bool;
      if ((a(paramString1)) || (a(paramString2)))
        bool = false;
      else
        bool = a(paramString1, 0, paramString1.length(), paramString2, 0, paramString2.length());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.f.k
 * JD-Core Version:    0.6.2
 */