package com.google.zxing.qrcode.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import java.util.Map;

public final class Decoder
{
  private final ReedSolomonDecoder rsDecoder = new ReedSolomonDecoder(GenericGF.QR_CODE_FIELD_256);

  private void correctErrors(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    int j = paramArrayOfByte.length;
    int[] arrayOfInt = new int[j];
    int k = 0;
    int m;
    if (k >= j)
      m = paramArrayOfByte.length - paramInt;
    while (true)
    {
      try
      {
        this.rsDecoder.decode(arrayOfInt, m);
        if (i >= paramInt)
        {
          return;
          arrayOfInt[k] = (0xFF & paramArrayOfByte[k]);
          k++;
        }
      }
      catch (ReedSolomonException localReedSolomonException)
      {
        throw ChecksumException.getChecksumInstance();
      }
      paramArrayOfByte[i] = ((byte)arrayOfInt[i]);
      i++;
    }
  }

  public final DecoderResult decode(BitMatrix paramBitMatrix)
  {
    return decode(paramBitMatrix, null);
  }

  public final DecoderResult decode(BitMatrix paramBitMatrix, Map paramMap)
  {
    BitMatrixParser localBitMatrixParser = new BitMatrixParser(paramBitMatrix);
    Version localVersion = localBitMatrixParser.readVersion();
    ErrorCorrectionLevel localErrorCorrectionLevel = localBitMatrixParser.readFormatInformation().getErrorCorrectionLevel();
    DataBlock[] arrayOfDataBlock = DataBlock.getDataBlocks(localBitMatrixParser.readCodewords(), localVersion, localErrorCorrectionLevel);
    int i = arrayOfDataBlock.length;
    int j = 0;
    int k = 0;
    byte[] arrayOfByte1;
    int n;
    int i1;
    while (true)
    {
      if (j >= i)
      {
        arrayOfByte1 = new byte[k];
        int m = arrayOfDataBlock.length;
        n = 0;
        i1 = 0;
        if (n < m)
          break;
        return DecodedBitStreamParser.decode(arrayOfByte1, localVersion, localErrorCorrectionLevel, paramMap);
      }
      k += arrayOfDataBlock[j].getNumDataCodewords();
      j++;
    }
    DataBlock localDataBlock = arrayOfDataBlock[n];
    byte[] arrayOfByte2 = localDataBlock.getCodewords();
    int i2 = localDataBlock.getNumDataCodewords();
    correctErrors(arrayOfByte2, i2);
    int i3 = i1;
    int i4 = 0;
    while (true)
    {
      if (i4 >= i2)
      {
        n++;
        i1 = i3;
        break;
      }
      int i5 = i3 + 1;
      arrayOfByte1[i3] = arrayOfByte2[i4];
      i4++;
      i3 = i5;
    }
  }

  public final DecoderResult decode(boolean[][] paramArrayOfBoolean)
  {
    return decode(paramArrayOfBoolean, null);
  }

  public final DecoderResult decode(boolean[][] paramArrayOfBoolean, Map paramMap)
  {
    int i = paramArrayOfBoolean.length;
    BitMatrix localBitMatrix = new BitMatrix(i);
    int j = 0;
    if (j >= i)
      return decode(localBitMatrix, paramMap);
    for (int k = 0; ; k++)
    {
      if (k >= i)
      {
        j++;
        break;
      }
      if (paramArrayOfBoolean[j][k] != 0)
        localBitMatrix.set(k, j);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.Decoder
 * JD-Core Version:    0.6.2
 */