package com.google.zxing.multi.qrcode.detector;

import com.google.zxing.qrcode.detector.FinderPattern;
import java.io.Serializable;
import java.util.Comparator;

class MultiFinderPatternFinder$ModuleSizeComparator
  implements Serializable, Comparator
{
  public int compare(FinderPattern paramFinderPattern1, FinderPattern paramFinderPattern2)
  {
    float f = paramFinderPattern2.getEstimatedModuleSize() - paramFinderPattern1.getEstimatedModuleSize();
    int i;
    if (f < 0.0D)
      i = -1;
    while (true)
    {
      return i;
      if (f > 0.0D)
        i = 1;
      else
        i = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.multi.qrcode.detector.MultiFinderPatternFinder.ModuleSizeComparator
 * JD-Core Version:    0.6.2
 */