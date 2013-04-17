package com.tencent.powermanager.uilib;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;

public class CircleProgressButton extends LinearLayout
{
  private CircleProgressBarView a;
  private ImageView b;

  public CircleProgressButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    addView(LayoutInflater.from(paramContext).inflate(2130903045, null));
    this.a = ((CircleProgressBarView)findViewById(2131230739));
    this.b = ((ImageView)findViewById(2131230741));
  }

  public void setActive(boolean paramBoolean)
  {
    this.a.setBackGroundVisible(paramBoolean);
    if (paramBoolean)
      this.b.setVisibility(0);
    while (true)
    {
      return;
      this.b.setVisibility(8);
    }
  }

  public void setAnimSpeedType(int paramInt)
  {
    if (this.a != null)
      this.a.setAnimationSpeed(paramInt);
  }

  public void setButtonType(int paramInt)
  {
    if (this.a == null);
    while (true)
    {
      return;
      ImageView localImageView = (ImageView)findViewById(2131230740);
      switch (paramInt)
      {
      default:
        break;
      case 1:
        localImageView.setImageResource(2130837721);
        this.a.setBackGround(2130837726);
        this.b.setImageResource(2130837732);
        this.a.setHightLightBackGround(2130837729);
        this.a.setCircleBackGround(2130837735);
        break;
      case 2:
        localImageView.setImageResource(2130837720);
        this.a.setBackGround(2130837725);
        this.b.setImageResource(2130837731);
        this.a.setHightLightBackGround(2130837728);
        this.a.setCircleBackGround(2130837734);
        break;
      case 3:
        localImageView.setImageResource(2130837719);
        this.a.setBackGround(2130837724);
        this.b.setImageResource(2130837730);
        this.a.setHightLightBackGround(2130837727);
        this.a.setCircleBackGround(2130837733);
      }
    }
  }

  public void setEnableAnimation(boolean paramBoolean)
  {
    if (this.a != null)
      this.a.setEnableAnimation(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.CircleProgressButton
 * JD-Core Version:    0.6.2
 */