package com.actionbarsherlock.internal.nineoldandroids.animation;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Arrays;

class KeyframeSet
{
  TypeEvaluator mEvaluator;
  Keyframe mFirstKeyframe;
  Interpolator mInterpolator;
  ArrayList mKeyframes;
  Keyframe mLastKeyframe;
  int mNumKeyframes;

  public KeyframeSet(Keyframe[] paramArrayOfKeyframe)
  {
    this.mNumKeyframes = paramArrayOfKeyframe.length;
    this.mKeyframes = new ArrayList();
    this.mKeyframes.addAll(Arrays.asList(paramArrayOfKeyframe));
    this.mFirstKeyframe = ((Keyframe)this.mKeyframes.get(0));
    this.mLastKeyframe = ((Keyframe)this.mKeyframes.get(-1 + this.mNumKeyframes));
    this.mInterpolator = this.mLastKeyframe.getInterpolator();
  }

  public static KeyframeSet ofFloat(float[] paramArrayOfFloat)
  {
    int i = 1;
    int j = paramArrayOfFloat.length;
    Keyframe.FloatKeyframe[] arrayOfFloatKeyframe = new Keyframe.FloatKeyframe[Math.max(j, 2)];
    if (j == i)
    {
      arrayOfFloatKeyframe[0] = ((Keyframe.FloatKeyframe)Keyframe.ofFloat(0.0F));
      arrayOfFloatKeyframe[i] = ((Keyframe.FloatKeyframe)Keyframe.ofFloat(1.0F, paramArrayOfFloat[0]));
    }
    while (true)
    {
      return new FloatKeyframeSet(arrayOfFloatKeyframe);
      arrayOfFloatKeyframe[0] = ((Keyframe.FloatKeyframe)Keyframe.ofFloat(0.0F, paramArrayOfFloat[0]));
      while (i < j)
      {
        arrayOfFloatKeyframe[i] = ((Keyframe.FloatKeyframe)Keyframe.ofFloat(i / (j - 1), paramArrayOfFloat[i]));
        i++;
      }
    }
  }

  public static KeyframeSet ofInt(int[] paramArrayOfInt)
  {
    int i = 1;
    int j = paramArrayOfInt.length;
    Keyframe.IntKeyframe[] arrayOfIntKeyframe = new Keyframe.IntKeyframe[Math.max(j, 2)];
    if (j == i)
    {
      arrayOfIntKeyframe[0] = ((Keyframe.IntKeyframe)Keyframe.ofInt(0.0F));
      arrayOfIntKeyframe[i] = ((Keyframe.IntKeyframe)Keyframe.ofInt(1.0F, paramArrayOfInt[0]));
    }
    while (true)
    {
      return new IntKeyframeSet(arrayOfIntKeyframe);
      arrayOfIntKeyframe[0] = ((Keyframe.IntKeyframe)Keyframe.ofInt(0.0F, paramArrayOfInt[0]));
      while (i < j)
      {
        arrayOfIntKeyframe[i] = ((Keyframe.IntKeyframe)Keyframe.ofInt(i / (j - 1), paramArrayOfInt[i]));
        i++;
      }
    }
  }

  public static KeyframeSet ofKeyframe(Keyframe[] paramArrayOfKeyframe)
  {
    int i = 0;
    int j = paramArrayOfKeyframe.length;
    int k = 0;
    int m = 0;
    int n = 0;
    int i1 = 0;
    if (k < j)
    {
      if ((paramArrayOfKeyframe[k] instanceof Keyframe.FloatKeyframe))
        i1 = 1;
      while (true)
      {
        k++;
        break;
        if ((paramArrayOfKeyframe[k] instanceof Keyframe.IntKeyframe))
          n = 1;
        else
          m = 1;
      }
    }
    Object localObject;
    if ((i1 != 0) && (n == 0) && (m == 0))
    {
      Keyframe.FloatKeyframe[] arrayOfFloatKeyframe = new Keyframe.FloatKeyframe[j];
      while (i < j)
      {
        arrayOfFloatKeyframe[i] = ((Keyframe.FloatKeyframe)paramArrayOfKeyframe[i]);
        i++;
      }
      localObject = new FloatKeyframeSet(arrayOfFloatKeyframe);
    }
    while (true)
    {
      return localObject;
      if ((n != 0) && (i1 == 0) && (m == 0))
      {
        Keyframe.IntKeyframe[] arrayOfIntKeyframe = new Keyframe.IntKeyframe[j];
        for (int i2 = 0; i2 < j; i2++)
          arrayOfIntKeyframe[i2] = ((Keyframe.IntKeyframe)paramArrayOfKeyframe[i2]);
        localObject = new IntKeyframeSet(arrayOfIntKeyframe);
      }
      else
      {
        localObject = new KeyframeSet(paramArrayOfKeyframe);
      }
    }
  }

