package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import java.lang.reflect.Array;

public final class HybridBinarizer extends GlobalHistogramBinarizer
{
  private static final int BLOCK_SIZE = 8;
  private static final int BLOCK_SIZE_MASK = 7;
  private static final int BLOCK_SIZE_POWER = 3;
  private static final int MINIMUM_DIMENSION = 40;
  private BitMatrix matrix;

  public HybridBinarizer(LuminanceSource paramLuminanceSource)
  {
    super(paramLuminanceSource);
  }

  private static int[][] calculateBlackPoints(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int[] arrayOfInt = { paramInt2, paramInt1 };
    int[][] arrayOfInt1 = (int[][])Array.newInstance(Integer.TYPE, arrayOfInt);
    int j;
    int k;
    for (int i = 0; ; i++)
    {
      if (i >= paramInt2)
        return arrayOfInt1;
      j = i << 3;
      if (j + 8 >= paramInt4)
        j = paramInt4 - 8;
      k = 0;
      if (k < paramInt1)
        break;
    }
    int m = k << 3;
    if (m + 8 >= paramInt3)
      m = paramInt3 - 8;
    int n = m + j * paramInt3;
    int i1 = 0;
    int i2 = n;
    int i3 = 0;
    int i4 = 255;
    int i11;
    int i12;
    int i6;
    int i7;
    for (int i5 = 0; ; i5 = i6)
    {
      if (i1 >= 8)
      {
        i11 = i5 >> 6;
        if (i3 - i4 <= 24)
        {
          i12 = i4 >> 1;
          if ((i <= 0) || (k <= 0))
            break label316;
          i11 = arrayOfInt1[(i - 1)][k] + 2 * arrayOfInt1[i][(k - 1)] + arrayOfInt1[(i - 1)][(k - 1)] >> 2;
          if (i4 >= i11)
            break label316;
        }
        arrayOfInt1[i][k] = i11;
        k++;
        break;
      }
      i6 = i5;
      i7 = 0;
      label234: if (i7 < 8)
        break label268;
      int i9 = i1 + 1;
      int i10 = i2 + paramInt3;
      i1 = i9;
      i2 = i10;
    }
    label268: int i8 = 0xFF & paramArrayOfByte[(i2 + i7)];
    i6 += i8;
    if (i8 < i4)
      i4 = i8;
    if (i8 > i3);
    while (true)
    {
      i7++;
      i3 = i8;
      break label234;
      label316: i11 = i12;
      break;
      i8 = i3;
    }
  }

  private static void calculateThresholdForBlock(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[][] paramArrayOfInt, BitMatrix paramBitMatrix)
  {
    int j;
    int k;
    for (int i = 0; ; i++)
    {
      if (i >= paramInt2)
        return;
      j = i << 3;
      if (j + 8 >= paramInt4)
        j = paramInt4 - 8;
      k = 0;
      if (k < paramInt1)
        break;
    }
    int m = k << 3;
    if (m + 8 >= paramInt3)
      m = paramInt3 - 8;
    int n;
    label79: int i1;
    label91: int i2;
    label101: label109: int i3;
    if (k > 1)
    {
      n = k;
      if (n >= paramInt1 - 2)
        break label150;
      i1 = n;
      if (i <= 1)
        break label158;
      i2 = i;
      if (i2 >= paramInt2 - 2)
        break label164;
      i3 = 0;
    }
    for (int i4 = -2; ; i4++)
    {
      if (i4 > 2)
      {
        threshold8x8Block(paramArrayOfByte, m, j, i3 / 25, paramInt3, paramBitMatrix);
        k++;
        break;
        n = 2;
        break label79;
        label150: i1 = paramInt1 - 3;
        break label91;
        label158: i2 = 2;
        break label101;
        label164: i2 = paramInt2 - 3;
        break label109;
      }
      int[] arrayOfInt = paramArrayOfInt[(i2 + i4)];
      i3 += arrayOfInt[(i1 - 2)] + arrayOfInt[(i1 - 1)] + arrayOfInt[i1] + arrayOfInt[(i1 + 1)] + arrayOfInt[(i1 + 2)];
    }
  }

  private static void threshold8x8Block(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, int paramInt4, BitMatrix paramBitMatrix)
  {
    int i = paramInt1 + paramInt2 * paramInt4;
    int j = 0;
    if (j >= 8)
      return;
    for (int k = 0; ; k++)
    {
      if (k >= 8)
      {
        j++;
        i += paramInt4;
        break;
      }
      if ((0xFF & paramArrayOfByte[(i + k)]) <= paramInt3)
        paramBitMatrix.set(paramInt1 + k, paramInt2 + j);
    }
  }

  public final Binarizer createBinarizer(LuminanceSource paramLuminanceSource)
  {
    return new HybridBinarizer(paramLuminanceSource);
  }

  public final BitMatrix getBlackMatrix()
  {
    BitMatrix localBitMatrix1;
    if (this.matrix != null)
    {
      localBitMatrix1 = this.matrix;
      return localBitMatrix1;
    }
    LuminanceSource localLuminanceSource = getLuminanceSource();
    BitMatrix localBitMatrix2;
    if ((localLuminanceSource.getWidth() >= 40) && (localLuminanceSource.getHeight() >= 40))
    {
      byte[] arrayOfByte = localLuminanceSource.getMatrix();
      int i = localLuminanceSource.getWidth();
      int j = localLuminanceSource.getHeight();
      int k = i >> 3;
      if ((i & 0x7) != 0)
        k++;
      int m = j >> 3;
      if ((j & 0x7) != 0)
        m++;
      int[][] arrayOfInt = calculateBlackPoints(arrayOfByte, k, m, i, j);
      localBitMatrix2 = new BitMatrix(i, j);
      calculateThresholdForBlock(arrayOfByte, k, m, i, j, arrayOfInt, localBitMatrix2);
    }
    for (this.matrix = localBitMatrix2; ; this.matrix = super.getBlackMatrix())
    {
      localBitMatrix1 = this.matrix;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.common.HybridBinarizer
 * JD-Core Version:    0.6.2
 */