package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

public final class MonochromeRectangleDetector
{
  private static final int MAX_MODULES = 32;
  private final BitMatrix image;

  public MonochromeRectangleDetector(BitMatrix paramBitMatrix)
  {
    this.image = paramBitMatrix;
  }

  private int[] blackWhiteRange(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    int i = paramInt3 + paramInt4 >> 1;
    int j = i;
    label18: int n;
    int i1;
    label35: int i4;
    if (j < paramInt3)
    {
      n = j + 1;
      i1 = i;
      if (i1 < paramInt4)
        break label176;
      i4 = i1 - 1;
      if (i4 <= n)
        break label288;
    }
    label272: label288: for (int[] arrayOfInt = { n, i4 }; ; arrayOfInt = null)
    {
      return arrayOfInt;
      if (paramBoolean)
      {
        if (!this.image.get(j, paramInt1));
      }
      else
        while (this.image.get(paramInt1, j))
        {
          j--;
          break;
        }
      int k = j;
      label107: 
      do
      {
        k--;
        if (k < paramInt3)
          break;
        if (!paramBoolean)
          break label160;
      }
      while (!this.image.get(k, paramInt1));
      while (true)
      {
        int m = j - k;
        if ((k < paramInt3) || (m > paramInt2))
          break label18;
        j = k;
        break;
        label160: if (!this.image.get(paramInt1, k))
          break label107;
      }
      label176: if (paramBoolean)
      {
        if (!this.image.get(i1, paramInt1));
      }
      else
        while (this.image.get(paramInt1, i1))
        {
          i1++;
          break;
        }
      int i2 = i1;
      label217: 
      do
      {
        i2++;
        if (i2 >= paramInt4)
          break;
        if (!paramBoolean)
          break label272;
      }
      while (!this.image.get(i2, paramInt1));
      while (true)
      {
        int i3 = i2 - i1;
        if ((i2 >= paramInt4) || (i3 > paramInt2))
          break label35;
        i1 = i2;
        break;
        if (!this.image.get(paramInt1, i2))
          break label217;
      }
    }
  }

  private ResultPoint findCornerFromCenter(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9)
  {
    int[] arrayOfInt1 = (int[])null;
    int i = paramInt1;
    int j = paramInt5;
    Object localObject = arrayOfInt1;
    while (true)
    {
      if ((j >= paramInt8) || (j < paramInt7) || (i >= paramInt4) || (i < paramInt3))
        throw NotFoundException.getNotFoundInstance();
      int[] arrayOfInt2;
      if (paramInt2 == 0)
        arrayOfInt2 = blackWhiteRange(j, paramInt9, paramInt3, paramInt4, true);
      while (arrayOfInt2 == null)
        if (localObject == null)
        {
          throw NotFoundException.getNotFoundInstance();
          arrayOfInt2 = blackWhiteRange(i, paramInt9, paramInt7, paramInt8, false);
        }
        else
        {
          int i1;
          int i2;
          ResultPoint localResultPoint;
          if (paramInt2 == 0)
          {
            i1 = j - paramInt6;
            if (localObject[0] < paramInt1)
              if (localObject[1] > paramInt1)
                if (paramInt6 > 0)
                {
                  i2 = localObject[0];
                  localResultPoint = new ResultPoint(i2, i1);
                }
          }
          while (true)
          {
            return localResultPoint;
            i2 = localObject[1];
            break;
            localResultPoint = new ResultPoint(localObject[0], i1);
            continue;
            localResultPoint = new ResultPoint(localObject[1], i1);
            continue;
            int m = i - paramInt2;
            if (localObject[0] < paramInt5)
            {
              if (localObject[1] > paramInt5)
              {
                float f = m;
                if (paramInt2 < 0);
                for (int n = localObject[0]; ; n = localObject[1])
                {
                  localResultPoint = new ResultPoint(f, n);
                  break;
                }
              }
              localResultPoint = new ResultPoint(m, localObject[0]);
            }
            else
            {
              localResultPoint = new ResultPoint(m, localObject[1]);
            }
          }
        }
      int k = j + paramInt6;
      i += paramInt2;
      localObject = arrayOfInt2;
      j = k;
    }
  }

  public ResultPoint[] detect()
  {
    int i = this.image.getHeight();
    int j = this.image.getWidth();
    int k = i >> 1;
    int m = j >> 1;
    int n = Math.max(1, i / 256);
    int i1 = Math.max(1, j / 256);
    int i2 = -1 + (int)findCornerFromCenter(m, 0, 0, j, k, -n, 0, i, m >> 1).getY();
    ResultPoint localResultPoint1 = findCornerFromCenter(m, -i1, 0, j, k, 0, i2, i, k >> 1);
    int i3 = -1 + (int)localResultPoint1.getX();
    ResultPoint localResultPoint2 = findCornerFromCenter(m, i1, i3, j, k, 0, i2, i, k >> 1);
    int i4 = 1 + (int)localResultPoint2.getX();
    ResultPoint localResultPoint3 = findCornerFromCenter(m, 0, i3, i4, k, n, i2, i, m >> 1);
    int i5 = 1 + (int)localResultPoint3.getY();
    return new ResultPoint[] { findCornerFromCenter(m, 0, i3, i4, k, -n, i2, i5, m >> 2), localResultPoint1, localResultPoint2, localResultPoint3 };
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.common.detector.MonochromeRectangleDetector
 * JD-Core Version:    0.6.2
 */