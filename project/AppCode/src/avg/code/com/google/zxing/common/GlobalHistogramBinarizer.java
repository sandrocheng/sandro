package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;

public class GlobalHistogramBinarizer extends Binarizer
{
  private static final int LUMINANCE_BITS = 5;
  private static final int LUMINANCE_BUCKETS = 32;
  private static final int LUMINANCE_SHIFT = 3;
  private final int[] buckets = new int[32];
  private byte[] luminances = new byte[0];

  public GlobalHistogramBinarizer(LuminanceSource paramLuminanceSource)
  {
    super(paramLuminanceSource);
  }

  private static int estimateBlackPoint(int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    int j = 0;
    int k = 0;
    int m = 0;
    int n = 0;
    int i1;
    int i2;
    int i3;
    int i6;
    int i7;
    while (true)
    {
      if (j >= i)
      {
        i1 = 0;
        i2 = 0;
        i3 = 0;
        if (i1 < i)
          break;
        if (m <= i2)
          break label227;
        i6 = m;
        i7 = i2;
        label48: if (i6 - i7 > i >> 4)
          break label136;
        throw NotFoundException.getNotFoundInstance();
      }
      if (paramArrayOfInt[j] > k)
      {
        k = paramArrayOfInt[j];
        m = j;
      }
      if (paramArrayOfInt[j] > n)
        n = paramArrayOfInt[j];
      j++;
    }
    int i4 = i1 - m;
    int i5 = i4 * (i4 * paramArrayOfInt[i1]);
    if (i5 > i3)
      i2 = i1;
    while (true)
    {
      i1++;
      i3 = i5;
      break;
      label136: int i8 = i6 - 1;
      int i9 = -1;
      int i10 = i6 - 1;
      if (i10 <= i7)
        return i8 << 3;
      int i11 = i10 - i7;
      int i12 = i11 * i11 * (i6 - i10) * (n - paramArrayOfInt[i10]);
      if (i12 > i9);
      for (int i13 = i10; ; i13 = i8)
      {
        i10--;
        i8 = i13;
        i9 = i12;
        break;
        i12 = i9;
      }
      label227: i6 = i2;
      i7 = m;
      break label48;
      i5 = i3;
    }
  }

  private void initArrays(int paramInt)
  {
    if (this.luminances.length < paramInt)
      this.luminances = new byte[paramInt];
    for (int i = 0; ; i++)
    {
      if (i >= 32)
        return;
      this.buckets[i] = 0;
    }
  }

  public Binarizer createBinarizer(LuminanceSource paramLuminanceSource)
  {
    return new GlobalHistogramBinarizer(paramLuminanceSource);
  }

  public BitMatrix getBlackMatrix()
  {
    LuminanceSource localLuminanceSource = getLuminanceSource();
    int i = localLuminanceSource.getWidth();
    int j = localLuminanceSource.getHeight();
    BitMatrix localBitMatrix = new BitMatrix(i, j);
    initArrays(i);
    int[] arrayOfInt = this.buckets;
    int k = 1;
    int i2;
    byte[] arrayOfByte2;
    int i3;
    if (k >= 5)
    {
      i2 = estimateBlackPoint(arrayOfInt);
      arrayOfByte2 = localLuminanceSource.getMatrix();
      i3 = 0;
      if (i3 >= j)
        return localBitMatrix;
    }
    else
    {
      byte[] arrayOfByte1 = localLuminanceSource.getRow(j * k / 5, this.luminances);
      int m = (i << 2) / 5;
      for (int n = i / 5; ; n++)
      {
        if (n >= m)
        {
          k++;
          break;
        }
        int i1 = (0xFF & arrayOfByte1[n]) >> 3;
        arrayOfInt[i1] = (1 + arrayOfInt[i1]);
      }
    }
    int i4 = i3 * i;
    for (int i5 = 0; ; i5++)
    {
      if (i5 >= i)
      {
        i3++;
        break;
      }
      if ((0xFF & arrayOfByte2[(i4 + i5)]) < i2)
        localBitMatrix.set(i5, i3);
    }
  }

  public BitArray getBlackRow(int paramInt, BitArray paramBitArray)
  {
    int i = 1;
    LuminanceSource localLuminanceSource = getLuminanceSource();
    int j = localLuminanceSource.getWidth();
    byte[] arrayOfByte;
    int[] arrayOfInt;
    int k;
    label65: int n;
    int i1;
    if ((paramBitArray == null) || (paramBitArray.getSize() < j))
    {
      paramBitArray = new BitArray(j);
      initArrays(j);
      arrayOfByte = localLuminanceSource.getRow(paramInt, this.luminances);
      arrayOfInt = this.buckets;
      k = 0;
      if (k < j)
        break label116;
      n = estimateBlackPoint(arrayOfInt);
      i1 = 0xFF & arrayOfByte[0];
    }
    label116: int i3;
    for (int i2 = 0xFF & arrayOfByte[i]; ; i2 = i3)
    {
      if (i >= j - 1)
      {
        return paramBitArray;
        paramBitArray.clear();
        break;
        int m = (0xFF & arrayOfByte[k]) >> 3;
        arrayOfInt[m] = (1 + arrayOfInt[m]);
        k++;
        break label65;
      }
      i3 = 0xFF & arrayOfByte[(i + 1)];
      if ((i2 << 2) - i1 - i3 >> 1 < n)
        paramBitArray.set(i);
      i++;
      i1 = i2;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.common.GlobalHistogramBinarizer
 * JD-Core Version:    0.6.2
 */