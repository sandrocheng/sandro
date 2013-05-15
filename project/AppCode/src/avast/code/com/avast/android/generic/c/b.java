package com.avast.android.generic.c;

public class b
{
  private static final String a = System.getProperty("line.separator");
  private static char[] b = new char[64];
  private static byte[] c;

  static
  {
    int i = 65;
    int i6;
    for (int j = 0; i <= 90; j = i6)
    {
      char[] arrayOfChar5 = b;
      i6 = j + 1;
      arrayOfChar5[j] = i;
      i = (char)(i + 1);
    }
    int k = 97;
    while (k <= 122)
    {
      char[] arrayOfChar4 = b;
      int i5 = j + 1;
      arrayOfChar4[j] = k;
      k = (char)(k + 1);
      j = i5;
    }
    int m = 48;
    while (m <= 57)
    {
      char[] arrayOfChar3 = b;
      int i4 = j + 1;
      arrayOfChar3[j] = m;
      m = (char)(m + 1);
      j = i4;
    }
    char[] arrayOfChar1 = b;
    int n = j + 1;
    arrayOfChar1[j] = '+';
    char[] arrayOfChar2 = b;
    (n + 1);
    arrayOfChar2[n] = '/';
    c = new byte[''];
    int i3;
    for (int i1 = 0; ; i1++)
    {
      int i2 = c.length;
      i3 = 0;
      if (i1 >= i2)
        break;
      c[i1] = -1;
    }
    while (i3 < 64)
    {
      c[b[i3]] = ((byte)i3);
      i3++;
    }
  }

  public static byte[] a(String paramString)
  {
    return a(paramString.toCharArray());
  }

  public static byte[] a(char[] paramArrayOfChar)
  {
    return a(paramArrayOfChar, 0, paramArrayOfChar.length);
  }

  public static byte[] a(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (paramInt2 % 4 != 0)
      throw new IllegalArgumentException("Length of Base64 encoded input string is not a multiple of 4.");
    while ((paramInt2 > 0) && (paramArrayOfChar[(-1 + (paramInt1 + paramInt2))] == '='))
      paramInt2--;
    int i = paramInt2 * 3 / 4;
    byte[] arrayOfByte = new byte[i];
    int j = paramInt1 + paramInt2;
    int k = 0;
    int i4;
    label176: label187: int i12;
    int i13;
    int i14;
    if (paramInt1 < j)
    {
      int m = paramInt1 + 1;
      int n = paramArrayOfChar[paramInt1];
      int i1 = m + 1;
      int i2 = paramArrayOfChar[m];
      int i3;
      int i5;
      if (i1 < j)
      {
        int i17 = i1 + 1;
        i3 = paramArrayOfChar[i1];
        i1 = i17;
        if (i1 >= j)
          break label176;
        int i16 = i1 + 1;
        i5 = paramArrayOfChar[i1];
        i4 = i16;
      }
      while (true)
      {
        if ((n <= 127) && (i2 <= 127) && (i3 <= 127) && (i5 <= 127))
          break label187;
        throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
        i3 = 65;
        break;
        i4 = i1;
        i5 = 65;
      }
      int i6 = c[n];
      int i7 = c[i2];
      int i8 = c[i3];
      int i9 = c[i5];
      if ((i6 < 0) || (i7 < 0) || (i8 < 0) || (i9 < 0))
        throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
      int i10 = i6 << 2 | i7 >>> 4;
      int i11 = (i7 & 0xF) << 4 | i8 >>> 2;
      i12 = i9 | (i8 & 0x3) << 6;
      i13 = k + 1;
      arrayOfByte[k] = ((byte)i10);
      if (i13 >= i)
        break label360;
      i14 = i13 + 1;
      arrayOfByte[i13] = ((byte)i11);
    }
    while (true)
    {
      int i15;
      if (i14 < i)
      {
        i15 = i14 + 1;
        arrayOfByte[i14] = ((byte)i12);
      }
      while (true)
      {
        k = i15;
        paramInt1 = i4;
        break;
        return arrayOfByte;
        i15 = i14;
      }
      label360: i14 = i13;
    }
  }

  public static char[] a(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public static char[] a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = (2 + paramInt2 * 4) / 3;
    char[] arrayOfChar = new char[4 * ((paramInt2 + 2) / 3)];
    int j = paramInt1 + paramInt2;
    int k = 0;
    if (paramInt1 < j)
    {
      int m = paramInt1 + 1;
      int n = 0xFF & paramArrayOfByte[paramInt1];
      int i1;
      label74: int i2;
      int i3;
      label97: int i7;
      int i10;
      label186: int i11;
      if (m < j)
      {
        int i13 = m + 1;
        i1 = 0xFF & paramArrayOfByte[m];
        m = i13;
        if (m >= j)
          break label238;
        i2 = m + 1;
        i3 = 0xFF & paramArrayOfByte[m];
        int i4 = n >>> 2;
        int i5 = (n & 0x3) << 4 | i1 >>> 4;
        int i6 = (i1 & 0xF) << 2 | i3 >>> 6;
        i7 = i3 & 0x3F;
        int i8 = k + 1;
        arrayOfChar[k] = b[i4];
        int i9 = i8 + 1;
        arrayOfChar[i8] = b[i5];
        if (i9 >= i)
          break label248;
        i10 = b[i6];
        arrayOfChar[i9] = i10;
        i11 = i9 + 1;
        if (i11 >= i)
          break label255;
      }
      label238: label248: label255: for (int i12 = b[i7]; ; i12 = 61)
      {
        arrayOfChar[i11] = i12;
        k = i11 + 1;
        paramInt1 = i2;
        break;
        i1 = 0;
        break label74;
        i2 = m;
        i3 = 0;
        break label97;
        i10 = 61;
        break label186;
      }
    }
    return arrayOfChar;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.c.b
 * JD-Core Version:    0.6.2
 */