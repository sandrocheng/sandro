package com.google.zxing.qrcode.decoder;

import com.google.zxing.common.BitMatrix;

abstract class DataMask
{
  private static final DataMask[] DATA_MASKS = arrayOfDataMask;

  static
  {
    DataMask[] arrayOfDataMask = new DataMask[8];
    arrayOfDataMask[0] = new DataMask.DataMask000(null);
    arrayOfDataMask[1] = new DataMask.DataMask001(null);
    arrayOfDataMask[2] = new DataMask.DataMask010(null);
    arrayOfDataMask[3] = new DataMask.DataMask011(null);
    arrayOfDataMask[4] = new DataMask.DataMask100(null);
    arrayOfDataMask[5] = new DataMask.DataMask101(null);
    arrayOfDataMask[6] = new DataMask.DataMask110(null);
    arrayOfDataMask[7] = new DataMask.DataMask111(null);
  }

  static DataMask forReference(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 7))
      throw new IllegalArgumentException();
    return DATA_MASKS[paramInt];
  }

  abstract boolean isMasked(int paramInt1, int paramInt2);

  final void unmaskBitMatrix(BitMatrix paramBitMatrix, int paramInt)
  {
    int i = 0;
    if (i >= paramInt)
      return;
    for (int j = 0; ; j++)
    {
      if (j >= paramInt)
      {
        i++;
        break;
      }
      if (isMasked(i, j))
        paramBitMatrix.flip(j, i);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.DataMask
 * JD-Core Version:    0.6.2
 */