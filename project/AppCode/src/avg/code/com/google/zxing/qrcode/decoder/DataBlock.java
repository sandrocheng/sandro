package com.google.zxing.qrcode.decoder;

final class DataBlock
{
  private final byte[] codewords;
  private final int numDataCodewords;

  private DataBlock(int paramInt, byte[] paramArrayOfByte)
  {
    this.numDataCodewords = paramInt;
    this.codewords = paramArrayOfByte;
  }

  static DataBlock[] getDataBlocks(byte[] paramArrayOfByte, Version paramVersion, ErrorCorrectionLevel paramErrorCorrectionLevel)
  {
    if (paramArrayOfByte.length != paramVersion.getTotalCodewords())
      throw new IllegalArgumentException();
    Version.ECBlocks localECBlocks = paramVersion.getECBlocksForLevel(paramErrorCorrectionLevel);
    Version.ECB[] arrayOfECB = localECBlocks.getECBlocks();
    int i = arrayOfECB.length;
    int j = 0;
    int k = 0;
    DataBlock[] arrayOfDataBlock;
    int n;
    int i1;
    int i7;
    int i8;
    label89: label94: int i9;
    int i10;
    int i11;
    int i12;
    int i16;
    label126: int i18;
    if (j >= i)
    {
      arrayOfDataBlock = new DataBlock[k];
      int m = arrayOfECB.length;
      n = 0;
      i1 = 0;
      if (n < m)
        break label172;
      i7 = arrayOfDataBlock[0].codewords.length;
      i8 = -1 + arrayOfDataBlock.length;
      if (i8 >= 0)
        break label256;
      i9 = i8 + 1;
      i10 = i7 - localECBlocks.getECCodewordsPerBlock();
      i11 = 0;
      i12 = 0;
      if (i11 < i10)
        break label276;
      i16 = i9;
      if (i16 < i1)
        break label335;
      i18 = arrayOfDataBlock[0].codewords.length;
    }
    label172: label335: int i19;
    label256: label276: int i20;
    while (true)
    {
      if (i10 >= i18)
      {
        return arrayOfDataBlock;
        k += arrayOfECB[j].getCount();
        j++;
        break;
        Version.ECB localECB = arrayOfECB[n];
        int i2 = i1;
        int i3 = 0;
        while (true)
        {
          if (i3 >= localECB.getCount())
          {
            n++;
            i1 = i2;
            break;
          }
          int i4 = localECB.getDataCodewords();
          int i5 = i4 + localECBlocks.getECCodewordsPerBlock();
          int i6 = i2 + 1;
          arrayOfDataBlock[i2] = new DataBlock(i4, new byte[i5]);
          i3++;
          i2 = i6;
        }
        if (arrayOfDataBlock[i8].codewords.length == i7)
          break label94;
        i8--;
        break label89;
        int i13 = i12;
        int i14 = 0;
        while (true)
        {
          if (i14 >= i1)
          {
            i11++;
            i12 = i13;
            break;
          }
          byte[] arrayOfByte1 = arrayOfDataBlock[i14].codewords;
          int i15 = i13 + 1;
          arrayOfByte1[i11] = paramArrayOfByte[i13];
          i14++;
          i13 = i15;
        }
        byte[] arrayOfByte2 = arrayOfDataBlock[i16].codewords;
        int i17 = i12 + 1;
        arrayOfByte2[i10] = paramArrayOfByte[i12];
        i16++;
        i12 = i17;
        break label126;
      }
      i19 = 0;
      i20 = i12;
      if (i19 < i1)
        break label394;
      i10++;
      i12 = i20;
    }
    label394: if (i19 < i9);
    for (int i21 = i10; ; i21 = i10 + 1)
    {
      byte[] arrayOfByte3 = arrayOfDataBlock[i19].codewords;
      int i22 = i20 + 1;
      arrayOfByte3[i21] = paramArrayOfByte[i20];
      i19++;
      i20 = i22;
      break;
    }
  }

  final byte[] getCodewords()
  {
    return this.codewords;
  }

  final int getNumDataCodewords()
  {
    return this.numDataCodewords;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.DataBlock
 * JD-Core Version:    0.6.2
 */