package com.ijinshan.kinghelper.firewall.core;

public final class p
{
  public static String a = "wappush_message";

  private static int a(byte[] paramArrayOfByte, int paramInt)
  {
    int i;
    if (paramArrayOfByte == null)
      i = -1;
    while (true)
    {
      return i;
      if (paramInt == -1)
      {
        i = -1;
      }
      else
      {
        i = paramInt;
        try
        {
          while (true)
          {
            if (i >= paramArrayOfByte.length)
              break label42;
            int j = paramArrayOfByte[i];
            if (j == 0)
              break;
            i++;
          }
          label42: i = -1;
        }
        catch (Exception localException)
        {
          i = -1;
        }
      }
    }
  }

  static String a(byte[] paramArrayOfByte)
  {
    try
    {
      int i = b(paramArrayOfByte);
      int j = a(paramArrayOfByte, i);
      int k = c(paramArrayOfByte);
      int m = a(paramArrayOfByte, k);
      if ((i >= 0) && (j >= 0) && (k >= 0) && (m >= 0))
      {
        byte[] arrayOfByte1 = new byte[j - i];
        System.arraycopy(paramArrayOfByte, i, arrayOfByte1, 0, arrayOfByte1.length);
        byte[] arrayOfByte2 = new byte[m - k];
        System.arraycopy(paramArrayOfByte, k, arrayOfByte2, 0, arrayOfByte2.length);
        String str2 = "http://" + new String(arrayOfByte1, "UTF8");
        String str3 = new String(arrayOfByte2, "UTF8");
        String str4 = str3 + " " + str2;
        str1 = str4;
      }
    }
    catch (Exception localException)
    {
      str1 = null;
    }
    String str1 = null;
    return str1;
  }

  private static int b(byte[] paramArrayOfByte)
  {
    int j;
    if (paramArrayOfByte == null)
      j = -1;
    while (true)
    {
      return j;
      byte[] arrayOfByte = { 12, 3 };
      int i = 0;
      try
      {
        while (true)
        {
          if (paramArrayOfByte[i] == arrayOfByte[0])
          {
            int k = paramArrayOfByte[(i + 1)];
            int m = arrayOfByte[1];
            if (k == m)
            {
              j = i + 2;
              break;
            }
          }
          i++;
        }
      }
      catch (Exception localException)
      {
        j = -1;
      }
    }
  }

  private static int c(byte[] paramArrayOfByte)
  {
    int i = 0;
    int j;
    if (paramArrayOfByte == null)
      j = -1;
    while (true)
    {
      return j;
      byte[] arrayOfByte = { 0, 1, 3 };
      try
      {
        while (true)
        {
          if ((paramArrayOfByte[i] == arrayOfByte[0]) && (paramArrayOfByte[(i + 1)] == arrayOfByte[1]))
          {
            int k = paramArrayOfByte[(i + 2)];
            int m = arrayOfByte[2];
            if (k == m)
            {
              j = i + 3;
              break;
            }
          }
          i++;
        }
      }
      catch (Exception localException)
      {
        j = -1;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.core.p
 * JD-Core Version:    0.6.2
 */