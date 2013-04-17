package com.tencent.qqpimsecure.uilib.view;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;

class SuspendedTrafficMonitoringView$5
  implements Animation.AnimationListener
{
  SuspendedTrafficMonitoringView$5(SuspendedTrafficMonitoringView paramSuspendedTrafficMonitoringView, ImageView paramImageView, int paramInt)
  {
  }

  public void onAnimationEnd(Animation paramAnimation)
  {
    this.val$imageView.setImageResource(this.val$newDrawableResId);
    SuspendedTrafficMonitoringView.access$2000(this.this$0, this.val$imageView);
  }

  public void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public void onAnimationStart(Animation paramAnimation)
  {
    this.val$imageView.setVisibility(4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.SuspendedTrafficMonitoringView.5
 * JD-Core Version:    0.6.2
 */