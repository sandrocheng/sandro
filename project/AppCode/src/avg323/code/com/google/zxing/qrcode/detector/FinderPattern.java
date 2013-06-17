package com.google.zxing.qrcode.detector;

import com.google.zxing.ResultPoint;

public final class FinderPattern extends ResultPoint
{
  private int count;
  private final float estimatedModuleSize;

  FinderPattern(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this(paramFloat1, paramFloat2, paramFloat3, 1);
  }

  FinderPattern(float paramFloat1, float paramFloat2, float paramFloat3, int paramInt)
  {
    super(paramFloat1, paramFloat2);
    this.estimatedModuleSize = paramFloat3;
    this.count = paramInt;
  }

  boolean aboutEquals(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    boolean bool1 = Math.abs(paramFloat2 - getY()) < paramFloat1;
    boolean bool2 = false;
    if (!bool1)
    {
      boolean bool3 = Math.abs(paramFloat3 - getX()) < paramFloat1;
      bool2 = false;
      if (!bool3)
      {
        float f = Math.abs(paramFloat1 - this.estimatedModuleSize);
        if (f <= 1.0F)
          break label80;
        boolean bool4 = f < this.estimatedModuleSize;
        bool2 = false;
        if (!bool4)
          break label80;
      }
    }
    while (true)
    {
      return bool2;
      label80: bool2 = true;
    }
  }

  FinderPattern combineEstimate(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    int i = 1 + this.count;
    return new FinderPattern((paramFloat2 + this.count * getX()) / i, (paramFloat1 + this.count * getY()) / i, (paramFloat3 + this.count * this.estimatedModuleSize) / i, i);
  }

  int getCount()
  {
    return this.count;
  }

  public float getEstimatedModuleSize()
  {
    return this.estimatedModuleSize;
  }

  void incrementCount()
  {
    this.count = (1 + this.count);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.detector.FinderPattern
 * JD-Core Version:    0.6.2
 */