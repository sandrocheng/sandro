package com.google.zxing.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.qrcode.decoder.Decoder;
import com.google.zxing.qrcode.detector.Detector;
import java.util.List;
import java.util.Map;

public class QRCodeReader
  implements Reader
{
  private static final ResultPoint[] NO_POINTS = new ResultPoint[0];
  private final Decoder decoder = new Decoder();

  private static BitMatrix extractPureBits(BitMatrix paramBitMatrix)
  {
    int[] arrayOfInt1 = paramBitMatrix.getTopLeftOnBit();
    int[] arrayOfInt2 = paramBitMatrix.getBottomRightOnBit();
    if ((arrayOfInt1 == null) || (arrayOfInt2 == null))
      throw NotFoundException.getNotFoundInstance();
    float f = moduleSize(arrayOfInt1, paramBitMatrix);
    int i = arrayOfInt1[1];
    int j = arrayOfInt2[1];
    int k = arrayOfInt1[0];
    int m = arrayOfInt2[0];
    if (j - i != m - k)
      m = k + (j - i);
    int n = Math.round((1 + (m - k)) / f);
    int i1 = Math.round((1 + (j - i)) / f);
    if ((n <= 0) || (i1 <= 0))
      throw NotFoundException.getNotFoundInstance();
    if (i1 != n)
      throw NotFoundException.getNotFoundInstance();
    int i2 = Math.round(f / 2.0F);
    int i3 = i + i2;
    int i4 = k + i2;
    BitMatrix localBitMatrix = new BitMatrix(n, i1);
    int i5 = 0;
    if (i5 >= i1)
      return localBitMatrix;
    int i6 = i3 + (int)(f * i5);
    for (int i7 = 0; ; i7++)
    {
      if (i7 >= n)
      {
        i5++;
        break;
      }
      if (paramBitMatrix.get(i4 + (int)(f * i7), i6))
        localBitMatrix.set(i7, i5);
    }
  }

  private static float moduleSize(int[] paramArrayOfInt, BitMatrix paramBitMatrix)
  {
    int i = paramBitMatrix.getHeight();
    int j = paramBitMatrix.getWidth();
    int k = paramArrayOfInt[0];
    int m = paramArrayOfInt[1];
    int n = 1;
    int i1 = m;
    int i2 = k;
    int i3 = 0;
    if ((i2 >= j) || (i1 >= i));
    int i6;
    label95: int i4;
    while (true)
      if ((i2 == j) || (i1 == i))
      {
        throw NotFoundException.getNotFoundInstance();
        if (n == paramBitMatrix.get(i2, i1))
          break label133;
        int i5 = i3 + 1;
        if (i5 != 5)
          if (n != 0)
          {
            i6 = 0;
            i4 = i6;
            i3 = i5;
          }
      }
    while (true)
    {
      i2++;
      i1++;
      n = i4;
      break;
      i6 = 1;
      break label95;
      return (i2 - paramArrayOfInt[0]) / 7.0F;
      label133: i4 = n;
    }
  }

  public Result decode(BinaryBitmap paramBinaryBitmap)
  {
    return decode(paramBinaryBitmap, null);
  }

  public Result decode(BinaryBitmap paramBinaryBitmap, Map paramMap)
  {
    DecoderResult localDecoderResult;
    if ((paramMap != null) && (paramMap.containsKey(DecodeHintType.PURE_BARCODE)))
    {
      BitMatrix localBitMatrix = extractPureBits(paramBinaryBitmap.getBlackMatrix());
      localDecoderResult = this.decoder.decode(localBitMatrix, paramMap);
    }
    DetectorResult localDetectorResult;
    for (ResultPoint[] arrayOfResultPoint = NO_POINTS; ; arrayOfResultPoint = localDetectorResult.getPoints())
    {
      Result localResult = new Result(localDecoderResult.getText(), localDecoderResult.getRawBytes(), arrayOfResultPoint, BarcodeFormat.QR_CODE);
      List localList = localDecoderResult.getByteSegments();
      if (localList != null)
        localResult.putMetadata(ResultMetadataType.BYTE_SEGMENTS, localList);
      String str = localDecoderResult.getECLevel();
      if (str != null)
        localResult.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, str);
      return localResult;
      localDetectorResult = new Detector(paramBinaryBitmap.getBlackMatrix()).detect(paramMap);
      localDecoderResult = this.decoder.decode(localDetectorResult.getBits(), paramMap);
    }
  }

  protected Decoder getDecoder()
  {
    return this.decoder;
  }

  public void reset()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.QRCodeReader
 * JD-Core Version:    0.6.2
 */