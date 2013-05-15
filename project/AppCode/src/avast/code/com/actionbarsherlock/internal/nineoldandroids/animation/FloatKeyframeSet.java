package com.actionbarsherlock.internal.nineoldandroids.animation;

import android.view.animation.Interpolator;
import java.util.ArrayList;

class FloatKeyframeSet extends KeyframeSet
{
  private float deltaValue;
  private boolean firstTime = true;
  private float firstValue;
  private float lastValue;

  public FloatKeyframeSet(Keyframe.FloatKeyframe[] paramArrayOfFloatKeyframe)
  {
    super(paramArrayOfFloatKeyframe);
  }

  public FloatKeyframeSet clone()
  {
    ArrayList localArrayList = this.mKeyframes;
    int i = this.mKeyframes.size();
    Keyframe.FloatKeyframe[] arrayOfFloatKeyframe = new Keyframe.FloatKeyframe[i];
    for (int j = 0; j < i; j++)
      arrayOfFloatKeyframe[j] = ((Keyframe.FloatKeyframe)((Keyframe)localArrayList.get(j)).clone());
    return new FloatKeyframeSet(arrayOfFloatKeyframe);
  }

  public float getFloatValue(float paramFloat)
  {
    int i = 1;
    float f1;
    if (this.mNumKeyframes == 2)
    {
      if (this.firstTime)
      {
        this.firstTime = false;
        this.firstValue = ((Keyframe.FloatKeyframe)this.mKeyframes.get(0)).getFloatValue();
        this.lastValue = ((Keyframe.FloatKeyframe)this.mKeyframes.get(i)).getFloatValue();
        this.deltaValue = (this.lastValue - this.firstValue);
      }
      if (this.mInterpolator != null)
        paramFloat = this.mInterpolator.getInterpolation(paramFloat);
      if (this.mEvaluator == null)
        f1 = this.firstValue + paramFloat * this.deltaValue;
    }
    while (true)
    {
      return f1;
      f1 = ((Number)this.mEvaluator.evaluate(paramFloat, Float.valueOf(this.firstValue), Float.valueOf(this.lastValue))).floatValue();
      continue;
      if (paramFloat <= 0.0F)
      {
        Keyframe.FloatKeyframe localFloatKeyframe4 = (Keyframe.FloatKeyframe)this.mKeyframes.get(0);
        Keyframe.FloatKeyframe localFloatKeyframe5 = (Keyframe.FloatKeyframe)this.mKeyframes.get(i);
        float f10 = localFloatKeyframe4.getFloatValue();
        float f11 = localFloatKeyframe5.getFloatValue();
        float f12 = localFloatKeyframe4.getFraction();
        float f13 = localFloatKeyframe5.getFraction();
        Interpolator localInterpolator3 = localFloatKeyframe5.getInterpolator();
        if (localInterpolator3 != null)
          paramFloat = localInterpolator3.getInterpolation(paramFloat);
        float f14 = (paramFloat - f12) / (f13 - f12);
        if (this.mEvaluator == null)
          f1 = f10 + f14 * (f11 - f10);
        else
          f1 = ((Number)this.mEvaluator.evaluate(f14, Float.valueOf(f10), Float.valueOf(f11))).floatValue();
      }
      else if (paramFloat >= 1.0F)
      {
        Keyframe.FloatKeyframe localFloatKeyframe2 = (Keyframe.FloatKeyframe)this.mKeyframes.get(-2 + this.mNumKeyframes);
        Keyframe.FloatKeyframe localFloatKeyframe3 = (Keyframe.FloatKeyframe)this.mKeyframes.get(-1 + this.mNumKeyframes);
        float f5 = localFloatKeyframe2.getFloatValue();
        float f6 = localFloatKeyframe3.getFloatValue();
        float f7 = localFloatKeyframe2.getFraction();
        float f8 = localFloatKeyframe3.getFraction();
        Interpolator localInterpolator2 = localFloatKeyframe3.getInterpolator();
        if (localInterpolator2 != null)
          paramFloat = localInterpolator2.getInterpolation(paramFloat);
        float f9 = (paramFloat - f7) / (f8 - f7);
        if (this.mEvaluator == null)
          f1 = f5 + f9 * (f6 - f5);
        else
          f1 = ((Number)this.mEvaluator.evaluate(f9, Float.valueOf(f5), Float.valueOf(f6))).floatValue();
      }
      else
      {
        Keyframe.FloatKeyframe localFloatKeyframe1;
        for (Object localObject = (Keyframe.FloatKeyframe)this.mKeyframes.get(0); ; localObject = localFloatKeyframe1)
        {
          if (i >= this.mNumKeyframes)
            break label614;
          localFloatKeyframe1 = (Keyframe.FloatKeyframe)this.mKeyframes.get(i);
          if (paramFloat < localFloatKeyframe1.getFraction())
          {
            Interpolator localInterpolator1 = localFloatKeyframe1.getInterpolator();
            if (localInterpolator1 != null)
              paramFloat = localInterpolator1.getInterpolation(paramFloat);
            float f2 = (paramFloat - ((Keyframe.FloatKeyframe)localObject).getFraction()) / (localFloatKeyframe1.getFraction() - ((Keyframe.FloatKeyframe)localObject).getFraction());
            float f3 = ((Keyframe.FloatKeyframe)localObject).getFloatValue();
            float f4 = localFloatKeyframe1.getFloatValue();
            if (this.mEvaluator == null)
            {
              f1 = f3 + f2 * (f4 - f3);
              break;
            }
            f1 = ((Number)this.mEvaluator.evaluate(f2, Float.valueOf(f3), Float.valueOf(f4))).floatValue();
            break;
          }
          i++;
        }
        label614: f1 = ((Number)((Keyframe)this.mKeyframes.get(-1 + this.mNumKeyframes)).getValue()).floatValue();
      }
    }
  }

  public Object getValue(float paramFloat)
  {
    return Float.valueOf(getFloatValue(paramFloat));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.FloatKeyframeSet
 * JD-Core Version:    0.6.2
 */