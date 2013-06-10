package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class FinderPatternFinder
{
  private static final int CENTER_QUORUM = 2;
  private static final int INTEGER_MATH_SHIFT = 8;
  protected static final int MAX_MODULES = 57;
  protected static final int MIN_SKIP = 3;
  private final int[] crossCheckStateCount;
  private boolean hasSkipped;
  private final BitMatrix image;
  private final List possibleCenters;
  private final ResultPointCallback resultPointCallback;

  public FinderPatternFinder(BitMatrix paramBitMatrix)
  {
    this(paramBitMatrix, null);
  }

  public FinderPatternFinder(BitMatrix paramBitMatrix, ResultPointCallback paramResultPointCallback)
  {
    this.image = paramBitMatrix;
    this.possibleCenters = new ArrayList();
    this.crossCheckStateCount = new int[5];
    this.resultPointCallback = paramResultPointCallback;
  }

  private static float centerFromEnd(int[] paramArrayOfInt, int paramInt)
  {
    return paramInt - paramArrayOfInt[4] - paramArrayOfInt[3] - paramArrayOfInt[2] / 2.0F;
  }

  private float crossCheckHorizontal(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f = (0.0F / 0.0F);
    BitMatrix localBitMatrix = this.image;
    int i = localBitMatrix.getWidth();
    int[] arrayOfInt = getCrossCheckStateCount();
    int j = paramInt1;
    if ((j < 0) || (!localBitMatrix.get(j, paramInt2)))
      if (j >= 0)
        break label79;
    label79: label116: int k;
    label153: label178: 
    do
    {
      do
      {
        do
        {
          do
          {
            return f;
            arrayOfInt[2] = (1 + arrayOfInt[2]);
            j--;
            break;
            do
            {
              arrayOfInt[1] = (1 + arrayOfInt[1]);
              j--;
            }
            while ((j >= 0) && (!localBitMatrix.get(j, paramInt2)) && (arrayOfInt[1] <= paramInt3));
          }
          while ((j < 0) || (arrayOfInt[1] > paramInt3));
          if ((j >= 0) && (localBitMatrix.get(j, paramInt2)) && (arrayOfInt[0] <= paramInt3))
            break label310;
        }
        while (arrayOfInt[0] > paramInt3);
        k = paramInt1 + 1;
        if ((k < i) && (localBitMatrix.get(k, paramInt2)))
          break label326;
      }
      while (k == i);
      if ((k < i) && (!localBitMatrix.get(k, paramInt2)) && (arrayOfInt[3] < paramInt3))
        break label342;
    }
    while ((k == i) || (arrayOfInt[3] >= paramInt3));
    while (true)
    {
      if ((k >= i) || (!localBitMatrix.get(k, paramInt2)) || (arrayOfInt[4] >= paramInt3))
      {
        if ((arrayOfInt[4] >= paramInt3) || (5 * Math.abs(arrayOfInt[0] + arrayOfInt[1] + arrayOfInt[2] + arrayOfInt[3] + arrayOfInt[4] - paramInt4) >= paramInt4) || (!foundPatternCross(arrayOfInt)))
          break;
        f = centerFromEnd(arrayOfInt, k);
        break;
        label310: arrayOfInt[0] = (1 + arrayOfInt[0]);
        j--;
        break label116;
        label326: arrayOfInt[2] = (1 + arrayOfInt[2]);
        k++;
        break label153;
        label342: arrayOfInt[3] = (1 + arrayOfInt[3]);
        k++;
        break label178;
      }
      arrayOfInt[4] = (1 + arrayOfInt[4]);
      k++;
    }
  }

  private float crossCheckVertical(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f = (0.0F / 0.0F);
    BitMatrix localBitMatrix = this.image;
    int i = localBitMatrix.getHeight();
    int[] arrayOfInt = getCrossCheckStateCount();
    int j = paramInt1;
    if ((j < 0) || (!localBitMatrix.get(paramInt2, j)))
      if (j >= 0)
        break label79;
    label79: label116: int k;
    label153: label178: 
    do
    {
      do
      {
        do
        {
          do
          {
            return f;
            arrayOfInt[2] = (1 + arrayOfInt[2]);
            j--;
            break;
            do
            {
              arrayOfInt[1] = (1 + arrayOfInt[1]);
              j--;
            }
            while ((j >= 0) && (!localBitMatrix.get(paramInt2, j)) && (arrayOfInt[1] <= paramInt3));
          }
          while ((j < 0) || (arrayOfInt[1] > paramInt3));
          if ((j >= 0) && (localBitMatrix.get(paramInt2, j)) && (arrayOfInt[0] <= paramInt3))
            break label312;
        }
        while (arrayOfInt[0] > paramInt3);
        k = paramInt1 + 1;
        if ((k < i) && (localBitMatrix.get(paramInt2, k)))
          break label328;
      }
      while (k == i);
      if ((k < i) && (!localBitMatrix.get(paramInt2, k)) && (arrayOfInt[3] < paramInt3))
        break label344;
    }
    while ((k == i) || (arrayOfInt[3] >= paramInt3));
    while (true)
    {
      if ((k >= i) || (!localBitMatrix.get(paramInt2, k)) || (arrayOfInt[4] >= paramInt3))
      {
        if ((arrayOfInt[4] >= paramInt3) || (5 * Math.abs(arrayOfInt[0] + arrayOfInt[1] + arrayOfInt[2] + arrayOfInt[3] + arrayOfInt[4] - paramInt4) >= paramInt4 * 2) || (!foundPatternCross(arrayOfInt)))
          break;
        f = centerFromEnd(arrayOfInt, k);
        break;
        label312: arrayOfInt[0] = (1 + arrayOfInt[0]);
        j--;
        break label116;
        label328: arrayOfInt[2] = (1 + arrayOfInt[2]);
        k++;
        break label153;
        label344: arrayOfInt[3] = (1 + arrayOfInt[3]);
        k++;
        break label178;
      }
      arrayOfInt[4] = (1 + arrayOfInt[4]);
      k++;
    }
  }

  private int findRowSkip()
  {
    int i;
    if (this.possibleCenters.size() <= 1)
      i = 0;
    while (true)
    {
      return i;
      Iterator localIterator = this.possibleCenters.iterator();
      Object localObject = null;
      FinderPattern localFinderPattern;
      while (true)
      {
        if (!localIterator.hasNext())
        {
          i = 0;
          break;
        }
        localFinderPattern = (FinderPattern)localIterator.next();
        if (localFinderPattern.getCount() >= 2)
        {
          if (localObject != null)
            break label73;
          localObject = localFinderPattern;
        }
      }
      label73: this.hasSkipped = true;
      i = (int)(Math.abs(localObject.getX() - localFinderPattern.getX()) - Math.abs(localObject.getY() - localFinderPattern.getY())) / 2;
    }
  }

  protected static boolean foundPatternCross(int[] paramArrayOfInt)
  {
    int i = 0;
    int j = 0;
    boolean bool;
    if (i >= 5)
    {
      bool = false;
      if (j >= 7)
        break label42;
    }
    while (true)
    {
      return bool;
      int i6 = paramArrayOfInt[i];
      bool = false;
      if (i6 != 0)
      {
        j += i6;
        i++;
        break;
        label42: int k = (j << 8) / 7;
        int m = k / 2;
        int n = Math.abs(k - (paramArrayOfInt[0] << 8));
        bool = false;
        if (n < m)
        {
          int i1 = Math.abs(k - (paramArrayOfInt[1] << 8));
          bool = false;
          if (i1 < m)
          {
            int i2 = Math.abs(k * 3 - (paramArrayOfInt[2] << 8));
            int i3 = m * 3;
            bool = false;
            if (i2 < i3)
            {
              int i4 = Math.abs(k - (paramArrayOfInt[3] << 8));
              bool = false;
              if (i4 < m)
              {
                int i5 = Math.abs(k - (paramArrayOfInt[4] << 8));
                bool = false;
                if (i5 < m)
                  bool = true;
              }
            }
          }
        }
      }
    }
  }

  private int[] getCrossCheckStateCount()
  {
    this.crossCheckStateCount[0] = 0;
    this.crossCheckStateCount[1] = 0;
    this.crossCheckStateCount[2] = 0;
    this.crossCheckStateCount[3] = 0;
    this.crossCheckStateCount[4] = 0;
    return this.crossCheckStateCount;
  }

  private boolean haveMultiplyConfirmedCenters()
  {
    float f1 = 0.0F;
    int i = this.possibleCenters.size();
    Iterator localIterator1 = this.possibleCenters.iterator();
    float f2 = 0.0F;
    int j = 0;
    boolean bool1;
    while (true)
    {
      if (!localIterator1.hasNext())
      {
        bool1 = false;
        if (j >= 3)
          break;
        return bool1;
      }
      FinderPattern localFinderPattern = (FinderPattern)localIterator1.next();
      if (localFinderPattern.getCount() >= 2)
      {
        j++;
        f2 += localFinderPattern.getEstimatedModuleSize();
      }
    }
    float f3 = f2 / i;
    Iterator localIterator2 = this.possibleCenters.iterator();
    while (true)
    {
      if (!localIterator2.hasNext())
      {
        boolean bool2 = f1 < 0.05F * f2;
        bool1 = false;
        if (bool2)
          break;
        bool1 = true;
        break;
      }
      f1 += Math.abs(((FinderPattern)localIterator2.next()).getEstimatedModuleSize() - f3);
    }
  }

  private FinderPattern[] selectBestPatterns()
  {
    float f1 = 0.0F;
    int i = this.possibleCenters.size();
    if (i < 3)
      throw NotFoundException.getNotFoundInstance();
    Iterator localIterator2;
    float f3;
    float f4;
    float f6;
    float f8;
    int j;
    label110: Iterator localIterator1;
    if (i > 3)
    {
      localIterator2 = this.possibleCenters.iterator();
      f3 = 0.0F;
      f4 = 0.0F;
      if (!localIterator2.hasNext())
      {
        f6 = f4 / i;
        float f7 = (float)Math.sqrt(f3 / i - f6 * f6);
        Collections.sort(this.possibleCenters, new FinderPatternFinder.FurthestFromAverageComparator(f6, null));
        f8 = Math.max(0.2F * f6, f7);
        j = 0;
        if ((j < this.possibleCenters.size()) && (this.possibleCenters.size() > 3))
          break label316;
      }
    }
    else if (this.possibleCenters.size() > 3)
    {
      localIterator1 = this.possibleCenters.iterator();
    }
    while (true)
    {
      if (!localIterator1.hasNext())
      {
        float f2 = f1 / this.possibleCenters.size();
        Collections.sort(this.possibleCenters, new FinderPatternFinder.CenterComparator(f2, null));
        this.possibleCenters.subList(3, this.possibleCenters.size()).clear();
        FinderPattern[] arrayOfFinderPattern = new FinderPattern[3];
        arrayOfFinderPattern[0] = ((FinderPattern)this.possibleCenters.get(0));
        arrayOfFinderPattern[1] = ((FinderPattern)this.possibleCenters.get(1));
        arrayOfFinderPattern[2] = ((FinderPattern)this.possibleCenters.get(2));
        return arrayOfFinderPattern;
        float f5 = ((FinderPattern)localIterator2.next()).getEstimatedModuleSize();
        f4 += f5;
        f3 += f5 * f5;
        break;
        label316: if (Math.abs(((FinderPattern)this.possibleCenters.get(j)).getEstimatedModuleSize() - f6) > f8)
        {
          this.possibleCenters.remove(j);
          j--;
        }
        j++;
        break label110;
      }
      f1 += ((FinderPattern)localIterator1.next()).getEstimatedModuleSize();
    }
  }

  FinderPatternInfo find(Map paramMap)
  {
    int i;
    int j;
    int k;
    int m;
    if ((paramMap != null) && (paramMap.containsKey(DecodeHintType.TRY_HARDER)))
    {
      i = 1;
      j = this.image.getHeight();
      k = this.image.getWidth();
      m = j * 3 / 228;
      if ((m >= 3) && (i == 0))
        break label599;
    }
    label267: label599: for (int n = 3; ; n = m)
    {
      boolean bool1 = false;
      int[] arrayOfInt = new int[5];
      int i1 = n - 1;
      int i2 = n;
      if ((i1 >= j) || (bool1))
      {
        FinderPattern[] arrayOfFinderPattern = selectBestPatterns();
        ResultPoint.orderBestPatterns(arrayOfFinderPattern);
        return new FinderPatternInfo(arrayOfFinderPattern);
        i = 0;
        break;
      }
      arrayOfInt[0] = 0;
      arrayOfInt[1] = 0;
      arrayOfInt[2] = 0;
      arrayOfInt[3] = 0;
      arrayOfInt[4] = 0;
      int i3 = 0;
      int i4 = 0;
      boolean bool2;
      int i6;
      while (true)
      {
        if (i4 >= k)
        {
          if ((foundPatternCross(arrayOfInt)) && (handlePossibleCenter(arrayOfInt, i1, k)))
          {
            i2 = arrayOfInt[0];
            if (this.hasSkipped)
              bool1 = haveMultiplyConfirmedCenters();
          }
          i1 += i2;
          break;
        }
        if (!this.image.get(i4, i1))
          break label267;
        if ((i3 & 0x1) == 1)
          i3++;
        arrayOfInt[i3] = (1 + arrayOfInt[i3]);
        int i16 = i2;
        bool2 = bool1;
        i6 = i16;
        i4++;
        int i7 = i6;
        bool1 = bool2;
        i2 = i7;
      }
      int i13;
      boolean bool3;
      int i12;
      if ((i3 & 0x1) == 0)
        if (i3 == 4)
          if (foundPatternCross(arrayOfInt))
            if (handlePossibleCenter(arrayOfInt, i1, i4))
              if (this.hasSkipped)
              {
                boolean bool4 = haveMultiplyConfirmedCenters();
                int i15 = i4;
                i13 = i1;
                bool3 = bool4;
                i12 = i15;
              }
      while (true)
      {
        arrayOfInt[0] = 0;
        arrayOfInt[1] = 0;
        arrayOfInt[2] = 0;
        arrayOfInt[3] = 0;
        arrayOfInt[4] = 0;
        int i14 = i12;
        i6 = 2;
        bool2 = bool3;
        i1 = i13;
        i4 = i14;
        i3 = 0;
        break;
        int i11 = findRowSkip();
        if (i11 > arrayOfInt[2])
        {
          i13 = i1 + (-2 + (i11 - arrayOfInt[2]));
          i12 = k - 1;
          bool3 = bool1;
          continue;
          arrayOfInt[0] = arrayOfInt[2];
          arrayOfInt[1] = arrayOfInt[3];
          arrayOfInt[2] = arrayOfInt[4];
          arrayOfInt[3] = 1;
          arrayOfInt[4] = 0;
          i3 = 3;
          int i10 = i2;
          bool2 = bool1;
          i6 = i10;
          break;
          arrayOfInt[0] = arrayOfInt[2];
          arrayOfInt[1] = arrayOfInt[3];
          arrayOfInt[2] = arrayOfInt[4];
          arrayOfInt[3] = 1;
          arrayOfInt[4] = 0;
          i3 = 3;
          int i9 = i2;
          bool2 = bool1;
          i6 = i9;
          break;
          i3++;
          arrayOfInt[i3] = (1 + arrayOfInt[i3]);
          int i8 = i2;
          bool2 = bool1;
          i6 = i8;
          break;
          arrayOfInt[i3] = (1 + arrayOfInt[i3]);
          int i5 = i2;
          bool2 = bool1;
          i6 = i5;
          break;
        }
        i12 = i4;
        i13 = i1;
        bool3 = bool1;
      }
    }
  }

  protected BitMatrix getImage()
  {
    return this.image;
  }

  protected List getPossibleCenters()
  {
    return this.possibleCenters;
  }

  protected boolean handlePossibleCenter(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int i = paramArrayOfInt[0] + paramArrayOfInt[1] + paramArrayOfInt[2] + paramArrayOfInt[3] + paramArrayOfInt[4];
    float f1 = centerFromEnd(paramArrayOfInt, paramInt2);
    float f2 = crossCheckVertical(paramInt1, (int)f1, paramArrayOfInt[2], i);
    boolean bool1 = Float.isNaN(f2);
    boolean bool2 = false;
    float f3;
    float f4;
    if (!bool1)
    {
      f3 = crossCheckHorizontal((int)f1, (int)f2, paramArrayOfInt[2], i);
      boolean bool3 = Float.isNaN(f3);
      bool2 = false;
      if (!bool3)
        f4 = i / 7.0F;
    }
    for (int j = 0; ; j++)
    {
      int k = this.possibleCenters.size();
      int m = 0;
      if (j >= k);
      while (true)
      {
        if (m == 0)
        {
          FinderPattern localFinderPattern2 = new FinderPattern(f3, f2, f4);
          this.possibleCenters.add(localFinderPattern2);
          if (this.resultPointCallback != null)
            this.resultPointCallback.foundPossibleResultPoint(localFinderPattern2);
        }
        bool2 = true;
        return bool2;
        FinderPattern localFinderPattern1 = (FinderPattern)this.possibleCenters.get(j);
        if (!localFinderPattern1.aboutEquals(f4, f2, f3))
          break;
        this.possibleCenters.set(j, localFinderPattern1.combineEstimate(f2, f3, f4));
        m = 1;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.detector.FinderPatternFinder
 * JD-Core Version:    0.6.2
 */