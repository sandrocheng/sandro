package com.a.a.a.a;

public class a
{
  private static final byte[] b;
  private static final byte[] c;
  private static final byte[] d;
  private static final byte[] e;

  static
  {
    if (!a.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      b = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
      c = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
      d = new byte[] { -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9 };
      e = new byte[] { -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, 63, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9 };
      return;
    }
  }

  private static int a(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2, byte[] paramArrayOfByte3)
  {
    int j;
    if (paramArrayOfByte1[(paramInt1 + 2)] == 61)
    {
      paramArrayOfByte2[paramInt2] = ((byte)((paramArrayOfByte3[paramArrayOfByte1[paramInt1]] << 24 >>> 6 | paramArrayOfByte3[paramArrayOfByte1[(paramInt1 + 1)]] << 24 >>> 12) >>> 16));
      j = 1;
    }
    while (true)
    {
      return j;
      if (paramArrayOfByte1[(paramInt1 + 3)] == 61)
      {
        int k = paramArrayOfByte3[paramArrayOfByte1[paramInt1]] << 24 >>> 6 | paramArrayOfByte3[paramArrayOfByte1[(paramInt1 + 1)]] << 24 >>> 12 | paramArrayOfByte3[paramArrayOfByte1[(paramInt1 + 2)]] << 24 >>> 18;
        paramArrayOfByte2[paramInt2] = ((byte)(k >>> 16));
        paramArrayOfByte2[(paramInt2 + 1)] = ((byte)(k >>> 8));
        j = 2;
      }
      else
      {
        int i = paramArrayOfByte3[paramArrayOfByte1[paramInt1]] << 24 >>> 6 | paramArrayOfByte3[paramArrayOfByte1[(paramInt1 + 1)]] << 24 >>> 12 | paramArrayOfByte3[paramArrayOfByte1[(paramInt1 + 2)]] << 24 >>> 18 | paramArrayOfByte3[paramArrayOfByte1[(paramInt1 + 3)]] << 24 >>> 24;
        paramArrayOfByte2[paramInt2] = ((byte)(i >> 16));
        paramArrayOfByte2[(paramInt2 + 1)] = ((byte)(i >> 8));
        paramArrayOfByte2[(paramInt2 + 2)] = ((byte)i);
        j = 3;
      }
    }
  }

