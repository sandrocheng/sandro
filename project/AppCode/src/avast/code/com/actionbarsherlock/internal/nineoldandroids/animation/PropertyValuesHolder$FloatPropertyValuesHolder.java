package com.actionbarsherlock.internal.nineoldandroids.animation;

import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class PropertyValuesHolder$FloatPropertyValuesHolder extends PropertyValuesHolder
{
  float mFloatAnimatedValue;
  FloatKeyframeSet mFloatKeyframeSet;

  public PropertyValuesHolder$FloatPropertyValuesHolder(String paramString, FloatKeyframeSet paramFloatKeyframeSet)
  {
    super(paramString, null);
    this.mValueType = Float.TYPE;
    this.mKeyframeSet = paramFloatKeyframeSet;
    this.mFloatKeyframeSet = ((FloatKeyframeSet)this.mKeyframeSet);
  }

  public PropertyValuesHolder$FloatPropertyValuesHolder(String paramString, float[] paramArrayOfFloat)
  {
    super(paramString, null);
    setFloatValues(paramArrayOfFloat);
  }

  void calculateValue(float paramFloat)
  {
    this.mFloatAnimatedValue = this.mFloatKeyframeSet.getFloatValue(paramFloat);
  }

  public FloatPropertyValuesHolder clone()
  {
    FloatPropertyValuesHolder localFloatPropertyValuesHolder = (FloatPropertyValuesHolder)super.clone();
    localFloatPropertyValuesHolder.mFloatKeyframeSet = ((FloatKeyframeSet)localFloatPropertyValuesHolder.mKeyframeSet);
    return localFloatPropertyValuesHolder;
  }

  Object getAnimatedValue()
  {
    return Float.valueOf(this.mFloatAnimatedValue);
  }

  void setAnimatedValue(Object paramObject)
  {
    if (this.mSetter != null);
    try
    {
      this.mTmpValueArray[0] = Float.valueOf(this.mFloatAnimatedValue);
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

  public void setFloatValues(float[] paramArrayOfFloat)
  {
    super.setFloatValues(paramArrayOfFloat);
    this.mFloatKeyframeSet = ((FloatKeyframeSet)this.mKeyframeSet);
  }

  void setupSetter(Class paramClass)
  {
    super.setupSetter(paramClass);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.PropertyValuesHolder.FloatPropertyValuesHolder
 * JD-Core Version:    0.6.2
 */