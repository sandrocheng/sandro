package com.avast.android.generic.c;

public class a
{
  private static final int[] a = { 255, 255, 26, 27, 28, 29, 30, 31, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 255, 255, 255, 255, 255, 255, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 255, 255, 255, 255, 255 };

  public static byte[] a(String paramString)
  {
    int i = 0;
    byte[] arrayOfByte = new byte[5 * paramString.length() / 8];
    int j = 0;
    int k = 0;
    int m;
    if (k < paramString.length())
    {
      m = '￐' + paramString.charAt(k);
      if ((m >= 0) && (m < a.length));
    }
    while (true)
    {
      k++;
      break;
      int n = a[m];
      if (n != 255)
        if (j <= 3)
        {
          j = (j + 5) % 8;
          if (j == 0)
          {
            arrayOfByte[i] = ((byte)(n | arrayOfByte[i]));
            i++;
            if (i < arrayOfByte.length)
              continue;
          }
        }
        else
        {
          do
          {
            return arrayOfByte;
            arrayOfByte[i] = ((byte)(arrayOfByte[i] | n << 8 - j));
            break;
            j = (j + 5) % 8;
            arrayOfByte[i] = ((byte)(arrayOfByte[i] | n >>> j));
            i++;
          }
          while (i >= arrayOfByte.length);
          arrayOfByte[i] = ((byte)(arrayOfByte[i] | n << 8 - j));
        }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.c.a
 * JD-Core Version:    0.6.2
 */