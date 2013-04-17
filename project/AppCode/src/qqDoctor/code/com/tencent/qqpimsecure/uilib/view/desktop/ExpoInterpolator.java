package com.tencent.qqpimsecure.uilib.view.desktop;

import android.view.animation.Interpolator;

public class ExpoInterpolator
  implements Interpolator
{
  private EasingType.Type type;

  public ExpoInterpolator(EasingType.Type paramType)
  {
    this.type = paramType;
  }

  private float in(float paramFloat)
  {
    if (paramFloat == 0.0F);
    for (double d = 0.0D; ; d = Math.pow(2.0D, 10.0F * (paramFloat - 1.0F)))
      return (float)d;
  }

  private float inout(float paramFloat)
  {
    boolean bool = paramFloat < 0.0F;
    float f1 = 0.0F;
    if (!bool);
    while (true)
    {
      return f1;
      if (paramFloat >= 1.0F)
      {
        f1 = 1.0F;
      }
      else
      {
        float f2 = 2.0F * paramFloat;
        if (f2 < 1.0F)
          f1 = (float)(0.5D * Math.pow(2.0D, 10.0F * (f2 - 1.0F)));
        else
          f1 = (float)(0.5D * (2.0D + -Math.pow(2.0D, -10.0F * (f2 - 1.0F))));
      }
    }
  }

  private float out(float paramFloat)
  {
    double d = 1.0D;
    if (paramFloat >= 1.0F);
    while (true)
    {
      return (float)d;
      d += -Math.pow(2.0D, -10.0F * paramFloat);
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
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.desktop.ExpoInterpolator
 * JD-Core Version:    0.6.2
 */