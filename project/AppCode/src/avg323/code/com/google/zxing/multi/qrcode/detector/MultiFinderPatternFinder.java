package com.google.zxing.multi.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.detector.FinderPattern;
import com.google.zxing.qrcode.detector.FinderPatternFinder;
import com.google.zxing.qrcode.detector.FinderPatternInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

final class MultiFinderPatternFinder extends FinderPatternFinder
{
  private static final float DIFF_MODSIZE_CUTOFF = 0.5F;
  private static final float DIFF_MODSIZE_CUTOFF_PERCENT = 0.05F;
  private static final FinderPatternInfo[] EMPTY_RESULT_ARRAY = new FinderPatternInfo[0];
  private static final float MAX_MODULE_COUNT_PER_EDGE = 180.0F;
  private static final float MIN_MODULE_COUNT_PER_EDGE = 9.0F;

  MultiFinderPatternFinder(BitMatrix paramBitMatrix)
  {
    super(paramBitMatrix);
  }

  MultiFinderPatternFinder(BitMatrix paramBitMatrix, ResultPointCallback paramResultPointCallback)
  {
    super(paramBitMatrix, paramResultPointCallback);
  }

  private FinderPattern[][] selectMutipleBestPatterns()
  {
    List localList = getPossibleCenters();
    int i = localList.size();
    if (i < 3)
      throw NotFoundException.getNotFoundInstance();
    FinderPattern[][] arrayOfFinderPattern;;
    if (i == 3)
    {
      arrayOfFinderPattern; = new FinderPattern[1][];
      FinderPattern[] arrayOfFinderPattern2 = new FinderPattern[3];
      arrayOfFinderPattern2[0] = ((FinderPattern)localList.get(0));
      arrayOfFinderPattern2[1] = ((FinderPattern)localList.get(1));
      arrayOfFinderPattern2[2] = ((FinderPattern)localList.get(2));
      arrayOfFinderPattern;[0] = arrayOfFinderPattern2;
    }
    ArrayList localArrayList;
    int j;
    for (Object localObject = arrayOfFinderPattern;; ; localObject = (FinderPattern[][])localArrayList.toArray(new FinderPattern[localArrayList.size()][]))
    {
      return localObject;
      Collections.sort(localList, new MultiFinderPatternFinder.ModuleSizeComparator(null));
      localArrayList = new ArrayList();
      j = 0;
      if (j < i - 2)
        break;
      if (localArrayList.isEmpty())
        break label551;
    }
    FinderPattern localFinderPattern1 = (FinderPattern)localList.get(j);
    if (localFinderPattern1 == null);
    int k;
    FinderPattern localFinderPattern2;
    label218: float f1;
    do
    {
      while (true)
      {
        j++;
        break;
        for (k = j + 1; k < i - 1; k++)
        {
          localFinderPattern2 = (FinderPattern)localList.get(k);
          if (localFinderPattern2 != null)
            break label218;
        }
      }
      f1 = (localFinderPattern1.getEstimatedModuleSize() - localFinderPattern2.getEstimatedModuleSize()) / Math.min(localFinderPattern1.getEstimatedModuleSize(), localFinderPattern2.getEstimatedModuleSize());
    }
    while ((Math.abs(localFinderPattern1.getEstimatedModuleSize() - localFinderPattern2.getEstimatedModuleSize()) > 0.5F) && (f1 >= 0.05F));
    int m = k + 1;
    label279: FinderPattern localFinderPattern3;
    if (m < i)
    {
      localFinderPattern3 = (FinderPattern)localList.get(m);
      if (localFinderPattern3 != null)
        break label309;
    }
    while (true)
    {
      m++;
      break label279;
      break;
      label309: float f2 = (localFinderPattern2.getEstimatedModuleSize() - localFinderPattern3.getEstimatedModuleSize()) / Math.min(localFinderPattern2.getEstimatedModuleSize(), localFinderPattern3.getEstimatedModuleSize());
      if ((Math.abs(localFinderPattern2.getEstimatedModuleSize() - localFinderPattern3.getEstimatedModuleSize()) > 0.5F) && (f2 >= 0.05F))
        break;
      FinderPattern[] arrayOfFinderPattern1 = { localFinderPattern1, localFinderPattern2, localFinderPattern3 };
      ResultPoint.orderBestPatterns(arrayOfFinderPattern1);
      FinderPatternInfo localFinderPatternInfo = new FinderPatternInfo(arrayOfFinderPattern1);
      float f3 = ResultPoint.distance(localFinderPatternInfo.getTopLeft(), localFinderPatternInfo.getBottomLeft());
      float f4 = ResultPoint.distance(localFinderPatternInfo.getTopRight(), localFinderPatternInfo.getBottomLeft());
      float f5 = ResultPoint.distance(localFinderPatternInfo.getTopLeft(), localFinderPatternInfo.getTopRight());
      float f6 = (f3 + f5) / (2.0F * localFinderPattern1.getEstimatedModuleSize());
      if ((f6 <= 180.0F) && (f6 >= 9.0F) && (Math.abs((f3 - f5) / Math.min(f3, f5)) < 0.1F))
      {
        float f7 = (float)Math.sqrt(f3 * f3 + f5 * f5);
        if (Math.abs((f4 - f7) / Math.min(f4, f7)) < 0.1F)
          localArrayList.add(arrayOfFinderPattern1);
      }
    }
    label551: throw NotFoundException.getNotFoundInstance();
  }

