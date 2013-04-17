package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import dp;

public class CheckBoxView extends RelativeLayout
  implements View.OnClickListener
{
  public static final int CHECKBOX_RADIO_STYLE = 2;
  public static final int CHECKBOX_SLEEK_STYLE = 0;
  public static final int CHECKBOX_TICK_STYLE = 1;
  public static final int CHECKBOX_TRANSPARENT_STYLE = 3;
  private View.OnClickListener clickListener = null;
  private float mAnimationOffset = 0.0F;
  private boolean mChecked = false;
  private Context mContext;
  private boolean mDoingAnim = false;
  private ImageView mImage_Sleek_bg = null;
  private ImageView mImage_Sleek_switch = null;
  private ImageView mImage_Tick = null;
  private ImageView mRadioButton = null;
  private int mType = 0;

  public CheckBoxView(Context paramContext, int paramInt)
  {
    super(paramContext);
    setOnClickListener(this);
    this.mType = paramInt;
    this.mContext = paramContext;
    initImage(this.mContext, paramInt);
  }

  public CheckBoxView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setOnClickListener(this);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, dp.CheckBoxView);
    int i = localTypedArray.getInteger(0, 0);
    this.mType = i;
    this.mContext = paramContext;
    initImage(this.mContext, i);
    localTypedArray.recycle();
  }

  private void initImage(Context paramContext, int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      this.mImage_Sleek_bg = new ImageView(paramContext);
      this.mImage_Sleek_switch = new ImageView(paramContext);
      this.mImage_Sleek_bg.setImageResource(2130837581);
      this.mImage_Sleek_bg.setId(100);
      this.mImage_Sleek_switch.setImageResource(2130837589);
      this.mImage_Sleek_switch.setId(101);
      RelativeLayout.LayoutParams localLayoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
      RelativeLayout.LayoutParams localLayoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams5.addRule(7, this.mImage_Sleek_bg.getId());
      addView(this.mImage_Sleek_bg, localLayoutParams4);
      addView(this.mImage_Sleek_switch, localLayoutParams5);
      continue;
      this.mImage_Tick = new ImageView(paramContext);
      this.mImage_Tick.setImageResource(2130837585);
      RelativeLayout.LayoutParams localLayoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
      addView(this.mImage_Tick, localLayoutParams3);
      continue;
      this.mRadioButton = new ImageView(paramContext);
      this.mRadioButton.setImageResource(2130838190);
      RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
      addView(this.mRadioButton, localLayoutParams2);
      continue;
      this.mImage_Tick = new ImageView(paramContext);
      this.mImage_Tick.setImageResource(2130838381);
      RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-2, -2);
      addView(this.mImage_Tick, localLayoutParams1);
    }
  }

  private void radioStyleClickEvent()
  {
    if (this.mChecked)
      this.mRadioButton.setImageResource(2130838190);
    while (true)
    {
      return;
      this.mRadioButton.setImageResource(2130838191);
    }
  }

  private void sleekStyleClickEvent()
  {
    if (this.mChecked);
    for (TranslateAnimation localTranslateAnimation = new TranslateAnimation(2, -0.48F + this.mAnimationOffset, 2, 0.0F + this.mAnimationOffset, 2, 0.0F, 2, 0.0F); ; localTranslateAnimation = new TranslateAnimation(2, 0.0F + this.mAnimationOffset, 2, -0.48F + this.mAnimationOffset, 2, 0.0F, 2, 0.0F))
    {
      localTranslateAnimation.setDuration(100L);
      localTranslateAnimation.setFillAfter(true);
      localTranslateAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
      localTranslateAnimation.setAnimationListener(new CheckBoxView.1(this));
      this.mImage_Sleek_switch.startAnimation(localTranslateAnimation);
      return;
    }
  }

  private void tickStyleClickEvent()
  {
    if (this.mChecked)
      this.mImage_Tick.setImageResource(2130837585);
    while (true)
    {
      return;
      this.mImage_Tick.setImageResource(2130837587);
    }
  }

  private void transparentStyleClickEvent()
  {
    if (this.mChecked)
      this.mImage_Tick.setImageResource(2130838100);
    while (true)
    {
      return;
      this.mImage_Tick.setImageResource(2130838381);
    }
  }

  public boolean getChecked()
  {
    return this.mChecked;
  }

  public void onClick(View paramView)
  {
    if (this.mDoingAnim)
      return;
    switch (this.mType)
    {
    default:
      label44: if (this.mChecked)
        break;
    case 0:
    case 1:
    case 2:
    case 3:
    }
    for (boolean bool = true; ; bool = false)
    {
      this.mChecked = bool;
      if (this.clickListener == null)
        break;
      this.clickListener.onClick(paramView);
      break;
      sleekStyleClickEvent();
      break label44;
      if (this.mChecked)
      {
        this.mImage_Tick.setImageResource(2130837585);
        break label44;
      }
      this.mImage_Tick.setImageResource(2130837587);
      break label44;
      if (this.mChecked)
      {
        this.mRadioButton.setImageResource(2130838190);
        break label44;
      }
      this.mRadioButton.setImageResource(2130838191);
      break label44;
      if (this.mChecked)
      {
        this.mImage_Tick.setImageResource(2130838100);
        break label44;
      }
      this.mImage_Tick.setImageResource(2130838381);
      break label44;
    }
  }

  public void setBackGroundRes(int paramInt)
  {
    if (this.mImage_Sleek_bg != null)
      this.mImage_Sleek_bg.setImageResource(paramInt);
  }

  public void setCheckBoxType(int paramInt)
  {
    removeView(this.mImage_Tick);
    this.mImage_Tick = null;
    this.mType = paramInt;
    initImage(this.mContext, this.mType);
  }

  public void setChecked(boolean paramBoolean)
  {
    while (true)
    {
      RelativeLayout.LayoutParams localLayoutParams;
      try
      {
        this.mChecked = paramBoolean;
        int i = this.mType;
        switch (i)
        {
        default:
          return;
        case 0:
          removeView(this.mImage_Sleek_switch);
          localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
          if (paramBoolean)
          {
            localLayoutParams.addRule(5, this.mImage_Sleek_bg.getId());
            this.mAnimationOffset = 0.48F;
            addView(this.mImage_Sleek_switch, localLayoutParams);
            continue;
          }
          break;
        case 1:
        case 2:
        case 3:
        }
      }
      finally
      {
      }
      localLayoutParams.addRule(7, this.mImage_Sleek_bg.getId());
      this.mAnimationOffset = 0.0F;
      continue;
      if (this.mChecked)
      {
        this.mImage_Tick.setImageResource(2130837587);
      }
      else
      {
        this.mImage_Tick.setImageResource(2130837585);
        continue;
        if (this.mChecked)
        {
          this.mRadioButton.setImageResource(2130838191);
        }
        else
        {
          this.mRadioButton.setImageResource(2130838190);
          continue;
          if (this.mChecked)
            this.mImage_Tick.setImageResource(2130838381);
          else
            this.mImage_Tick.setImageResource(2130838100);
        }
      }
    }
  }

  public void setClickListener(View.OnClickListener paramOnClickListener)
  {
    this.clickListener = paramOnClickListener;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.CheckBoxView
 * JD-Core Version:    0.6.2
 */