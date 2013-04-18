package com.keniu.security.f;

import java.io.ByteArrayOutputStream;

public final class b
{
  private static char[] a = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
  private static byte[] b = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1 };

  private static String a(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    StringBuffer localStringBuffer = new StringBuffer();
    label78: int i2;
    for (int j = 0; ; j = i2)
    {
      int k;
      int m;
      if (j < i)
      {
        k = j + 1;
        m = 0xFF & paramArrayOfByte[j];
        if (k != i)
          break label78;
        localStringBuffer.append(a[(m >>> 2)]);
        localStringBuffer.append(a[((m & 0x3) << 4)]);
        localStringBuffer.append("==");
      }
      int n;
      int i1;
      while (true)
      {
        return localStringBuffer.toString();
        n = k + 1;
        i1 = 0xFF & paramArrayOfByte[k];
        if (n != i)
          break;
        localStringBuffer.append(a[(m >>> 2)]);
        localStringBuffer.append(a[((m & 0x3) << 4 | (i1 & 0xF0) >>> 4)]);
        localStringBuffer.append(a[((i1 & 0xF) << 2)]);
        localStringBuffer.append("=");
      }
      i2 = n + 1;
      int i3 = 0xFF & paramArrayOfByte[n];
      localStringBuffer.append(a[(m >>> 2)]);
      localStringBuffer.append(a[((m & 0x3) << 4 | (i1 & 0xF0) >>> 4)]);
      localStringBuffer.append(a[((i1 & 0xF) << 2 | (i3 & 0xC0) >>> 6)]);
      localStringBuffer.append(a[(i3 & 0x3F)]);
    }
  }

  public static byte[] a(String paramString)
  {
    byte[] arrayOfByte1 = paramString.getBytes();
    int i = arrayOfByte1.length;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(i);
    int j = 0;
    if (j < i);
    while (true)
    {
      byte[] arrayOfByte3 = b;
      int k = j + 1;
      int m = arrayOfByte3[arrayOfByte1[j]];
      if ((k >= i) || (m != -1))
      {
        if (m != -1);
        int i1;
        for (int n = k; ; n = i1)
        {
          byte[] arrayOfByte4 = b;
          i1 = n + 1;
          int i2 = arrayOfByte4[arrayOfByte1[n]];
          if ((i1 >= i) || (i2 != -1))
          {
            if (i2 != -1)
              localByteArrayOutputStream.write(m << 2 | (i2 & 0x30) >>> 4);
            int i4;
            label287: for (int i3 = i1; ; i3 = i4)
            {
              i4 = i3 + 1;
              int i5 = arrayOfByte1[i3];
              byte[] arrayOfByte2;
              if (i5 == 61)
                arrayOfByte2 = localByteArrayOutputStream.toByteArray();
              while (true)
              {
                return arrayOfByte2;
                int i6 = b[i5];
                if ((i4 < i) && (i6 == -1))
                  break label287;
                if (i6 != -1)
                {
                  localByteArrayOutputStream.write((i2 & 0xF) << 4 | (i6 & 0x3C) >>> 2);
                  int i9;
                  do
                  {
                    int i7 = i4;
                    i4 = i7 + 1;
                    int i8 = arrayOfByte1[i7];
                    if (i8 == 61)
                    {
                      arrayOfByte2 = localByteArrayOutputStream.toByteArray();
                      break;
                    }
                    i9 = b[i8];
                  }
                  while ((i4 < i) && (i9 == -1));
                  if (i9 != -1)
                  {
                    localByteArrayOutputStream.write(i9 | (i6 & 0x3) << 6);
                    j = i4;
                    break;
                  }
                }
                arrayOfByte2 = localByteArrayOutputStream.toByteArray();
              }
            }
          }
        }
      }
      j = k;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.f.b
 * JD-Core Version:    0.6.2
 */