  public FinderPatternInfo[] findMulti(Map paramMap)
  {
    int i = 0;
    int j;
    BitMatrix localBitMatrix;
    int k;
    int m;
    int n;
    if ((paramMap != null) && (paramMap.containsKey(DecodeHintType.TRY_HARDER)))
    {
      j = 1;
      localBitMatrix = getImage();
      k = localBitMatrix.getHeight();
      m = localBitMatrix.getWidth();
      n = (int)(3.0F * (k / 228.0F));
      if ((n >= 3) && (j == 0))
        break label476;
    }
    label410: label444: label469: label476: for (int i1 = 3; ; i1 = n)
    {
      int[] arrayOfInt = new int[5];
      int i2 = i1 - 1;
      FinderPattern[][] arrayOfFinderPattern;
      ArrayList localArrayList;
      FinderPatternInfo[] arrayOfFinderPatternInfo;
      if (i2 >= k)
      {
        arrayOfFinderPattern = selectMutipleBestPatterns();
        localArrayList = new ArrayList();
        int i6 = arrayOfFinderPattern.length;
        if (i < i6)
          break label410;
        if (!localArrayList.isEmpty())
          break label444;
        arrayOfFinderPatternInfo = EMPTY_RESULT_ARRAY;
        label124: return arrayOfFinderPatternInfo;
        j = 0;
        break;
      }
      arrayOfInt[0] = 0;
      arrayOfInt[1] = 0;
      arrayOfInt[2] = 0;
      arrayOfInt[3] = 0;
      arrayOfInt[4] = 0;
      int i3 = 0;
      int i4 = 0;
      while (true)
      {
        if (i3 >= m)
        {
          if (foundPatternCross(arrayOfInt))
            handlePossibleCenter(arrayOfInt, i2, m);
          i2 += i1;
          break;
        }
        if (!localBitMatrix.get(i3, i2))
          break label240;
        if ((i4 & 0x1) == 1)
          i4++;
        arrayOfInt[i4] = (1 + arrayOfInt[i4]);
        label234: i3++;
      }
      label240: if ((i4 & 0x1) == 0)
        if (i4 == 4)
          if (foundPatternCross(arrayOfInt))
          {
            if (handlePossibleCenter(arrayOfInt, i2, i3))
              break label469;
            do
              i3++;
            while ((i3 < m) && (!localBitMatrix.get(i3, i2)));
          }
      for (int i5 = i3 - 1; ; i5 = i3)
      {
        arrayOfInt[0] = 0;
        arrayOfInt[1] = 0;
        arrayOfInt[2] = 0;
        arrayOfInt[3] = 0;
        arrayOfInt[4] = 0;
        i3 = i5;
        i4 = 0;
        break label234;
        arrayOfInt[0] = arrayOfInt[2];
        arrayOfInt[1] = arrayOfInt[3];
        arrayOfInt[2] = arrayOfInt[4];
        arrayOfInt[3] = 1;
        arrayOfInt[4] = 0;
        i4 = 3;
        break label234;
        i4++;
        arrayOfInt[i4] = (1 + arrayOfInt[i4]);
        break label234;
        arrayOfInt[i4] = (1 + arrayOfInt[i4]);
        break label234;
        FinderPattern[] arrayOfFinderPattern1 = arrayOfFinderPattern[i];
        ResultPoint.orderBestPatterns(arrayOfFinderPattern1);
        localArrayList.add(new FinderPatternInfo(arrayOfFinderPattern1));
        i++;
        break;
        arrayOfFinderPatternInfo = (FinderPatternInfo[])localArrayList.toArray(new FinderPatternInfo[localArrayList.size()]);
        break label124;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.multi.qrcode.detector.MultiFinderPatternFinder
 * JD-Core Version:    0.6.2
 */