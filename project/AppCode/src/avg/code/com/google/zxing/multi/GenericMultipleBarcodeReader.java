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
    int i = paramInt2;
    try
    {
      Result localResult = this.delegate.decode(paramBinaryBitmap, paramMap);
      Iterator localIterator = paramList.iterator();
      label24: label43: label74: ResultPoint[] arrayOfResultPoint;
      do
      {
        break label43;
        break label43;
        if (!localIterator.hasNext());
        for (int j = 0; ; j = 1)
        {
          if (j == 0)
            break label74;
          return;
          if (!((Result)localIterator.next()).getText().equals(localResult.getText()))
            break;
        }
        paramList.add(translateResultPoints(localResult, paramInt1, i));
        arrayOfResultPoint = localResult.getResultPoints();
      }
      while ((arrayOfResultPoint == null) || (arrayOfResultPoint.length == 0));
      int k = paramBinaryBitmap.getWidth();
      int m = paramBinaryBitmap.getHeight();
      float f1 = k;
      f2 = m;
      f3 = 0.0F;
      int n = arrayOfResultPoint.length;
      f4 = f1;
      f5 = 0.0F;
      int i1 = 0;
      while (true)
      {
        if (i1 >= n)
        {
          if (f4 > 100.0F)
          {
            int i7 = (int)f4;
            doDecodeMultiple(paramBinaryBitmap.crop(0, 0, i7, m), paramMap, paramList, paramInt1, i);
          }
          if (f2 > 100.0F)
          {
            int i6 = (int)f2;
            doDecodeMultiple(paramBinaryBitmap.crop(0, 0, k, i6), paramMap, paramList, paramInt1, i);
          }
          if (f5 < k - 100)
          {
            int i4 = (int)f5;
            int i5 = k - (int)f5;
            doDecodeMultiple(paramBinaryBitmap.crop(i4, 0, i5, m), paramMap, paramList, paramInt1 + (int)f5, i);
          }
          if (f3 >= m - 100)
            break label24;
          int i2 = (int)f3;
          int i3 = m - (int)f3;
          paramBinaryBitmap = paramBinaryBitmap.crop(0, i2, k, i3);
          i += (int)f3;
          break;
        }
        ResultPoint localResultPoint = arrayOfResultPoint[i1];
        float f6 = localResultPoint.getX();
        f7 = localResultPoint.getY();
        if (f6 >= f4)
          break label432;
        f8 = f6;
        if (f7 >= f2)
          break label425;
        f9 = f7;
        if (f6 <= f5)
          break label418;
        f10 = f6;
        if (f7 <= f3)
          break label411;
        i1++;
        f3 = f7;
        f5 = f10;
        f2 = f9;
        f4 = f8;
      }
    }
    catch (ReaderException localReaderException)
    {
      while (true)
      {
        float f2;
        float f3;
        float f4;
        float f5;
        continue;
        label411: float f7 = f3;
        continue;
        label418: float f10 = f5;
        continue;
        label425: float f9 = f2;
        continue;
        label432: float f8 = f4;
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

  public final Result[] decodeMultiple(BinaryBitmap paramBinaryBitmap)
  {
    return decodeMultiple(paramBinaryBitmap, null);
  }

  public final Result[] decodeMultiple(BinaryBitmap paramBinaryBitmap, Map paramMap)
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