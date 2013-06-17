package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

public final class WhiteRectangleDetector
{
  private static final int CORR = 1;
  private static final int INIT_SIZE = 30;
  private final int downInit;
  private final int height;
  private final BitMatrix image;
  private final int leftInit;
  private final int rightInit;
  private final int upInit;
  private final int width;

  public WhiteRectangleDetector(BitMatrix paramBitMatrix)
  {
    this.image = paramBitMatrix;
    this.height = paramBitMatrix.getHeight();
    this.width = paramBitMatrix.getWidth();
    this.leftInit = (-30 + this.width >> 1);
    this.rightInit = (30 + this.width >> 1);
    this.upInit = (-30 + this.height >> 1);
    this.downInit = (30 + this.height >> 1);
    if ((this.upInit < 0) || (this.leftInit < 0) || (this.downInit >= this.height) || (this.rightInit >= this.width))
      throw NotFoundException.getNotFoundInstance();
  }

  public WhiteRectangleDetector(BitMatrix paramBitMatrix, int paramInt1, int paramInt2, int paramInt3)
  {
    this.image = paramBitMatrix;
    this.height = paramBitMatrix.getHeight();
    this.width = paramBitMatrix.getWidth();
    int i = paramInt1 >> 1;
    this.leftInit = (paramInt2 - i);
    this.rightInit = (paramInt2 + i);
    this.upInit = (paramInt3 - i);
    this.downInit = (i + paramInt3);
    if ((this.upInit < 0) || (this.leftInit < 0) || (this.downInit >= this.height) || (this.rightInit >= this.width))
      throw NotFoundException.getNotFoundInstance();
  }

  private ResultPoint[] centerEdges(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2, ResultPoint paramResultPoint3, ResultPoint paramResultPoint4)
  {
    float f1 = paramResultPoint1.getX();
    float f2 = paramResultPoint1.getY();
    float f3 = paramResultPoint2.getX();
    float f4 = paramResultPoint2.getY();
    float f5 = paramResultPoint3.getX();
    float f6 = paramResultPoint3.getY();
    float f7 = paramResultPoint4.getX();
    float f8 = paramResultPoint4.getY();
    ResultPoint[] arrayOfResultPoint;
    if (f1 < this.width / 2)
    {
      arrayOfResultPoint = new ResultPoint[4];
      arrayOfResultPoint[0] = new ResultPoint(f7 - 1.0F, f8 + 1.0F);
      arrayOfResultPoint[1] = new ResultPoint(f3 + 1.0F, f4 + 1.0F);
      arrayOfResultPoint[2] = new ResultPoint(f5 - 1.0F, f6 - 1.0F);
      arrayOfResultPoint[3] = new ResultPoint(f1 + 1.0F, f2 - 1.0F);
    }
    while (true)
    {
      return arrayOfResultPoint;
      arrayOfResultPoint = new ResultPoint[4];
      arrayOfResultPoint[0] = new ResultPoint(f7 + 1.0F, f8 + 1.0F);
      arrayOfResultPoint[1] = new ResultPoint(f3 + 1.0F, f4 - 1.0F);
      arrayOfResultPoint[2] = new ResultPoint(f5 - 1.0F, f6 + 1.0F);
      arrayOfResultPoint[3] = new ResultPoint(f1 - 1.0F, f2 - 1.0F);
    }
  }

  private boolean containsBlackPoint(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    boolean bool = true;
    if (paramBoolean)
      if (paramInt1 <= paramInt2);
    while (true)
    {
      bool = false;
      do
      {
        while (this.image.get(paramInt3, paramInt1))
        {
          do
            return bool;
          while (this.image.get(paramInt1, paramInt3));
          paramInt1++;
          break;
        }
        paramInt1++;
      }
      while (paramInt1 <= paramInt2);
    }
  }

  private static int distanceL2(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    float f1 = paramFloat1 - paramFloat3;
    float f2 = paramFloat2 - paramFloat4;
    return round((float)Math.sqrt(f1 * f1 + f2 * f2));
  }

