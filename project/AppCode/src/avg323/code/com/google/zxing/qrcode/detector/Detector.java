package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.PerspectiveTransform;
import com.google.zxing.qrcode.decoder.Version;
import java.util.Map;

public class Detector
{
  private final BitMatrix image;
  private ResultPointCallback resultPointCallback;

  public Detector(BitMatrix paramBitMatrix)
  {
    this.image = paramBitMatrix;
  }

  private float calculateModuleSizeOneWay(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2)
  {
    float f1 = sizeOfBlackWhiteBlackRunBothWays((int)paramResultPoint1.getX(), (int)paramResultPoint1.getY(), (int)paramResultPoint2.getX(), (int)paramResultPoint2.getY());
    float f2 = sizeOfBlackWhiteBlackRunBothWays((int)paramResultPoint2.getX(), (int)paramResultPoint2.getY(), (int)paramResultPoint1.getX(), (int)paramResultPoint1.getY());
    float f3;
    if (Float.isNaN(f1))
      f3 = f2 / 7.0F;
    while (true)
    {
      return f3;
      if (Float.isNaN(f2))
        f3 = f1 / 7.0F;
      else
        f3 = (f1 + f2) / 14.0F;
    }
  }

  protected static int computeDimension(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2, ResultPoint paramResultPoint3, float paramFloat)
  {
    int i = 7 + (round(ResultPoint.distance(paramResultPoint1, paramResultPoint2) / paramFloat) + round(ResultPoint.distance(paramResultPoint1, paramResultPoint3) / paramFloat) >> 1);
    switch (i & 0x3)
    {
    case 1:
    default:
    case 0:
    case 2:
      while (true)
      {
        return i;
        i++;
        continue;
        i--;
      }
    case 3:
    }
    throw NotFoundException.getNotFoundInstance();
  }

  public static PerspectiveTransform createTransform(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2, ResultPoint paramResultPoint3, ResultPoint paramResultPoint4, int paramInt)
  {
    float f1 = paramInt - 3.5F;
    float f2;
    float f3;
    float f4;
    if (paramResultPoint4 != null)
    {
      f2 = paramResultPoint4.getX();
      f3 = paramResultPoint4.getY();
      f4 = f1 - 3.0F;
    }
    for (float f5 = f4; ; f5 = f1)
    {
      return PerspectiveTransform.quadrilateralToQuadrilateral(3.5F, 3.5F, f1, 3.5F, f5, f4, 3.5F, f1, paramResultPoint1.getX(), paramResultPoint1.getY(), paramResultPoint2.getX(), paramResultPoint2.getY(), f2, f3, paramResultPoint3.getX(), paramResultPoint3.getY());
      f2 = paramResultPoint2.getX() - paramResultPoint1.getX() + paramResultPoint3.getX();
      f3 = paramResultPoint2.getY() - paramResultPoint1.getY() + paramResultPoint3.getY();
      f4 = f1;
    }
  }

  private static int round(float paramFloat)
  {
    return (int)(0.5F + paramFloat);
  }

  private static BitMatrix sampleGrid(BitMatrix paramBitMatrix, PerspectiveTransform paramPerspectiveTransform, int paramInt)
  {
    return GridSampler.getInstance().sampleGrid(paramBitMatrix, paramInt, paramInt, paramPerspectiveTransform);
  }

