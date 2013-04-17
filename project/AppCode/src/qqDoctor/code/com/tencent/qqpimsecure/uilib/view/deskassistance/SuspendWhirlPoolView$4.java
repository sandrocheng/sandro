package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.graphics.drawable.AnimationDrawable;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;

class SuspendWhirlPoolView$4
  implements Animation.AnimationListener
{
  SuspendWhirlPoolView$4(SuspendWhirlPoolView paramSuspendWhirlPoolView)
  {
  }

  public void onAnimationEnd(Animation paramAnimation)
  {
    SuspendWhirlPoolView.access$500(this.this$0);
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
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.SuspendWhirlPoolView.4
 * JD-Core Version:    0.6.2
 */