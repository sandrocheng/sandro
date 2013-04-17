package com.tencent.powermanager.uilib.view;

import a.a;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.powermanager.PowerManagerApplication;

public class BatteryLevelScreenView extends LinearLayout
{
  private ImageView a;
  private int b;
  private ImageView c;
  private int d;
  private int e;
  private Animation f = null;
  private int g;
  private String h;

  public BatteryLevelScreenView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.h = paramContext.obtainStyledAttributes(paramAttributeSet, a.a.BatteryLevelScreenView).getString(0);
    LayoutInflater localLayoutInflater = LayoutInflater.from(paramContext);
    if (this.h.equals("land"));
    for (View localView = localLayoutInflater.inflate(2130903064, null); ; localView = localLayoutInflater.inflate(2130903063, null))
    {
      addView(localView, new LinearLayout.LayoutParams(-1, -2));
      this.c = ((ImageView)findViewById(2131230803));
      this.a = ((ImageView)findViewById(2131230804));
      return;
    }
  }

  private void c()
  {
    this.f = new TranslateAnimation(0.0F, 0.0F, this.b, -this.e - this.b);
    this.f.setDuration(5000L);
    this.f.setRepeatMode(1);
    this.f.setRepeatCount(-1);
    this.a.startAnimation(this.f);
  }

  public final void a()
  {
    c();
  }

  public final void b()
  {
    this.a.clearAnimation();
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    paramCanvas.clipRect(0, this.d - this.e, getWidth(), this.d);
    paramCanvas.save();
    super.dispatchDraw(paramCanvas);
    if (this.b == 0)
      this.b = this.a.getHeight();
    if (this.d == 0)
    {
      this.d = this.c.getHeight();
      setBatteryLevel(this.g);
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.b == 0)
      this.b = this.a.getHeight();
    if (this.d == 0)
    {
      this.d = this.c.getHeight();
      setBatteryLevel(this.g);
    }
    super.onMeasure(paramInt1, paramInt2);
  }

  public void setBatteryBgImage(int paramInt)
  {
    findViewById(2131230803).setBackgroundDrawable(PowerManagerApplication.a().getResources().getDrawable(paramInt));
  }

  public void setBatteryLevel(int paramInt)
  {
    this.g = paramInt;
    if (this.d == 0)
      postInvalidate();
    while (true)
    {
      return;
      this.e = (paramInt * this.d / 100);
      postInvalidate();
      this.a.clearAnimation();
      c();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.view.BatteryLevelScreenView
 * JD-Core Version:    0.6.2
 */