  private float sizeOfBlackWhiteBlackRun(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i;
    if (Math.abs(paramInt4 - paramInt2) > Math.abs(paramInt3 - paramInt1))
    {
      i = 1;
      if (i == 0)
        break label349;
    }
    while (true)
    {
      int m = Math.abs(paramInt4 - paramInt2);
      int n = Math.abs(paramInt3 - paramInt1);
      int i1 = -m >> 1;
      int i2;
      if (paramInt2 < paramInt4)
      {
        i2 = 1;
        label57: if (paramInt1 >= paramInt3)
          break label149;
      }
      int i4;
      int i6;
      int i7;
      int i8;
      int i16;
      label96: float f;
      label134: label149: for (int i3 = 1; ; i3 = -1)
      {
        i4 = 0;
        int i5 = paramInt4 + i2;
        i6 = paramInt2;
        i7 = i1;
        i8 = paramInt1;
        if (i6 != i5)
          break label155;
        i16 = i4;
        if (i16 != 2)
          break label324;
        int i17 = paramInt4 + i2 - paramInt2;
        int i18 = paramInt3 - paramInt1;
        f = (float)Math.sqrt(i17 * i17 + i18 * i18);
        return f;
        i = 0;
        break;
        i2 = -1;
        break label57;
      }
      label155: int i9;
      label164: int i10;
      if (i != 0)
      {
        i9 = i8;
        if (i == 0)
          break label244;
        i10 = i6;
        label173: if (i4 != 1)
          break label251;
      }
      label244: label251: for (int i11 = 1; ; i11 = 0)
      {
        if (i11 != this.image.get(i9, i10))
          break label342;
        if (i4 != 2)
          break label257;
        int i19 = i6 - paramInt2;
        int i20 = i8 - paramInt1;
        f = (float)Math.sqrt(i19 * i19 + i20 * i20);
        break;
        i9 = i6;
        break label164;
        i10 = i8;
        break label173;
      }
      label257: label324: label342: for (int i12 = i4 + 1; ; i12 = i4)
      {
        int i13 = i7 + n;
        int i14;
        if (i13 > 0)
        {
          if (i8 == paramInt3)
          {
            i16 = i12;
            break label96;
          }
          i14 = i8 + i3;
        }
        for (int i15 = i13 - m; ; i15 = i13)
        {
          i6 += i2;
          i4 = i12;
          i7 = i15;
          i8 = i14;
          break;
          f = (0.0F / 0.0F);
          break label134;
          i14 = i8;
        }
      }
      label349: int j = paramInt4;
      paramInt4 = paramInt3;
      paramInt3 = j;
      int k = paramInt2;
      paramInt2 = paramInt1;
      paramInt1 = k;
    }
  }

  private float sizeOfBlackWhiteBlackRunBothWays(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = 0;
    float f1 = sizeOfBlackWhiteBlackRun(paramInt1, paramInt2, paramInt3, paramInt4);
    int j = paramInt1 - (paramInt3 - paramInt1);
    float f2;
    int k;
    if (j < 0)
    {
      f2 = paramInt1 / (paramInt1 - j);
      k = 0;
    }
    while (true)
    {
      int m = (int)(paramInt2 - f2 * (paramInt4 - paramInt2));
      float f3;
      if (m < 0)
        f3 = paramInt2 / (paramInt2 - m);
      while (true)
      {
        return f1 + sizeOfBlackWhiteBlackRun(paramInt1, paramInt2, (int)(paramInt1 + f3 * (k - paramInt1)), i) - 1.0F;
        if (j < this.image.getWidth())
          break label204;
        float f4 = (-1 + this.image.getWidth() - paramInt1) / (j - paramInt1);
        int n = -1 + this.image.getWidth();
        f2 = f4;
        k = n;
        break;
        if (m >= this.image.getHeight())
        {
          f3 = (-1 + this.image.getHeight() - paramInt2) / (m - paramInt2);
          i = -1 + this.image.getHeight();
        }
        else
        {
          i = m;
          f3 = 1.0F;
        }
      }
      label204: k = j;
      f2 = 1.0F;
    }
  }

  protected float calculateModuleSize(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2, ResultPoint paramResultPoint3)
  {
    return (calculateModuleSizeOneWay(paramResultPoint1, paramResultPoint2) + calculateModuleSizeOneWay(paramResultPoint1, paramResultPoint3)) / 2.0F;
  }

  public DetectorResult detect()
  {
    return detect(null);
  }

