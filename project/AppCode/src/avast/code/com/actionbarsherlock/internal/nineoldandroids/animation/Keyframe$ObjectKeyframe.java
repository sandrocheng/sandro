package com.actionbarsherlock.internal.nineoldandroids.animation;

class Keyframe$ObjectKeyframe extends Keyframe
{
  Object mValue;

  Keyframe$ObjectKeyframe(float paramFloat, Object paramObject)
  {
    this.mFraction = paramFloat;
    this.mValue = paramObject;
    boolean bool;
    if (paramObject != null)
    {
      bool = true;
      this.mHasValue = bool;
      if (!this.mHasValue)
        break label50;
    }
    label50: for (Object localObject = paramObject.getClass(); ; localObject = Object.class)
    {
      this.mValueType = ((Class)localObject);
      return;
      bool = false;
      break;
    }
  }

  public ObjectKeyframe clone()
  {
    ObjectKeyframe localObjectKeyframe = new ObjectKeyframe(getFraction(), this.mValue);
    localObjectKeyframe.setInterpolator(getInterpolator());
    return localObjectKeyframe;
  }

  public Object getValue()
  {
    return this.mValue;
  }

  public void setValue(Object paramObject)
  {
    this.mValue = paramObject;
    if (paramObject != null);
    for (boolean bool = true; ; bool = false)
    {
      this.mHasValue = bool;
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.Keyframe.ObjectKeyframe
 * JD-Core Version:    0.6.2
 */