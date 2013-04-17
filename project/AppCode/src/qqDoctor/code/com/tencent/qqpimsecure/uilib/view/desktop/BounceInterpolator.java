package com.tencent.qqpimsecure.uilib.view.desktop;

import android.view.animation.Interpolator;

public class BounceInterpolator
  implements Interpolator
{
  private EasingType.Type type;

  public BounceInterpolator(EasingType.Type paramType)
  {
    this.type = paramType;
  }

  private float in(float paramFloat)
  {
    return 1.0F - out(1.0F - paramFloat);
  }

  private float inout(float paramFloat)
  {
    if (paramFloat < 0.5F);
    for (float f = 0.5F * in(paramFloat * 2.0F); ; f = 0.5F + 0.5F * out(paramFloat * 2.0F - 1.0F))
      return f;
  }

  private float out(float paramFloat)
  {
    float f2;
    if (paramFloat < 0.3636363636363637D)
      f2 = paramFloat * (7.5625F * paramFloat);
    while (true)
    {
      return f2;
      if (paramFloat < 0.7272727272727273D)
      {
        float f4 = (float)(paramFloat - 0.5454545454545454D);
        f2 = 0.75F + f4 * (7.5625F * f4);
      }
      else if (paramFloat < 0.9090909090909091D)
      {
        float f3 = (float)(paramFloat - 0.8181818181818182D);
        f2 = 0.9375F + f3 * (7.5625F * f3);
      }
      else
      {
        float f1 = (float)(paramFloat - 0.9545454545454546D);
        f2 = 0.984375F + f1 * (7.5625F * f1);
      }
    }
  }

  public float getInterpolation(float paramFloat)
  {
    float f;
    if (this.type == EasingType.Type.IN)
      f = in(paramFloat);
    while (true)
    {
      return f;
      if (this.type == EasingType.Type.OUT)
        f = out(paramFloat);
      else if (this.type == EasingType.Type.INOUT)
        f = inout(paramFloat);
      else
        f = 0.0F;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.desktop.BounceInterpolator
 * JD-Core Version:    0.6.2
 */