  public DetectorResult detect(Map paramMap)
  {
    if (paramMap == null);
    for (ResultPointCallback localResultPointCallback = null; ; localResultPointCallback = (ResultPointCallback)paramMap.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK))
    {
      this.resultPointCallback = localResultPointCallback;
      return processFinderPatternInfo(new FinderPatternFinder(this.image, this.resultPointCallback).find(paramMap));
    }
  }

  protected AlignmentPattern findAlignmentInRegion(float paramFloat1, int paramInt1, int paramInt2, float paramFloat2)
  {
    int i = (int)(paramFloat2 * paramFloat1);
    int j = Math.max(0, paramInt1 - i);
    int k = Math.min(-1 + this.image.getWidth(), paramInt1 + i);
    if (k - j < paramFloat1 * 3.0F)
      throw NotFoundException.getNotFoundInstance();
    int m = Math.max(0, paramInt2 - i);
    int n = Math.min(-1 + this.image.getHeight(), i + paramInt2);
    if (n - m < paramFloat1 * 3.0F)
      throw NotFoundException.getNotFoundInstance();
    return new AlignmentPatternFinder(this.image, j, m, k - j, n - m, paramFloat1, this.resultPointCallback).find();
  }

  protected BitMatrix getImage()
  {
    return this.image;
  }

  protected ResultPointCallback getResultPointCallback()
  {
    return this.resultPointCallback;
  }

  protected DetectorResult processFinderPatternInfo(FinderPatternInfo paramFinderPatternInfo)
  {
    FinderPattern localFinderPattern1 = paramFinderPatternInfo.getTopLeft();
    FinderPattern localFinderPattern2 = paramFinderPatternInfo.getTopRight();
    FinderPattern localFinderPattern3 = paramFinderPatternInfo.getBottomLeft();
    float f1 = calculateModuleSize(localFinderPattern1, localFinderPattern2, localFinderPattern3);
    if (f1 < 1.0F)
      throw NotFoundException.getNotFoundInstance();
    int i = computeDimension(localFinderPattern1, localFinderPattern2, localFinderPattern3, f1);
    Version localVersion = Version.getProvisionalVersionForDimension(i);
    int j = -7 + localVersion.getDimensionForVersion();
    int k = localVersion.getAlignmentPatternCenters().length;
    Object localObject = null;
    int m;
    int n;
    int i1;
    BitMatrix localBitMatrix;
    if (k > 0)
    {
      float f2 = localFinderPattern2.getX() - localFinderPattern1.getX() + localFinderPattern3.getX();
      float f3 = localFinderPattern2.getY() - localFinderPattern1.getY() + localFinderPattern3.getY();
      float f4 = 1.0F - 3.0F / j;
      m = (int)(localFinderPattern1.getX() + f4 * (f2 - localFinderPattern1.getX()));
      n = (int)(localFinderPattern1.getY() + f4 * (f3 - localFinderPattern1.getY()));
      i1 = 4;
      localObject = null;
      if (i1 <= 16);
    }
    else
    {
      PerspectiveTransform localPerspectiveTransform = createTransform(localFinderPattern1, localFinderPattern2, localFinderPattern3, (ResultPoint)localObject, i);
      localBitMatrix = sampleGrid(this.image, localPerspectiveTransform, i);
      if (localObject != null)
        break label273;
    }
    label273: for (ResultPoint[] arrayOfResultPoint = { localFinderPattern3, localFinderPattern1, localFinderPattern2 }; ; arrayOfResultPoint = new ResultPoint[] { localFinderPattern3, localFinderPattern1, localFinderPattern2, localObject })
    {
      while (true)
      {
        return new DetectorResult(localBitMatrix, arrayOfResultPoint);
        float f5 = i1;
        try
        {
          AlignmentPattern localAlignmentPattern = findAlignmentInRegion(f1, m, n, f5);
          localObject = localAlignmentPattern;
        }
        catch (NotFoundException localNotFoundException)
        {
          i1 <<= 1;
        }
      }
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.detector.Detector
 * JD-Core Version:    0.6.2
 */