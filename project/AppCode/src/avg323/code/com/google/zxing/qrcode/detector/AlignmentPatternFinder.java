package com.google.zxing.qrcode.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class AlignmentPatternFinder
{
  private final int[] crossCheckStateCount;
  private final int height;
  private final BitMatrix image;
  private final float moduleSize;
  private final List possibleCenters;
  private final ResultPointCallback resultPointCallback;
  private final int startX;
  private final int startY;
  private final int width;

  AlignmentPatternFinder(BitMatrix paramBitMatrix, int paramInt1, int paramInt2, int paramInt3, int paramInt4, float paramFloat, ResultPointCallback paramResultPointCallback)
  {
    this.image = paramBitMatrix;
    this.possibleCenters = new ArrayList(5);
    this.startX = paramInt1;
    this.startY = paramInt2;
    this.width = paramInt3;
    this.height = paramInt4;
    this.moduleSize = paramFloat;
    this.crossCheckStateCount = new int[3];
    this.resultPointCallback = paramResultPointCallback;
  }

  private static float centerFromEnd(int[] paramArrayOfInt, int paramInt)
  {
    return paramInt - paramArrayOfInt[2] - paramArrayOfInt[1] / 2.0F;
  }

  private float crossCheckVertical(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f = (0.0F / 0.0F);
    BitMatrix localBitMatrix = this.image;
    int i = localBitMatrix.getHeight();
    int[] arrayOfInt = this.crossCheckStateCount;
    arrayOfInt[0] = 0;
    arrayOfInt[1] = 0;
    arrayOfInt[2] = 0;
    int j = paramInt1;
    if ((j < 0) || (!localBitMatrix.get(paramInt2, j)) || (arrayOfInt[1] > paramInt3))
      if ((j >= 0) && (arrayOfInt[1] <= paramInt3))
        break label110;
    label110: int k;
    label147: 
    do
    {
      do
      {
        return f;
        arrayOfInt[1] = (1 + arrayOfInt[1]);
        j--;
        break;
        do
        {
          arrayOfInt[0] = (1 + arrayOfInt[0]);
          j--;
        }
        while ((j >= 0) && (!localBitMatrix.get(paramInt2, j)) && (arrayOfInt[0] <= paramInt3));
      }
      while (arrayOfInt[0] > paramInt3);
      k = paramInt1 + 1;
      if ((k < i) && (localBitMatrix.get(paramInt2, k)) && (arrayOfInt[1] <= paramInt3))
        break label272;
    }
    while ((k == i) || (arrayOfInt[1] > paramInt3));
    while (true)
    {
      if ((k >= i) || (localBitMatrix.get(paramInt2, k)) || (arrayOfInt[2] > paramInt3))
      {
        if ((arrayOfInt[2] > paramInt3) || (5 * Math.abs(arrayOfInt[0] + arrayOfInt[1] + arrayOfInt[2] - paramInt4) >= paramInt4 * 2) || (!foundPatternCross(arrayOfInt)))
          break;
        f = centerFromEnd(arrayOfInt, k);
        break;
        label272: arrayOfInt[1] = (1 + arrayOfInt[1]);
        k++;
        break label147;
      }
      arrayOfInt[2] = (1 + arrayOfInt[2]);
      k++;
    }
  }

  private boolean foundPatternCross(int[] paramArrayOfInt)
  {
    float f1 = this.moduleSize;
    float f2 = f1 / 2.0F;
    for (int i = 0; ; i++)
    {
      boolean bool2;
      if (i >= 3)
        bool2 = true;
      boolean bool1;
      do
      {
        return bool2;
        bool1 = Math.abs(f1 - paramArrayOfInt[i]) < f2;
        bool2 = false;
      }
      while (!bool1);
    }
  }

  private AlignmentPattern handlePossibleCenter(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int i = paramArrayOfInt[0] + paramArrayOfInt[1] + paramArrayOfInt[2];
    float f1 = centerFromEnd(paramArrayOfInt, paramInt2);
    float f2 = crossCheckVertical(paramInt1, (int)f1, 2 * paramArrayOfInt[1], i);
    float f3;
    Iterator localIterator;
    if (!Float.isNaN(f2))
    {
      f3 = (paramArrayOfInt[0] + paramArrayOfInt[1] + paramArrayOfInt[2]) / 3.0F;
      localIterator = this.possibleCenters.iterator();
      if (localIterator.hasNext())
        break label134;
      AlignmentPattern localAlignmentPattern2 = new AlignmentPattern(f1, f2, f3);
      this.possibleCenters.add(localAlignmentPattern2);
      if (this.resultPointCallback != null)
        this.resultPointCallback.foundPossibleResultPoint(localAlignmentPattern2);
    }
    label134: AlignmentPattern localAlignmentPattern3;
    for (AlignmentPattern localAlignmentPattern1 = null; ; localAlignmentPattern1 = localAlignmentPattern3.combineEstimate(f2, f1, f3))
    {
      return localAlignmentPattern1;
      localAlignmentPattern3 = (AlignmentPattern)localIterator.next();
      if (!localAlignmentPattern3.aboutEquals(f3, f2, f1))
        break;
    }
  }

  AlignmentPattern find()
  {
    int i = this.startX;
    int j = this.height;
    int k = i + this.width;
    int m = this.startY + (j >> 1);
    int[] arrayOfInt = new int[3];
    int n = 0;
    AlignmentPattern localAlignmentPattern;
    if (n >= j)
    {
      if (!this.possibleCenters.isEmpty())
      {
        localAlignmentPattern = (AlignmentPattern)this.possibleCenters.get(0);
        label68: return localAlignmentPattern;
      }
    }
    else
    {
      int i1;
      label86: int i2;
      if ((n & 0x1) == 0)
      {
        i1 = n + 1 >> 1;
        i2 = m + i1;
        arrayOfInt[0] = 0;
        arrayOfInt[1] = 0;
        arrayOfInt[2] = 0;
      }
      int i4;
      int i5;
      for (int i3 = i; ; i3++)
        if ((i3 >= k) || (this.image.get(i3, i2)))
        {
          i4 = i3;
          i5 = 0;
          label138: if (i4 < k)
            break label193;
          if (foundPatternCross(arrayOfInt))
          {
            localAlignmentPattern = handlePossibleCenter(arrayOfInt, i2, k);
            if (localAlignmentPattern != null)
              break label68;
          }
          n++;
          break;
          i1 = -(n + 1 >> 1);
          break label86;
        }
      label193: if (this.image.get(i4, i2))
        if (i5 == 1)
          arrayOfInt[i5] = (1 + arrayOfInt[i5]);
      while (true)
      {
        i4++;
        break label138;
        if (i5 == 2)
        {
          if (foundPatternCross(arrayOfInt))
          {
            localAlignmentPattern = handlePossibleCenter(arrayOfInt, i2, i4);
            if (localAlignmentPattern != null)
              break;
          }
          arrayOfInt[0] = arrayOfInt[2];
          arrayOfInt[1] = 1;
          arrayOfInt[2] = 0;
          i5 = 1;
          continue;
        }
        i5++;
        arrayOfInt[i5] = (1 + arrayOfInt[i5]);
        continue;
        if (i5 == 1)
          i5++;
        arrayOfInt[i5] = (1 + arrayOfInt[i5]);
      }
    }
    throw NotFoundException.getNotFoundInstance();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.detector.AlignmentPatternFinder
 * JD-Core Version:    0.6.2
 */