package com.tencent.powermanager.uilib;

import a;
import android.content.Context;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.lang.reflect.Field;

public class CircleProgressBarView extends LinearLayout
{
  private ImageView a = null;
  private ImageView b = null;
  private ImageView c;
  private int d;

  public CircleProgressBarView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    addView(LayoutInflater.from(paramContext).inflate(2130903044, null));
    try
    {
      Class localClass = Class.forName("android.view.View");
      Field localField = localClass.getDeclaredField("LAYER_TYPE_SOFTWARE");
      localField.setAccessible(true);
      int i = ((Integer)localField.get(localClass)).intValue();
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = Integer.TYPE;
      arrayOfClass[1] = Paint.class;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(i);
      arrayOfObject[1] = null;
      a.a(this, "setLayerType", arrayOfClass, arrayOfObject);
      label117: this.b = ((ImageView)findViewById(2131230737));
      this.a = ((ImageView)findViewById(2131230738));
      this.c = ((ImageView)findViewById(2131230736));
      return;
    }
    catch (Exception localException)
    {
      break label117;
    }
  }

  public void setAnimationSpeed(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      this.d = 750;
      continue;
      this.d = 1000;
      continue;
      this.d = 1500;
    }
  }

  public void setBackGround(int paramInt)
  {
    this.b.setBackgroundResource(paramInt);
  }

  public void setBackGroundVisible(boolean paramBoolean)
  {
    if (paramBoolean)
      this.b.setVisibility(0);
    while (true)
    {
      return;
      this.b.setVisibility(8);
    }
  }

  public void setCircleBackGround(int paramInt)
  {
    this.c.setImageResource(paramInt);
  }

  public void setEnableAnimation(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      this.a.clearAnimation();
      this.a.setVisibility(8);
    }
    while (true)
    {
      return;
      this.a.setVisibility(0);
      RotateAnimation localRotateAnimation = new RotateAnimation(0.0F, 359.0F, 1, 0.5F, 1, 0.5F);
      localRotateAnimation.setDuration(this.d);
      localRotateAnimation.setRepeatCount(-1);
      localRotateAnimation.setInterpolator(new LinearInterpolator());
      this.a.startAnimation(localRotateAnimation);
    }
  }

  public void setHightLightBackGround(int paramInt)
  {
    this.a.setImageResource(paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.CircleProgressBarView
 * JD-Core Version:    0.6.2
 */