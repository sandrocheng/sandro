package com.actionbarsherlock.internal.nineoldandroids.animation;

import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class PropertyValuesHolder$IntPropertyValuesHolder extends PropertyValuesHolder
{
  int mIntAnimatedValue;
  IntKeyframeSet mIntKeyframeSet;

  public PropertyValuesHolder$IntPropertyValuesHolder(String paramString, IntKeyframeSet paramIntKeyframeSet)
  {
    super(paramString, null);
    this.mValueType = Integer.TYPE;
    this.mKeyframeSet = paramIntKeyframeSet;
    this.mIntKeyframeSet = ((IntKeyframeSet)this.mKeyframeSet);
  }

  public PropertyValuesHolder$IntPropertyValuesHolder(String paramString, int[] paramArrayOfInt)
  {
    super(paramString, null);
    setIntValues(paramArrayOfInt);
  }

  void calculateValue(float paramFloat)
  {
    this.mIntAnimatedValue = this.mIntKeyframeSet.getIntValue(paramFloat);
  }

  public IntPropertyValuesHolder clone()
  {
    IntPropertyValuesHolder localIntPropertyValuesHolder = (IntPropertyValuesHolder)super.clone();
    localIntPropertyValuesHolder.mIntKeyframeSet = ((IntKeyframeSet)localIntPropertyValuesHolder.mKeyframeSet);
    return localIntPropertyValuesHolder;
  }

  Object getAnimatedValue()
  {
    return Integer.valueOf(this.mIntAnimatedValue);
  }

  void setAnimatedValue(Object paramObject)
  {
    if (this.mSetter != null);
    try
    {
      this.mTmpValueArray[0] = Integer.valueOf(this.mIntAnimatedValue);
      this.mSetter.invoke(paramObject, this.mTmpValueArray);
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        Log.e("PropertyValuesHolder", localInvocationTargetException.toString());
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        Log.e("PropertyValuesHolder", localIllegalAccessException.toString());
    }
  }

  public void setIntValues(int[] paramArrayOfInt)
  {
    super.setIntValues(paramArrayOfInt);
    this.mIntKeyframeSet = ((IntKeyframeSet)this.mKeyframeSet);
  }

  void setupSetter(Class paramClass)
  {
    super.setupSetter(paramClass);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.PropertyValuesHolder.IntPropertyValuesHolder
 * JD-Core Version:    0.6.2
 */