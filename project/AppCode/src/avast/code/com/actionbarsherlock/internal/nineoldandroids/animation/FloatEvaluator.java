package com.actionbarsherlock.internal.nineoldandroids.animation;

public class FloatEvaluator
  implements TypeEvaluator
{
  public Float evaluate(float paramFloat, Number paramNumber1, Number paramNumber2)
  {
    float f = paramNumber1.floatValue();
    return Float.valueOf(f + paramFloat * (paramNumber2.floatValue() - f));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.FloatEvaluator
 * JD-Core Version:    0.6.2
 */