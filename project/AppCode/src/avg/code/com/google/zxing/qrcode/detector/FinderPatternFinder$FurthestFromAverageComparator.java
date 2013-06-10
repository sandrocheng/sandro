package com.google.zxing.qrcode.detector;

import java.io.Serializable;
import java.util.Comparator;

class FinderPatternFinder$FurthestFromAverageComparator
  implements Serializable, Comparator
{
  private final float average;

  private FinderPatternFinder$FurthestFromAverageComparator(float paramFloat)
  {
    this.average = paramFloat;
  }

  public int compare(FinderPattern paramFinderPattern1, FinderPattern paramFinderPattern2)
  {
    float f1 = Math.abs(paramFinderPattern2.getEstimatedModuleSize() - this.average);
    float f2 = Math.abs(paramFinderPattern1.getEstimatedModuleSize() - this.average);
    int i;
    if (f1 < f2)
      i = -1;
    while (true)
    {
      return i;
      if (f1 == f2)
        i = 0;
      else
        i = 1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.detector.FinderPatternFinder.FurthestFromAverageComparator
 * JD-Core Version:    0.6.2
 */