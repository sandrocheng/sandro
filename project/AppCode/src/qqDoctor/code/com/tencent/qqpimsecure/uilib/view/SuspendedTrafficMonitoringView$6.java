package com.tencent.qqpimsecure.uilib.view;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;

class SuspendedTrafficMonitoringView$6
  implements Animation.AnimationListener
{
  SuspendedTrafficMonitoringView$6(SuspendedTrafficMonitoringView paramSuspendedTrafficMonitoringView, ImageView paramImageView)
  {
  }

  public void onAnimationEnd(Animation paramAnimation)
  {
    this.val$imageView.setVisibility(0);
    SuspendedTrafficMonitoringView.access$1002(this.this$0, false);
  }

  public void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.SuspendedTrafficMonitoringView.6
 * JD-Core Version:    0.6.2
 */