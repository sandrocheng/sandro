package com.c.a.a;

public final class c
{
  private static final byte[] a = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };

  public static String a(byte[] paramArrayOfByte, String paramString)
  {
    int i = (paramArrayOfByte.length << 2) / 3;
    byte[] arrayOfByte = new byte[i + (3 + i / 76)];
    int j = paramArrayOfByte.length - paramArrayOfByte.length % 3;
    int k = 0;
    int m = 0;
    int n = 0;
    while (m < j)
    {
      int i9 = n + 1;
      arrayOfByte[n] = a[((0xFF & paramArrayOfByte[m]) >> 2)];
      int i10 = i9 + 1;
      arrayOfByte[i9] = a[((0x3 & paramArrayOfByte[m]) << 4 | (0xFF & paramArrayOfByte[(m + 1)]) >> 4)];
      int i11 = i10 + 1;
      arrayOfByte[i10] = a[((0xF & paramArrayOfByte[(m + 1)]) << 2 | (0xFF & paramArrayOfByte[(m + 2)]) >> 6)];
      n = i11 + 1;
      arrayOfByte[i11] = a[(0x3F & paramArrayOfByte[(m + 2)])];
      if (((n - k) % 76 == 0) && (n != 0))
      {
        int i12 = n + 1;
        arrayOfByte[n] = 10;
        k++;
        n = i12;
      }
      m += 3;
    }
    int i4;
    switch (paramArrayOfByte.length % 3)
    {
    default:
      i4 = n;
    case 1:
    case 2:
    }
    while (true)
    {
      return new String(arrayOfByte, 0, i4, paramString);
      int i5 = n + 1;
      arrayOfByte[n] = a[((0xFF & paramArrayOfByte[j]) >> 2)];
      int i6 = i5 + 1;
      arrayOfByte[i5] = a[((0x3 & paramArrayOfByte[j]) << 4)];
      int i7 = i6 + 1;
      arrayOfByte[i6] = 61;
      int i8 = i7 + 1;
      arrayOfByte[i7] = 61;
      i4 = i8;
      continue;
      int i1 = n + 1;
      arrayOfByte[n] = a[((0xFF & paramArrayOfByte[j]) >> 2)];
      int i2 = i1 + 1;
      arrayOfByte[i1] = a[((0x3 & paramArrayOfByte[j]) << 4 | (0xFF & paramArrayOfByte[(j + 1)]) >> 4)];
      int i3 = i2 + 1;
      arrayOfByte[i2] = a[((0xF & paramArrayOfByte[(j + 1)]) << 2)];
      i4 = i3 + 1;
      arrayOfByte[i3] = 61;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.c.a.a.c
 * JD-Core Version:    0.6.2
 */