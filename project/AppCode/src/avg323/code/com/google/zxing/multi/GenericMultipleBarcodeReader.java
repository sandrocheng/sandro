package com.google.zxing.multi;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class GenericMultipleBarcodeReader
  implements MultipleBarcodeReader
{
  private static final int MIN_DIMENSION_TO_RECUR = 100;
  private final Reader delegate;

  public GenericMultipleBarcodeReader(Reader paramReader)
  {
    this.delegate = paramReader;
  }

  private void doDecodeMultiple(BinaryBitmap paramBinaryBitmap, Map paramMap, List paramList, int paramInt1, int paramInt2)
  {
    try
    {
      Result localResult = this.delegate.decode(paramBinaryBitmap, paramMap);
      Iterator localIterator = paramList.iterator();
      int i;
      if (!localIterator.hasNext())
      {
        i = 0;
        if (i == 0)
          break label70;
      }
      label39: label70: ResultPoint[] arrayOfResultPoint;
      do
      {
        return;
        if (!((Result)localIterator.next()).getText().equals(localResult.getText()))
          break label290;
        i = 1;
        break;
        paramList.add(translateResultPoints(localResult, paramInt1, paramInt2));
        arrayOfResultPoint = localResult.getResultPoints();
      }
      while ((arrayOfResultPoint == null) || (arrayOfResultPoint.length == 0));
      int j = paramBinaryBitmap.getWidth();
      int k = paramBinaryBitmap.getHeight();
      f1 = j;
      f2 = k;
      f3 = 0.0F;
      f4 = 0.0F;
      int m = arrayOfResultPoint.length;
      int n = 0;
      while (true)
      {
        if (n >= m)
        {
          if (f1 > 100.0F)
            doDecodeMultiple(paramBinaryBitmap.crop(0, 0, (int)f1, k), paramMap, paramList, paramInt1, paramInt2);
          if (f2 > 100.0F)
            doDecodeMultiple(paramBinaryBitmap.crop(0, 0, j, (int)f2), paramMap, paramList, paramInt1, paramInt2);
          if (f3 < j - 100)
            doDecodeMultiple(paramBinaryBitmap.crop((int)f3, 0, j - (int)f3, k), paramMap, paramList, paramInt1 + (int)f3, paramInt2);
          if (f4 >= k - 100)
            break label39;
          doDecodeMultiple(paramBinaryBitmap.crop(0, (int)f4, j, k - (int)f4), paramMap, paramList, paramInt1, paramInt2 + (int)f4);
          break label39;
          label290: break;
        }
        ResultPoint localResultPoint = arrayOfResultPoint[n];
        f5 = localResultPoint.getX();
        f6 = localResultPoint.getY();
        if (f5 >= f1)
          break label401;
        f7 = f5;
        if (f6 >= f2)
          break label394;
        f8 = f6;
        if (f5 <= f3)
          break label387;
        if (f6 <= f4)
          break label380;
        n++;
        f4 = f6;
        f3 = f5;
        f2 = f8;
        f1 = f7;
      }
    }
    catch (ReaderException localReaderException)
    {
      while (true)
      {
        float f1;
        float f2;
        float f3;
        float f4;
        continue;
        label380: float f6 = f4;
        continue;
        label387: float f5 = f3;
        continue;
        label394: float f8 = f2;
        continue;
        label401: float f7 = f1;
      }
    }
  }

  private static Result translateResultPoints(Result paramResult, int paramInt1, int paramInt2)
  {
    ResultPoint[] arrayOfResultPoint1 = paramResult.getResultPoints();
    if (arrayOfResultPoint1 == null)
      return paramResult;
    ResultPoint[] arrayOfResultPoint2 = new ResultPoint[arrayOfResultPoint1.length];
    for (int i = 0; ; i++)
    {
      if (i >= arrayOfResultPoint1.length)
      {
        paramResult = new Result(paramResult.getText(), paramResult.getRawBytes(), arrayOfResultPoint2, paramResult.getBarcodeFormat());
        break;
      }
      ResultPoint localResultPoint = arrayOfResultPoint1[i];
      arrayOfResultPoint2[i] = new ResultPoint(localResultPoint.getX() + paramInt1, localResultPoint.getY() + paramInt2);
    }
  }

  public Result[] decodeMultiple(BinaryBitmap paramBinaryBitmap)
  {
    return decodeMultiple(paramBinaryBitmap, null);
  }

  public Result[] decodeMultiple(BinaryBitmap paramBinaryBitmap, Map paramMap)
  {
    ArrayList localArrayList = new ArrayList();
    doDecodeMultiple(paramBinaryBitmap, paramMap, localArrayList, 0, 0);
    if (localArrayList.isEmpty())
      throw NotFoundException.getNotFoundInstance();
    return (Result[])localArrayList.toArray(new Result[localArrayList.size()]);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.multi.GenericMultipleBarcodeReader
 * JD-Core Version:    0.6.2
 */