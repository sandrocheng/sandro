package com.google.zxing;

import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;

public abstract class Binarizer
{
  private final LuminanceSource source;

  public Binarizer(LuminanceSource paramLuminanceSource)
  {
    this.source = paramLuminanceSource;
  }

  public abstract Binarizer createBinarizer(LuminanceSource paramLuminanceSource);

  public abstract BitMatrix getBlackMatrix();

  public abstract BitArray getBlackRow(int paramInt, BitArray paramBitArray);

  public int getHeight()
  {
    return this.source.getHeight();
  }

  public LuminanceSource getLuminanceSource()
  {
    return this.source;
  }

  public int getWidth()
  {
    return this.source.getWidth();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.Binarizer
 * JD-Core Version:    0.6.2
 */