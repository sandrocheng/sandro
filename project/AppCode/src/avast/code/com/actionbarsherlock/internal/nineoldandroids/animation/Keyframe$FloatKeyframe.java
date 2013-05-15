package com.actionbarsherlock.internal.nineoldandroids.animation;

class Keyframe$FloatKeyframe extends Keyframe
{
  float mValue;

  Keyframe$FloatKeyframe(float paramFloat)
  {
    this.mFraction = paramFloat;
    this.mValueType = Float.TYPE;
  }

  Keyframe$FloatKeyframe(float paramFloat1, float paramFloat2)
  {
    this.mFraction = paramFloat1;
    this.mValue = paramFloat2;
    this.mValueType = Float.TYPE;
    this.mHasValue = true;
  }

  public FloatKeyframe clone()
  {
    FloatKeyframe localFloatKeyframe = new FloatKeyframe(getFraction(), this.mValue);
    localFloatKeyframe.setInterpolator(getInterpolator());
    return localFloatKeyframe;
  }

  public float getFloatValue()
  {
    return this.mValue;
  }

  public Object getValue()
  {
    return Float.valueOf(this.mValue);
  }

  public void setValue(Object paramObject)
  {
    if ((paramObject != null) && (paramObject.getClass() == Float.class))
    {
      this.mValue = ((Float)paramObject).floatValue();
      this.mHasValue = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.Keyframe.FloatKeyframe
 * JD-Core Version:    0.6.2
 */