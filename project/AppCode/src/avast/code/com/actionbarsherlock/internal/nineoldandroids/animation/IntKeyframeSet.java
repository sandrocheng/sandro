package com.actionbarsherlock.internal.nineoldandroids.animation;

import android.view.animation.Interpolator;
import java.util.ArrayList;

class IntKeyframeSet extends KeyframeSet
{
  private int deltaValue;
  private boolean firstTime = true;
  private int firstValue;
  private int lastValue;

  public IntKeyframeSet(Keyframe.IntKeyframe[] paramArrayOfIntKeyframe)
  {
    super(paramArrayOfIntKeyframe);
  }

  public IntKeyframeSet clone()
  {
    ArrayList localArrayList = this.mKeyframes;
    int i = this.mKeyframes.size();
    Keyframe.IntKeyframe[] arrayOfIntKeyframe = new Keyframe.IntKeyframe[i];
    for (int j = 0; j < i; j++)
      arrayOfIntKeyframe[j] = ((Keyframe.IntKeyframe)((Keyframe)localArrayList.get(j)).clone());
    return new IntKeyframeSet(arrayOfIntKeyframe);
  }

  public int getIntValue(float paramFloat)
  {
    int i = 1;
    int j;
    if (this.mNumKeyframes == 2)
    {
      if (this.firstTime)
      {
        this.firstTime = false;
        this.firstValue = ((Keyframe.IntKeyframe)this.mKeyframes.get(0)).getIntValue();
        this.lastValue = ((Keyframe.IntKeyframe)this.mKeyframes.get(i)).getIntValue();
        this.deltaValue = (this.lastValue - this.firstValue);
      }
      if (this.mInterpolator != null)
        paramFloat = this.mInterpolator.getInterpolation(paramFloat);
      if (this.mEvaluator == null)
        j = this.firstValue + (int)(paramFloat * this.deltaValue);
    }
    while (true)
    {
      return j;
      j = ((Number)this.mEvaluator.evaluate(paramFloat, Integer.valueOf(this.firstValue), Integer.valueOf(this.lastValue))).intValue();
      continue;
      if (paramFloat <= 0.0F)
      {
        Keyframe.IntKeyframe localIntKeyframe4 = (Keyframe.IntKeyframe)this.mKeyframes.get(0);
        Keyframe.IntKeyframe localIntKeyframe5 = (Keyframe.IntKeyframe)this.mKeyframes.get(i);
        int i2 = localIntKeyframe4.getIntValue();
        int i3 = localIntKeyframe5.getIntValue();
        float f5 = localIntKeyframe4.getFraction();
        float f6 = localIntKeyframe5.getFraction();
        Interpolator localInterpolator3 = localIntKeyframe5.getInterpolator();
        if (localInterpolator3 != null)
          paramFloat = localInterpolator3.getInterpolation(paramFloat);
        float f7 = (paramFloat - f5) / (f6 - f5);
        if (this.mEvaluator == null)
          j = i2 + (int)(f7 * (i3 - i2));
        else
          j = ((Number)this.mEvaluator.evaluate(f7, Integer.valueOf(i2), Integer.valueOf(i3))).intValue();
      }
      else if (paramFloat >= 1.0F)
      {
        Keyframe.IntKeyframe localIntKeyframe2 = (Keyframe.IntKeyframe)this.mKeyframes.get(-2 + this.mNumKeyframes);
        Keyframe.IntKeyframe localIntKeyframe3 = (Keyframe.IntKeyframe)this.mKeyframes.get(-1 + this.mNumKeyframes);
        int n = localIntKeyframe2.getIntValue();
        int i1 = localIntKeyframe3.getIntValue();
        float f2 = localIntKeyframe2.getFraction();
        float f3 = localIntKeyframe3.getFraction();
        Interpolator localInterpolator2 = localIntKeyframe3.getInterpolator();
        if (localInterpolator2 != null)
          paramFloat = localInterpolator2.getInterpolation(paramFloat);
        float f4 = (paramFloat - f2) / (f3 - f2);
        if (this.mEvaluator == null)
          j = n + (int)(f4 * (i1 - n));
        else
          j = ((Number)this.mEvaluator.evaluate(f4, Integer.valueOf(n), Integer.valueOf(i1))).intValue();
      }
      else
      {
        Keyframe.IntKeyframe localIntKeyframe1;
        for (Object localObject = (Keyframe.IntKeyframe)this.mKeyframes.get(0); ; localObject = localIntKeyframe1)
        {
          if (i >= this.mNumKeyframes)
            break label622;
          localIntKeyframe1 = (Keyframe.IntKeyframe)this.mKeyframes.get(i);
          if (paramFloat < localIntKeyframe1.getFraction())
          {
            Interpolator localInterpolator1 = localIntKeyframe1.getInterpolator();
            if (localInterpolator1 != null)
              paramFloat = localInterpolator1.getInterpolation(paramFloat);
            float f1 = (paramFloat - ((Keyframe.IntKeyframe)localObject).getFraction()) / (localIntKeyframe1.getFraction() - ((Keyframe.IntKeyframe)localObject).getFraction());
            int k = ((Keyframe.IntKeyframe)localObject).getIntValue();
            int m = localIntKeyframe1.getIntValue();
            if (this.mEvaluator == null)
            {
              j = k + (int)(f1 * (m - k));
              break;
            }
            j = ((Number)this.mEvaluator.evaluate(f1, Integer.valueOf(k), Integer.valueOf(m))).intValue();
            break;
          }
          i++;
        }
        label622: j = ((Number)((Keyframe)this.mKeyframes.get(-1 + this.mNumKeyframes)).getValue()).intValue();
      }
    }
  }

  public Object getValue(float paramFloat)
  {
    return Integer.valueOf(getIntValue(paramFloat));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.IntKeyframeSet
 * JD-Core Version:    0.6.2
 */