  public static KeyframeSet ofObject(Object[] paramArrayOfObject)
  {
    int i = 1;
    int j = paramArrayOfObject.length;
    Keyframe.ObjectKeyframe[] arrayOfObjectKeyframe = new Keyframe.ObjectKeyframe[Math.max(j, 2)];
    if (j == i)
    {
      arrayOfObjectKeyframe[0] = ((Keyframe.ObjectKeyframe)Keyframe.ofObject(0.0F));
      arrayOfObjectKeyframe[i] = ((Keyframe.ObjectKeyframe)Keyframe.ofObject(1.0F, paramArrayOfObject[0]));
    }
    while (true)
    {
      return new KeyframeSet(arrayOfObjectKeyframe);
      arrayOfObjectKeyframe[0] = ((Keyframe.ObjectKeyframe)Keyframe.ofObject(0.0F, paramArrayOfObject[0]));
      while (i < j)
      {
        arrayOfObjectKeyframe[i] = ((Keyframe.ObjectKeyframe)Keyframe.ofObject(i / (j - 1), paramArrayOfObject[i]));
        i++;
      }
    }
  }

  public KeyframeSet clone()
  {
    ArrayList localArrayList = this.mKeyframes;
    int i = this.mKeyframes.size();
    Keyframe[] arrayOfKeyframe = new Keyframe[i];
    for (int j = 0; j < i; j++)
      arrayOfKeyframe[j] = ((Keyframe)localArrayList.get(j)).clone();
    return new KeyframeSet(arrayOfKeyframe);
  }

  public Object getValue(float paramFloat)
  {
    Object localObject2;
    if (this.mNumKeyframes == 2)
    {
      if (this.mInterpolator != null)
        paramFloat = this.mInterpolator.getInterpolation(paramFloat);
      localObject2 = this.mEvaluator.evaluate(paramFloat, this.mFirstKeyframe.getValue(), this.mLastKeyframe.getValue());
    }
    while (true)
    {
      return localObject2;
      if (paramFloat <= 0.0F)
      {
        Keyframe localKeyframe3 = (Keyframe)this.mKeyframes.get(1);
        Interpolator localInterpolator3 = localKeyframe3.getInterpolator();
        if (localInterpolator3 != null)
          paramFloat = localInterpolator3.getInterpolation(paramFloat);
        float f5 = this.mFirstKeyframe.getFraction();
        float f6 = (paramFloat - f5) / (localKeyframe3.getFraction() - f5);
        localObject2 = this.mEvaluator.evaluate(f6, this.mFirstKeyframe.getValue(), localKeyframe3.getValue());
      }
      else if (paramFloat >= 1.0F)
      {
        Keyframe localKeyframe2 = (Keyframe)this.mKeyframes.get(-2 + this.mNumKeyframes);
        Interpolator localInterpolator2 = this.mLastKeyframe.getInterpolator();
        if (localInterpolator2 != null)
          paramFloat = localInterpolator2.getInterpolation(paramFloat);
        float f3 = localKeyframe2.getFraction();
        float f4 = (paramFloat - f3) / (this.mLastKeyframe.getFraction() - f3);
        localObject2 = this.mEvaluator.evaluate(f4, localKeyframe2.getValue(), this.mLastKeyframe.getValue());
      }
      else
      {
        Object localObject1 = this.mFirstKeyframe;
        int i = 1;
        while (true)
        {
          if (i >= this.mNumKeyframes)
            break label361;
          Keyframe localKeyframe1 = (Keyframe)this.mKeyframes.get(i);
          if (paramFloat < localKeyframe1.getFraction())
          {
            Interpolator localInterpolator1 = localKeyframe1.getInterpolator();
            if (localInterpolator1 != null)
              paramFloat = localInterpolator1.getInterpolation(paramFloat);
            float f1 = ((Keyframe)localObject1).getFraction();
            float f2 = (paramFloat - f1) / (localKeyframe1.getFraction() - f1);
            localObject2 = this.mEvaluator.evaluate(f2, ((Keyframe)localObject1).getValue(), localKeyframe1.getValue());
            break;
          }
          i++;
          localObject1 = localKeyframe1;
        }
        label361: localObject2 = this.mLastKeyframe.getValue();
      }
    }
  }

  public void setEvaluator(TypeEvaluator paramTypeEvaluator)
  {
    this.mEvaluator = paramTypeEvaluator;
  }

  public String toString()
  {
    Object localObject = " ";
    int i = 0;
    while (i < this.mNumKeyframes)
    {
      String str = (String)localObject + ((Keyframe)this.mKeyframes.get(i)).getValue() + "  ";
      i++;
      localObject = str;
    }
    return localObject;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.KeyframeSet
 * JD-Core Version:    0.6.2
 */