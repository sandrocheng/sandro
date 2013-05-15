package com.actionbarsherlock.internal.nineoldandroids.animation;

import java.util.HashMap;

public final class ObjectAnimator extends ValueAnimator
{
  private static final boolean DBG;
  private String mPropertyName;
  private Object mTarget;

  public ObjectAnimator()
  {
  }

  private ObjectAnimator(Object paramObject, String paramString)
  {
    this.mTarget = paramObject;
    setPropertyName(paramString);
  }

  public static ObjectAnimator ofFloat(Object paramObject, String paramString, float[] paramArrayOfFloat)
  {
    ObjectAnimator localObjectAnimator = new ObjectAnimator(paramObject, paramString);
    localObjectAnimator.setFloatValues(paramArrayOfFloat);
    return localObjectAnimator;
  }

  public static ObjectAnimator ofInt(Object paramObject, String paramString, int[] paramArrayOfInt)
  {
    ObjectAnimator localObjectAnimator = new ObjectAnimator(paramObject, paramString);
    localObjectAnimator.setIntValues(paramArrayOfInt);
    return localObjectAnimator;
  }

  public static ObjectAnimator ofObject(Object paramObject, String paramString, TypeEvaluator paramTypeEvaluator, Object[] paramArrayOfObject)
  {
    ObjectAnimator localObjectAnimator = new ObjectAnimator(paramObject, paramString);
    localObjectAnimator.setObjectValues(paramArrayOfObject);
    localObjectAnimator.setEvaluator(paramTypeEvaluator);
    return localObjectAnimator;
  }

  public static ObjectAnimator ofPropertyValuesHolder(Object paramObject, PropertyValuesHolder[] paramArrayOfPropertyValuesHolder)
  {
    ObjectAnimator localObjectAnimator = new ObjectAnimator();
    localObjectAnimator.mTarget = paramObject;
    localObjectAnimator.setValues(paramArrayOfPropertyValuesHolder);
    return localObjectAnimator;
  }

  void animateValue(float paramFloat)
  {
    super.animateValue(paramFloat);
    int i = this.mValues.length;
    for (int j = 0; j < i; j++)
      this.mValues[j].setAnimatedValue(this.mTarget);
  }

  public ObjectAnimator clone()
  {
    return (ObjectAnimator)super.clone();
  }

  public String getPropertyName()
  {
    return this.mPropertyName;
  }

  public Object getTarget()
  {
    return this.mTarget;
  }

  void initAnimation()
  {
    if (!this.mInitialized)
    {
      int i = this.mValues.length;
      for (int j = 0; j < i; j++)
        this.mValues[j].setupSetterAndGetter(this.mTarget);
      super.initAnimation();
    }
  }

  public ObjectAnimator setDuration(long paramLong)
  {
    super.setDuration(paramLong);
    return this;
  }

  public void setFloatValues(float[] paramArrayOfFloat)
  {
    if ((this.mValues == null) || (this.mValues.length == 0))
    {
      PropertyValuesHolder[] arrayOfPropertyValuesHolder = new PropertyValuesHolder[1];
      arrayOfPropertyValuesHolder[0] = PropertyValuesHolder.ofFloat(this.mPropertyName, paramArrayOfFloat);
      setValues(arrayOfPropertyValuesHolder);
    }
    while (true)
    {
      return;
      super.setFloatValues(paramArrayOfFloat);
    }
  }

  public void setIntValues(int[] paramArrayOfInt)
  {
    if ((this.mValues == null) || (this.mValues.length == 0))
    {
      PropertyValuesHolder[] arrayOfPropertyValuesHolder = new PropertyValuesHolder[1];
      arrayOfPropertyValuesHolder[0] = PropertyValuesHolder.ofInt(this.mPropertyName, paramArrayOfInt);
      setValues(arrayOfPropertyValuesHolder);
    }
    while (true)
    {
      return;
      super.setIntValues(paramArrayOfInt);
    }
  }

  public void setObjectValues(Object[] paramArrayOfObject)
  {
    if ((this.mValues == null) || (this.mValues.length == 0))
    {
      PropertyValuesHolder[] arrayOfPropertyValuesHolder = new PropertyValuesHolder[1];
      arrayOfPropertyValuesHolder[0] = PropertyValuesHolder.ofObject(this.mPropertyName, (TypeEvaluator)null, paramArrayOfObject);
      setValues(arrayOfPropertyValuesHolder);
    }
    while (true)
    {
      return;
      super.setObjectValues(paramArrayOfObject);
    }
  }

  public void setPropertyName(String paramString)
  {
    if (this.mValues != null)
    {
      PropertyValuesHolder localPropertyValuesHolder = this.mValues[0];
      String str = localPropertyValuesHolder.getPropertyName();
      localPropertyValuesHolder.setPropertyName(paramString);
      this.mValuesMap.remove(str);
      this.mValuesMap.put(paramString, localPropertyValuesHolder);
    }
    this.mPropertyName = paramString;
    this.mInitialized = false;
  }

  public void setTarget(Object paramObject)
  {
    if (this.mTarget != paramObject)
    {
      Object localObject = this.mTarget;
      this.mTarget = paramObject;
      if ((localObject == null) || (paramObject == null) || (localObject.getClass() != paramObject.getClass()))
        break label38;
    }
    while (true)
    {
      return;
      label38: this.mInitialized = false;
    }
  }

  public void setupEndValues()
  {
    initAnimation();
    int i = this.mValues.length;
    for (int j = 0; j < i; j++)
      this.mValues[j].setupEndValue(this.mTarget);
  }

  public void setupStartValues()
  {
    initAnimation();
    int i = this.mValues.length;
    for (int j = 0; j < i; j++)
      this.mValues[j].setupStartValue(this.mTarget);
  }

  public void start()
  {
    super.start();
  }

  public String toString()
  {
    String str = "ObjectAnimator@" + Integer.toHexString(hashCode()) + ", target " + this.mTarget;
    if (this.mValues != null)
      for (int i = 0; i < this.mValues.length; i++)
        str = str + "\n    " + this.mValues[i].toString();
    return str;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.ObjectAnimator
 * JD-Core Version:    0.6.2
 */