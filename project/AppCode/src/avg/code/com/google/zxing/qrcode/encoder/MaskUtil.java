package com.google.zxing.qrcode.encoder;

final class MaskUtil
{
  static int applyMaskPenaltyRule1(ByteMatrix paramByteMatrix)
  {
    return applyMaskPenaltyRule1Internal(paramByteMatrix, true) + applyMaskPenaltyRule1Internal(paramByteMatrix, false);
  }

  private static int applyMaskPenaltyRule1Internal(ByteMatrix paramByteMatrix, boolean paramBoolean)
  {
    int i = -1;
    int j;
    int k;
    label21: byte[][] arrayOfByte;
    int m;
    int n;
    if (paramBoolean)
    {
      j = paramByteMatrix.getHeight();
      if (!paramBoolean)
        break label50;
      k = paramByteMatrix.getWidth();
      arrayOfByte = paramByteMatrix.getArray();
      m = 0;
      n = 0;
    }
    label50: int i1;
    int i2;
    while (true)
    {
      if (m >= j)
      {
        return n;
        j = paramByteMatrix.getWidth();
        break;
        k = paramByteMatrix.getHeight();
        break label21;
      }
      i1 = 0;
      i2 = 0;
      if (i1 < k)
        break label78;
      m++;
    }
    label78: int i3;
    label92: int i5;
    if (paramBoolean)
    {
      i3 = arrayOfByte[m][i1];
      if (i3 != i)
        break label148;
      i5 = i2 + 1;
      if (i5 != 5)
        break label136;
      n += 3;
    }
    while (true)
    {
      i1++;
      i2 = i5;
      break;
      i3 = arrayOfByte[i1][m];
      break label92;
      label136: if (i5 > 5)
      {
        n++;
        continue;
        label148: int i4 = i3;
        i5 = 1;
        i = i4;
      }
    }
  }

  static int applyMaskPenaltyRule2(ByteMatrix paramByteMatrix)
  {
    byte[][] arrayOfByte = paramByteMatrix.getArray();
    int i = paramByteMatrix.getWidth();
    int j = paramByteMatrix.getHeight();
    int k = 0;
    int m = 0;
    if (k >= j - 1)
      return m;
    for (int n = 0; ; n++)
    {
      if (n >= i - 1)
      {
        k++;
        break;
      }
      int i1 = arrayOfByte[k][n];
      if ((i1 == arrayOfByte[k][(n + 1)]) && (i1 == arrayOfByte[(k + 1)][n]) && (i1 == arrayOfByte[(k + 1)][(n + 1)]))
        m += 3;
    }
  }

  static int applyMaskPenaltyRule3(ByteMatrix paramByteMatrix)
  {
    byte[][] arrayOfByte = paramByteMatrix.getArray();
    int i = paramByteMatrix.getWidth();
    int j = paramByteMatrix.getHeight();
    int k = 0;
    int m = 0;
    if (k >= j)
      return m;
    for (int n = 0; ; n++)
    {
      if (n >= i)
      {
        k++;
        break;
      }
      if ((n + 6 < i) && (arrayOfByte[k][n] == 1) && (arrayOfByte[k][(n + 1)] == 0) && (arrayOfByte[k][(n + 2)] == 1) && (arrayOfByte[k][(n + 3)] == 1) && (arrayOfByte[k][(n + 4)] == 1) && (arrayOfByte[k][(n + 5)] == 0) && (arrayOfByte[k][(n + 6)] == 1) && (((n + 10 < i) && (arrayOfByte[k][(n + 7)] == 0) && (arrayOfByte[k][(n + 8)] == 0) && (arrayOfByte[k][(n + 9)] == 0) && (arrayOfByte[k][(n + 10)] == 0)) || ((n - 4 >= 0) && (arrayOfByte[k][(n - 1)] == 0) && (arrayOfByte[k][(n - 2)] == 0) && (arrayOfByte[k][(n - 3)] == 0) && (arrayOfByte[k][(n - 4)] == 0))))
        m += 40;
      if ((k + 6 < j) && (arrayOfByte[k][n] == 1) && (arrayOfByte[(k + 1)][n] == 0) && (arrayOfByte[(k + 2)][n] == 1) && (arrayOfByte[(k + 3)][n] == 1) && (arrayOfByte[(k + 4)][n] == 1) && (arrayOfByte[(k + 5)][n] == 0) && (arrayOfByte[(k + 6)][n] == 1) && (((k + 10 < j) && (arrayOfByte[(k + 7)][n] == 0) && (arrayOfByte[(k + 8)][n] == 0) && (arrayOfByte[(k + 9)][n] == 0) && (arrayOfByte[(k + 10)][n] == 0)) || ((k - 4 >= 0) && (arrayOfByte[(k - 1)][n] == 0) && (arrayOfByte[(k - 2)][n] == 0) && (arrayOfByte[(k - 3)][n] == 0) && (arrayOfByte[(k - 4)][n] == 0))))
        m += 40;
    }
  }

  static int applyMaskPenaltyRule4(ByteMatrix paramByteMatrix)
  {
    byte[][] arrayOfByte = paramByteMatrix.getArray();
    int i = paramByteMatrix.getWidth();
    int j = paramByteMatrix.getHeight();
    int k = 0;
    int m = 0;
    if (k >= j)
    {
      int i1 = paramByteMatrix.getHeight() * paramByteMatrix.getWidth();
      return 10 * (Math.abs((int)(100.0D * (m / i1) - 50.0D)) / 5);
    }
    for (int n = 0; ; n++)
    {
      if (n >= i)
      {
        k++;
        break;
      }
      if (arrayOfByte[k][n] == 1)
        m++;
    }
  }

  static boolean getDataMaskBit(int paramInt1, int paramInt2, int paramInt3)
  {
    if (!QRCode.isValidMaskPattern(paramInt1))
      throw new IllegalArgumentException("Invalid mask pattern");
    int i;
    switch (paramInt1)
    {
    default:
      throw new IllegalArgumentException("Invalid mask pattern: " + paramInt1);
    case 0:
      i = 0x1 & paramInt3 + paramInt2;
      if (i != 0)
        break;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    }
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      i = paramInt3 & 0x1;
      break;
      i = paramInt2 % 3;
      break;
      i = (paramInt3 + paramInt2) % 3;
      break;
      i = 0x1 & (paramInt3 >>> 1) + paramInt2 / 3;
      break;
      int k = paramInt3 * paramInt2;
      i = (k & 0x1) + k % 3;
      break;
      int j = paramInt3 * paramInt2;
      i = 0x1 & (j & 0x1) + j % 3;
      break;
      i = 0x1 & paramInt3 * paramInt2 % 3 + (0x1 & paramInt3 + paramInt2);
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.encoder.MaskUtil
 * JD-Core Version:    0.6.2
 */