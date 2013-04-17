package com.tencent.powermanager.uilib.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.WindowManager.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import com.tencent.powermanager.PowerManagerApplication;
import dv;

public class CircleBatteryLevelView extends LinearLayout
{
  private ImageView a;
  private Animation b = null;
  private final int c = (int)(0.5F + 27.0F * PowerManagerApplication.a().getResources().getDisplayMetrics().density);
  private final int d = -(int)(0.5F + 40.5F * PowerManagerApplication.a().getResources().getDisplayMetrics().density);
  private int e;
  private int f;
  private int g;
  private int h;

  public CircleBatteryLevelView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }

  public CircleBatteryLevelView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }

  private void a(Context paramContext)
  {
    this.a = new ImageView(paramContext);
    this.a.setImageResource(2130837740);
    this.a.setScaleType(ImageView.ScaleType.FIT_XY);
    addView(this.a);
    WindowManager.LayoutParams localLayoutParams = new WindowManager.LayoutParams();
    localLayoutParams.flags = (0x200 | localLayoutParams.flags);
    setLayoutParams(localLayoutParams);
    Drawable localDrawable = paramContext.getResources().getDrawable(2130837738);
    int i = localDrawable.getIntrinsicHeight();
    int j = localDrawable.getIntrinsicWidth();
    this.e = ((int)(0.28D * j));
    this.h = ((int)(0.72F * j));
    this.f = ((int)(0.2675F * i));
    this.g = ((int)(0.77F * i));
  }

  public final void a()
  {
    this.b = new TranslateAnimation(0.0F, this.h - this.e - (dv.a() - this.e), 0.0F, 0.0F);
    this.b.setDuration(3000L);
    this.b.setFillAfter(true);
    this.b.setInterpolator(new DecelerateInterpolator());
    this.a.startAnimation(this.b);
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    paramCanvas.save();
    paramCanvas.clipRect(this.e, this.f, this.h, this.g);
    super.dispatchDraw(paramCanvas);
    paramCanvas.restore();
  }

  public void setBatteryLevel(int paramInt)
  {
    int i = (this.c - this.d) * (100 - paramInt) / 100 + this.d;
    this.a.setPadding(0, i, 0, 0);
    postInvalidate();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.view.CircleBatteryLevelView
 * JD-Core Version:    0.6.2
 */