package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.graphics.drawable.AnimationDrawable;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;

class SuspendWhirlPoolView$3
  implements Animation.AnimationListener
{
  SuspendWhirlPoolView$3(SuspendWhirlPoolView paramSuspendWhirlPoolView)
  {
  }

  public void onAnimationEnd(Animation paramAnimation)
  {
    this.this$0.stopAnimation();
  }

  public void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public void onAnimationStart(Animation paramAnimation)
  {
    if (SuspendWhirlPoolView.access$000(this.this$0).isRunning())
      SuspendWhirlPoolView.access$000(this.this$0).stop();
    SuspendWhirlPoolView.access$400(this.this$0).setVisibility(4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.SuspendWhirlPoolView.3
 * JD-Core Version:    0.6.2
 */