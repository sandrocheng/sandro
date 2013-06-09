package com.google.zxing.qrcode.detector;

public final class FinderPatternInfo
{
  private final FinderPattern bottomLeft = paramArrayOfFinderPattern[0];
  private final FinderPattern topLeft = paramArrayOfFinderPattern[1];
  private final FinderPattern topRight = paramArrayOfFinderPattern[2];

  public FinderPatternInfo(FinderPattern[] paramArrayOfFinderPattern)
  {
  }

  public final FinderPattern getBottomLeft()
  {
    return this.bottomLeft;
  }

  public final FinderPattern getTopLeft()
  {
    return this.topLeft;
  }

  public final FinderPattern getTopRight()
  {
    return this.topRight;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.detector.FinderPatternInfo
 * JD-Core Version:    0.6.2
 */