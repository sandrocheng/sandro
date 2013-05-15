package com.avast.android.generic.ui.a;

import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;

public class a extends Animation
{
  private static final Interpolator a = new AccelerateInterpolator();
  private static final Interpolator b = new AccelerateInterpolator();
  private final View c;
  private final int d;
  private int e = -1;
  private boolean f;

  public a(View paramView)
  {
    this.c = paramView;
    this.c.getLayoutParams().height = 0;
    this.d = 0;
    this.e = -1;
    setDuration(300L);
    setFillBefore(true);
    setFillAfter(true);
    setFillEnabled(true);
    a(false);
  }

  public void a(boolean paramBoolean)
  {
    this.f = paramBoolean;
    if (paramBoolean)
      setInterpolator(b);
    while (true)
    {
      return;
      setInterpolator(a);
    }
  }

  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    if (!this.f);
    for (int i = (int)(paramFloat * (this.e - this.d) + this.d); ; i = (int)((this.e - this.d) * (1.0F - paramFloat) + this.d))
    {
      if (this.c.getLayoutParams().height != i)
      {
        this.c.getLayoutParams().height = i;
        this.c.requestLayout();
      }
      return;
    }
  }

  public void initialize(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.e < 0)
    {
      this.c.measure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), View.MeasureSpec.makeMeasureSpec(2147483647, -2147483648));
      this.e = this.c.getMeasuredHeight();
      this.c.getLayoutParams().height = 0;
    }
    super.initialize(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public boolean willChangeBounds()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.a.a
 * JD-Core Version:    0.6.2
 */