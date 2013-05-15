package com.actionbarsherlock.internal.nineoldandroids.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.actionbarsherlock.internal.nineoldandroids.view.animation.AnimatorProxy;

public class NineFrameLayout extends FrameLayout
{
  private final AnimatorProxy mProxy;

  public NineFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (AnimatorProxy.NEEDS_PROXY);
    for (AnimatorProxy localAnimatorProxy = AnimatorProxy.wrap(this); ; localAnimatorProxy = null)
    {
      this.mProxy = localAnimatorProxy;
      return;
    }
  }

  public float getAlpha()
  {
    if (AnimatorProxy.NEEDS_PROXY);
    for (float f = this.mProxy.getAlpha(); ; f = super.getAlpha())
      return f;
  }

  public float getTranslationY()
  {
    if (AnimatorProxy.NEEDS_PROXY);
    for (float f = this.mProxy.getTranslationY(); ; f = super.getTranslationY())
      return f;
  }

  public void setAlpha(float paramFloat)
  {
    if (AnimatorProxy.NEEDS_PROXY)
      this.mProxy.setAlpha(paramFloat);
    while (true)
    {
      return;
      super.setAlpha(paramFloat);
    }
  }

  public void setTranslationY(float paramFloat)
  {
    if (AnimatorProxy.NEEDS_PROXY)
      this.mProxy.setTranslationY(paramFloat);
    while (true)
    {
      return;
      super.setTranslationY(paramFloat);
    }
  }

  public void setVisibility(int paramInt)
  {
    if (this.mProxy != null)
    {
      if (paramInt != 8)
        break label23;
      clearAnimation();
    }
    while (true)
    {
      super.setVisibility(paramInt);
      return;
      label23: if (paramInt == 0)
        setAnimation(this.mProxy);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.widget.NineFrameLayout
 * JD-Core Version:    0.6.2
 */