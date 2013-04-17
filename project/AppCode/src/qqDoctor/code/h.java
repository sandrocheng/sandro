public final class h
{
  private static byte[] a = null;

  public h(byte[] paramArrayOfByte)
  {
    a = paramArrayOfByte;
  }

  private static void a(byte[] paramArrayOfByte, int[] paramArrayOfInt)
  {
    int i = 0;
    int j = paramArrayOfByte.length >> 2;
    int k = 0;
    int i5;
    if (k >= j)
      if (i < paramArrayOfByte.length)
      {
        i5 = i + 1;
        paramArrayOfInt[k] = (0xFF & paramArrayOfByte[i]);
      }
    for (int i6 = 8; ; i6 += 8)
    {
      if (i5 >= paramArrayOfByte.length)
      {
        return;
        int m = i + 1;
        paramArrayOfInt[k] = (0xFF & paramArrayOfByte[i]);
        int n = paramArrayOfInt[k];
        int i1 = m + 1;
        paramArrayOfInt[k] = (n | (0xFF & paramArrayOfByte[m]) << 8);
        int i2 = paramArrayOfInt[k];
        int i3 = i1 + 1;
        paramArrayOfInt[k] = (i2 | (0xFF & paramArrayOfByte[i1]) << 16);
        int i4 = paramArrayOfInt[k];
        i = i3 + 1;
        paramArrayOfInt[k] = (i4 | (0xFF & paramArrayOfByte[i3]) << 24);
        k++;
        break;
      }
      paramArrayOfInt[k] |= (0xFF & paramArrayOfByte[i5]) << i6;
      i5++;
    }
  }

  public static byte[] a(byte[] paramArrayOfByte)
  {
    int i = 0;
    if ((paramArrayOfByte == null) || (a == null) || (paramArrayOfByte.length == 0))
      return paramArrayOfByte;
    int j;
    label33: int[] arrayOfInt1;
    int k;
    label66: int[] arrayOfInt2;
    int m;
    label84: int n;
    int i3;
    int i4;
    int i5;
    int i6;
    int i12;
    int i13;
    if (paramArrayOfByte.length % 4 == 0)
    {
      j = 1 + (paramArrayOfByte.length >>> 2);
      arrayOfInt1 = new int[j];
      a(paramArrayOfByte, arrayOfInt1);
      arrayOfInt1[(j - 1)] = paramArrayOfByte.length;
      if (a.length % 4 != 0)
        break label265;
      k = a.length >>> 2;
      if (k < 4)
        k = 4;
      arrayOfInt2 = new int[k];
      m = 0;
      if (m < k)
        break label278;
      a(a, arrayOfInt2);
      n = -1 + arrayOfInt1.length;
      int i1 = arrayOfInt1[n];
      int i2 = 6 + 52 / (n + 1);
      i3 = 0;
      i4 = i1;
      i5 = i2;
      i6 = i5 - 1;
      if (i5 > 0)
        break label290;
      paramArrayOfByte = new byte[arrayOfInt1.length << 2];
      i12 = arrayOfInt1.length;
      i13 = paramArrayOfByte.length >> 2;
      if (i13 > i12)
        i13 = i12;
    }
    for (int i14 = 0; ; i14++)
    {
      if (i14 >= i13)
      {
        if ((i12 <= i13) || (i >= paramArrayOfByte.length))
          break;
        int i18 = i + 1;
        paramArrayOfByte[i] = ((byte)arrayOfInt1[i14]);
        int i19 = 8;
        while ((i19 <= 24) && (i18 < paramArrayOfByte.length))
        {
          int i20 = i18 + 1;
          paramArrayOfByte[i18] = ((byte)(arrayOfInt1[i14] >>> i19));
          i19 += 8;
          i18 = i20;
        }
        break;
        j = 2 + (paramArrayOfByte.length >>> 2);
        break label33;
        label265: k = 1 + (a.length >>> 2);
        break label66;
        label278: arrayOfInt2[m] = 0;
        m++;
        break label84;
        label290: i3 += 31161;
        int i7 = 0x3 & i3 >>> 2;
        int i8 = i4;
        for (int i9 = 0; ; i9++)
        {
          if (i9 >= n)
          {
            int i11 = arrayOfInt1[0];
            i4 = arrayOfInt1[n] + ((i8 >>> 5 ^ i11 << 2) + (i11 >>> 3 ^ i8 << 4) ^ (i11 ^ i3) + (i8 ^ arrayOfInt2[(i7 ^ i9 & 0x3)]));
            arrayOfInt1[n] = i4;
            i5 = i6;
            break;
          }
          int i10 = arrayOfInt1[(i9 + 1)];
          i8 = arrayOfInt1[i9] + ((i8 >>> 5 ^ i10 << 2) + (i10 >>> 3 ^ i8 << 4) ^ (i10 ^ i3) + (i8 ^ arrayOfInt2[(i7 ^ i9 & 0x3)]));
          arrayOfInt1[i9] = i8;
        }
      }
      int i15 = i + 1;
      paramArrayOfByte[i] = ((byte)arrayOfInt1[i14]);
      int i16 = i15 + 1;
      paramArrayOfByte[i15] = ((byte)(arrayOfInt1[i14] >>> 8));
      int i17 = i16 + 1;
      paramArrayOfByte[i16] = ((byte)(arrayOfInt1[i14] >>> 16));
      i = i17 + 1;
      paramArrayOfByte[i17] = ((byte)(arrayOfInt1[i14] >> 24));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     h
 * JD-Core Version:    0.6.2
 */