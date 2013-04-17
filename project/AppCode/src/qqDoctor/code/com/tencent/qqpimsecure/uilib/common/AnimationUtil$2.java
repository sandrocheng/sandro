package com.tencent.qqpimsecure.uilib.common;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

final class AnimationUtil$2 extends Animation
{
  private int initialHeight = 0;

  AnimationUtil$2(boolean paramBoolean, int paramInt1, int paramInt2, View paramView, Context paramContext)
  {
  }

  protected final void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    if (this.val$isExpanded);
    for (int i = this.val$fromHeight + (int)(paramFloat * this.initialHeight); ; i = this.val$toHeight + (int)(this.initialHeight * (1.0F - paramFloat)))
    {
      this.val$view.getLayoutParams().height = i;
      this.val$view.requestLayout();
      return;
    }
  }

  public final void initialize(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.initialize(paramInt1, paramInt2, paramInt3, paramInt4);
    this.initialHeight = (paramInt2 + (int)(0.5F + 10.0F * this.val$context.getResources().getDisplayMetrics().density));
  }

  public final boolean willChangeBounds()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.common.AnimationUtil.2
 * JD-Core Version:    0.6.2
 */