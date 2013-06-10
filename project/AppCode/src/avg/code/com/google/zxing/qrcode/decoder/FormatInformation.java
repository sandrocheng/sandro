package com.google.zxing.qrcode.decoder;

final class FormatInformation
{
  private static final int[] BITS_SET_IN_HALF_BYTE = arrayOfInt2;
  private static final int[][] FORMAT_INFO_DECODE_LOOKUP;
  private static final int FORMAT_INFO_MASK_QR = 21522;
  private final byte dataMask;
  private final ErrorCorrectionLevel errorCorrectionLevel;

  static
  {
    int[][] arrayOfInt = new int[32][];
    int[] arrayOfInt1 = new int[2];
    arrayOfInt1[0] = 21522;
    arrayOfInt[0] = arrayOfInt1;
    arrayOfInt[1] = { 20773, 1 };
    arrayOfInt[2] = { 24188, 2 };
    arrayOfInt[3] = { 23371, 3 };
    arrayOfInt[4] = { 17913, 4 };
    arrayOfInt[5] = { 16590, 5 };
    arrayOfInt[6] = { 20375, 6 };
    arrayOfInt[7] = { 19104, 7 };
    arrayOfInt[8] = { 30660, 8 };
    arrayOfInt[9] = { 29427, 9 };
    arrayOfInt[10] = { 32170, 10 };
    arrayOfInt[11] = { 30877, 11 };
    arrayOfInt[12] = { 26159, 12 };
    arrayOfInt[13] = { 25368, 13 };
    arrayOfInt[14] = { 27713, 14 };
    arrayOfInt[15] = { 26998, 15 };
    arrayOfInt[16] = { 5769, 16 };
    arrayOfInt[17] = { 5054, 17 };
    arrayOfInt[18] = { 7399, 18 };
    arrayOfInt[19] = { 6608, 19 };
    arrayOfInt[20] = { 1890, 20 };
    arrayOfInt[21] = { 597, 21 };
    arrayOfInt[22] = { 3340, 22 };
    arrayOfInt[23] = { 2107, 23 };
    arrayOfInt[24] = { 13663, 24 };
    arrayOfInt[25] = { 12392, 25 };
    arrayOfInt[26] = { 16177, 26 };
    arrayOfInt[27] = { 14854, 27 };
    arrayOfInt[28] = { 9396, 28 };
    arrayOfInt[29] = { 8579, 29 };
    arrayOfInt[30] = { 11994, 30 };
    arrayOfInt[31] = { 11245, 31 };
    FORMAT_INFO_DECODE_LOOKUP = arrayOfInt;
    int[] arrayOfInt2 = new int[16];
    arrayOfInt2[1] = 1;
    arrayOfInt2[2] = 1;
    arrayOfInt2[3] = 2;
    arrayOfInt2[4] = 1;
    arrayOfInt2[5] = 2;
    arrayOfInt2[6] = 2;
    arrayOfInt2[7] = 3;
    arrayOfInt2[8] = 1;
    arrayOfInt2[9] = 2;
    arrayOfInt2[10] = 2;
    arrayOfInt2[11] = 3;
    arrayOfInt2[12] = 2;
    arrayOfInt2[13] = 3;
    arrayOfInt2[14] = 3;
    arrayOfInt2[15] = 4;
  }

  private FormatInformation(int paramInt)
  {
    this.errorCorrectionLevel = ErrorCorrectionLevel.forBits(0x3 & paramInt >> 3);
    this.dataMask = ((byte)(paramInt & 0x7));
  }

  static FormatInformation decodeFormatInformation(int paramInt1, int paramInt2)
  {
    FormatInformation localFormatInformation = doDecodeFormatInformation(paramInt1, paramInt2);
    if (localFormatInformation != null);
    while (true)
    {
      return localFormatInformation;
      localFormatInformation = doDecodeFormatInformation(paramInt1 ^ 0x5412, paramInt2 ^ 0x5412);
    }
  }

  private static FormatInformation doDecodeFormatInformation(int paramInt1, int paramInt2)
  {
    int i = 2147483647;
    int[][] arrayOfInt = FORMAT_INFO_DECODE_LOOKUP;
    int j = arrayOfInt.length;
    int k = 0;
    int m = 0;
    FormatInformation localFormatInformation;
    label40: int[] arrayOfInt1;
    int n;
    int i1;
    if (k >= j)
    {
      if (i > 3);
    }
    else
    {
      for (localFormatInformation = new FormatInformation(m); ; localFormatInformation = new FormatInformation(arrayOfInt1[1]))
      {
        return localFormatInformation;
        arrayOfInt1 = arrayOfInt[k];
        n = arrayOfInt1[0];
        if ((n != paramInt1) && (n != paramInt2))
          break;
      }
      i1 = numBitsDiffering(paramInt1, n);
      if (i1 >= i)
        break label159;
    }
    for (int i2 = arrayOfInt1[1]; ; i2 = m)
    {
      int i3;
      if (paramInt1 != paramInt2)
      {
        i3 = numBitsDiffering(paramInt2, n);
        if (i3 < i1)
          i2 = arrayOfInt1[1];
      }
      while (true)
      {
        k++;
        int i4 = i2;
        i = i3;
        m = i4;
        break;
        localFormatInformation = null;
        break label40;
        i3 = i1;
      }
      label159: i1 = i;
    }
  }

  static int numBitsDiffering(int paramInt1, int paramInt2)
  {
    int i = paramInt1 ^ paramInt2;
    return BITS_SET_IN_HALF_BYTE[(i & 0xF)] + BITS_SET_IN_HALF_BYTE[(0xF & i >>> 4)] + BITS_SET_IN_HALF_BYTE[(0xF & i >>> 8)] + BITS_SET_IN_HALF_BYTE[(0xF & i >>> 12)] + BITS_SET_IN_HALF_BYTE[(0xF & i >>> 16)] + BITS_SET_IN_HALF_BYTE[(0xF & i >>> 20)] + BITS_SET_IN_HALF_BYTE[(0xF & i >>> 24)] + BITS_SET_IN_HALF_BYTE[(0xF & i >>> 28)];
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof FormatInformation;
    boolean bool2 = false;
    if (!bool1);
    while (true)
    {
      return bool2;
      FormatInformation localFormatInformation = (FormatInformation)paramObject;
      ErrorCorrectionLevel localErrorCorrectionLevel1 = this.errorCorrectionLevel;
      ErrorCorrectionLevel localErrorCorrectionLevel2 = localFormatInformation.errorCorrectionLevel;
      bool2 = false;
      if (localErrorCorrectionLevel1 == localErrorCorrectionLevel2)
      {
        int i = this.dataMask;
        int j = localFormatInformation.dataMask;
        bool2 = false;
        if (i == j)
          bool2 = true;
      }
    }
  }

  final byte getDataMask()
  {
    return this.dataMask;
  }

  final ErrorCorrectionLevel getErrorCorrectionLevel()
  {
    return this.errorCorrectionLevel;
  }

  public final int hashCode()
  {
    return this.errorCorrectionLevel.ordinal() << 3 | this.dataMask;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.FormatInformation
 * JD-Core Version:    0.6.2
 */