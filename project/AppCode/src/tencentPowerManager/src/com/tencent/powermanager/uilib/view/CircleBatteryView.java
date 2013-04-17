package com.tencent.powermanager.uilib.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public class CircleBatteryView extends LinearLayout
{
  private CircleBatteryLevelView a;
  private Animation b = null;
  private ImageView c;
  private int d;
  private int e;

  public CircleBatteryView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }

  public CircleBatteryView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }

  private void a(Context paramContext)
  {
    addView(LayoutInflater.from(paramContext).inflate(2130903070, null), new LinearLayout.LayoutParams(-2, -2));
    this.a = ((CircleBatteryLevelView)findViewById(2131230828));
    this.c = ((ImageView)findViewById(2131230829));
    Drawable localDrawable = paramContext.getResources().getDrawable(2130837737);
    this.d = localDrawable.getIntrinsicHeight();
    this.e = localDrawable.getIntrinsicWidth();
  }

  public final void a()
  {
    this.a.a();
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    setMeasuredDimension(this.e, this.d);
  }

  public void setBatteryLevel(int paramInt)
  {
    this.a.setBatteryLevel(paramInt);
  }

  public void setIsCharging(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.b = new AlphaAnimation(1.0F, 0.3F);
      this.b.setDuration(1200L);
      this.b.setRepeatMode(2);
      this.b.setRepeatCount(-1);
      this.c.startAnimation(this.b);
    }
    while (true)
    {
      return;
      this.c.clearAnimation();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.view.CircleBatteryView
 * JD-Core Version:    0.6.2
 */