  public static String a(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length, b, true);
  }

  public static String a(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, boolean paramBoolean)
  {
    byte[] arrayOfByte = a(paramArrayOfByte1, paramInt1, paramInt2, paramArrayOfByte2, 2147483647);
    for (int i = arrayOfByte.length; ; i--)
      if ((paramBoolean) || (i <= 0) || (arrayOfByte[(i - 1)] != 61))
        return new String(arrayOfByte, 0, i);
  }

  public static byte[] a(String paramString)
  {
    byte[] arrayOfByte = paramString.getBytes();
    return a(arrayOfByte, 0, arrayOfByte.length);
  }

  public static byte[] a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return a(paramArrayOfByte, paramInt1, paramInt2, d);
  }

  public static byte[] a(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte1 = new byte[2 + paramInt2 * 3 / 4];
    byte[] arrayOfByte2 = new byte[4];
    int i = 0;
    int j = 0;
    int k = 0;
    int i1;
    int i2;
    if (i < paramInt2)
    {
      int m = (byte)(0x7F & paramArrayOfByte1[(i + paramInt1)]);
      int n = paramArrayOfByte2[m];
      if (n >= -5)
      {
        if (n < -1)
          break label397;
        if (m == 61)
        {
          int i3 = paramInt2 - i;
          int i4 = (byte)(0x7F & paramArrayOfByte1[(paramInt1 + (paramInt2 - 1))]);
          if ((j == 0) || (j == 1))
            throw new b("invalid padding byte '=' at byte offset " + i);
          if (((j == 3) && (i3 > 2)) || ((j == 4) && (i3 > 1)))
            throw new b("padding byte '=' falsely signals end of encoded value at offset " + i);
          if ((i4 == 61) || (i4 == 10))
            break label302;
          throw new b("encoded value has invalid trailing byte");
        }
        i1 = j + 1;
        arrayOfByte2[j] = m;
        if (i1 != 4)
          break label390;
        i2 = k + a(arrayOfByte2, 0, arrayOfByte1, k, paramArrayOfByte2);
        i1 = 0;
      }
    }
    while (true)
    {
      i++;
      k = i2;
      j = i1;
      break;
      throw new b("Bad Base64 input character at " + i + ": " + paramArrayOfByte1[(i + paramInt1)] + "(decimal)");
      label302: if (j != 0)
      {
        if (j == 1)
          throw new b("single trailing character at offset " + (paramInt2 - 1));
        (j + 1);
        arrayOfByte2[j] = 61;
        k += a(arrayOfByte2, 0, arrayOfByte1, k, paramArrayOfByte2);
      }
      byte[] arrayOfByte3 = new byte[k];
      System.arraycopy(arrayOfByte1, 0, arrayOfByte3, 0, k);
      return arrayOfByte3;
      label390: i2 = k;
      continue;
      label397: i1 = j;
      i2 = k;
    }
  }

  public static byte[] a(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    int i = 4 * ((paramInt2 + 2) / 3);
    byte[] arrayOfByte = new byte[i + i / paramInt3];
    int j = paramInt2 - 2;
    int k = 0;
    int m = 0;
    int n = 0;
    while (n < j)
    {
      int i1 = paramArrayOfByte1[(n + paramInt1)] << 24 >>> 8 | paramArrayOfByte1[(paramInt1 + (n + 1))] << 24 >>> 16 | paramArrayOfByte1[(paramInt1 + (n + 2))] << 24 >>> 24;
      arrayOfByte[m] = paramArrayOfByte2[(i1 >>> 18)];
      arrayOfByte[(m + 1)] = paramArrayOfByte2[(0x3F & i1 >>> 12)];
      arrayOfByte[(m + 2)] = paramArrayOfByte2[(0x3F & i1 >>> 6)];
      arrayOfByte[(m + 3)] = paramArrayOfByte2[(i1 & 0x3F)];
      int i2 = k + 4;
      if (i2 == paramInt3)
      {
        arrayOfByte[(m + 4)] = 10;
        m++;
        i2 = 0;
      }
      n += 3;
      m += 4;
      k = i2;
    }
    if (n < paramInt2)
    {
      a(paramArrayOfByte1, n + paramInt1, paramInt2 - n, arrayOfByte, m, paramArrayOfByte2);
      if (k + 4 == paramInt3)
      {
        arrayOfByte[(m + 4)] = 10;
        m++;
      }
      m += 4;
    }
    if ((!a) && (m != arrayOfByte.length))
      throw new AssertionError();
    return arrayOfByte;
  }

  private static byte[] a(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3, byte[] paramArrayOfByte3)
  {
    int i;
    int j;
    label33: int n;
    if (paramInt2 > 0)
    {
      i = paramArrayOfByte1[paramInt1] << 24 >>> 8;
      if (paramInt2 <= 1)
        break label104;
      j = paramArrayOfByte1[(paramInt1 + 1)] << 24 >>> 16;
      int k = j | i;
      int m = 0;
      if (paramInt2 > 2)
        m = paramArrayOfByte1[(paramInt1 + 2)] << 24 >>> 24;
      n = m | k;
      switch (paramInt2)
      {
      default:
      case 3:
      case 2:
      case 1:
      }
    }
    while (true)
    {
      return paramArrayOfByte2;
      i = 0;
      break;
      label104: j = 0;
      break label33;
      paramArrayOfByte2[paramInt3] = paramArrayOfByte3[(n >>> 18)];
      paramArrayOfByte2[(paramInt3 + 1)] = paramArrayOfByte3[(0x3F & n >>> 12)];
      paramArrayOfByte2[(paramInt3 + 2)] = paramArrayOfByte3[(0x3F & n >>> 6)];
      paramArrayOfByte2[(paramInt3 + 3)] = paramArrayOfByte3[(n & 0x3F)];
      continue;
      paramArrayOfByte2[paramInt3] = paramArrayOfByte3[(n >>> 18)];
      paramArrayOfByte2[(paramInt3 + 1)] = paramArrayOfByte3[(0x3F & n >>> 12)];
      paramArrayOfByte2[(paramInt3 + 2)] = paramArrayOfByte3[(0x3F & n >>> 6)];
      paramArrayOfByte2[(paramInt3 + 3)] = 61;
      continue;
      paramArrayOfByte2[paramInt3] = paramArrayOfByte3[(n >>> 18)];
      paramArrayOfByte2[(paramInt3 + 1)] = paramArrayOfByte3[(0x3F & n >>> 12)];
      paramArrayOfByte2[(paramInt3 + 2)] = 61;
      paramArrayOfByte2[(paramInt3 + 3)] = 61;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.a.a.a.a.a
 * JD-Core Version:    0.6.2
 */