  private ResultPoint getBlackPointOnSegment(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    int i = distanceL2(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    float f1 = (paramFloat3 - paramFloat1) / i;
    float f2 = (paramFloat4 - paramFloat2) / i;
    for (int j = 0; ; j++)
    {
      if (j >= i);
      int k;
      int m;
      for (ResultPoint localResultPoint = null; ; localResultPoint = new ResultPoint(k, m))
      {
        return localResultPoint;
        k = round(paramFloat1 + f1 * j);
        m = round(paramFloat2 + f2 * j);
        if (!this.image.get(k, m))
          break;
      }
    }
  }

  private static int round(float paramFloat)
  {
    return (int)(0.5F + paramFloat);
  }

  public ResultPoint[] detect()
  {
    int i = 0;
    int j = this.leftInit;
    int k = this.rightInit;
    int m = this.upInit;
    int n = this.downInit;
    int i1 = 0;
    int i2 = 1;
    int i4;
    int i5;
    int i6;
    int i7;
    int i8;
    int i9;
    ResultPoint localResultPoint1;
    if (i2 == 0)
    {
      i4 = m;
      i5 = k;
      i6 = j;
      i7 = n;
      if ((i == 0) && (i1 != 0))
      {
        i8 = i5 - i6;
        i9 = 1;
        localResultPoint1 = null;
      }
    }
    else
    {
      ResultPoint localResultPoint2;
      while (true)
      {
        if (i9 >= i8);
        for (localResultPoint2 = localResultPoint1; ; localResultPoint2 = localResultPoint1)
        {
          if (localResultPoint2 != null)
            break label413;
          throw NotFoundException.getNotFoundInstance();
          boolean bool1 = true;
          int i3 = 0;
          while (true)
          {
            if ((!bool1) || (k >= this.width))
            {
              if (k < this.width)
                break label163;
              i = 1;
              i4 = m;
              i5 = k;
              i6 = j;
              i7 = n;
              break;
            }
            bool1 = containsBlackPoint(m, n, k, false);
            if (bool1)
            {
              k++;
              i3 = 1;
            }
          }
          label163: boolean bool2 = true;
          while (true)
          {
            if ((!bool2) || (n >= this.height))
            {
              if (n < this.height)
                break label233;
              i = 1;
              i4 = m;
              i5 = k;
              i6 = j;
              i7 = n;
              break;
            }
            bool2 = containsBlackPoint(j, k, n, true);
            if (bool2)
            {
              n++;
              i3 = 1;
            }
          }
          label233: boolean bool3 = true;
          while (true)
          {
            if ((!bool3) || (j < 0))
            {
              if (j >= 0)
                break label294;
              i = 1;
              i4 = m;
              i5 = k;
              i6 = j;
              i7 = n;
              break;
            }
            bool3 = containsBlackPoint(m, n, j, false);
            if (bool3)
            {
              j--;
              i3 = 1;
            }
          }
          label294: i2 = i3;
          boolean bool4 = true;
          while (true)
          {
            if ((!bool4) || (m < 0))
            {
              if (m >= 0)
                break label360;
              i = 1;
              i4 = m;
              i5 = k;
              i6 = j;
              i7 = n;
              break;
            }
            bool4 = containsBlackPoint(j, k, m, true);
            if (bool4)
            {
              m--;
              i2 = 1;
            }
          }
          label360: if (i2 == 0)
            break;
          i1 = 1;
          break;
          localResultPoint1 = getBlackPointOnSegment(i6, i7 - i9, i6 + i9, i7);
          if (localResultPoint1 == null)
            break label407;
        }
        label407: i9++;
      }
      label413: int i10 = 1;
      ResultPoint localResultPoint3 = null;
      ResultPoint localResultPoint4;
      while (true)
      {
        if (i10 >= i8);
        for (localResultPoint4 = localResultPoint3; ; localResultPoint4 = localResultPoint3)
        {
          if (localResultPoint4 != null)
            break label481;
          throw NotFoundException.getNotFoundInstance();
          localResultPoint3 = getBlackPointOnSegment(i6, i4 + i10, i6 + i10, i4);
          if (localResultPoint3 == null)
            break;
        }
        i10++;
      }
      label481: int i11 = 1;
      ResultPoint localResultPoint5 = null;
      while (true)
      {
        if (i11 >= i8);
        do
        {
          if (localResultPoint5 != null)
            break;
          throw NotFoundException.getNotFoundInstance();
          localResultPoint5 = getBlackPointOnSegment(i5, i4 + i11, i5 - i11, i4);
        }
        while (localResultPoint5 != null);
        i11++;
      }
      ResultPoint localResultPoint6 = null;
      for (int i12 = 1; ; i12++)
      {
        if (i12 >= i8);
        do
        {
          if (localResultPoint6 != null)
            break;
          throw NotFoundException.getNotFoundInstance();
          localResultPoint6 = getBlackPointOnSegment(i5, i7 - i12, i5 - i12, i7);
        }
        while (localResultPoint6 != null);
      }
      return centerEdges(localResultPoint6, localResultPoint2, localResultPoint5, localResultPoint4);
    }
    throw NotFoundException.getNotFoundInstance();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.common.detector.WhiteRectangleDetector
 * JD-Core Version:    0.6.2
 */