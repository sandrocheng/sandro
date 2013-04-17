package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;

class SuspendWhirlPoolView$2
  implements Animation.AnimationListener
{
  SuspendWhirlPoolView$2(SuspendWhirlPoolView paramSuspendWhirlPoolView)
  {
  }

  public void onAnimationEnd(Animation paramAnimation)
  {
    SuspendWhirlPoolView.access$100(this.this$0).setVisibility(0);
    SuspendWhirlPoolView.access$200(this.this$0).setVisibility(0);
    SuspendWhirlPoolView.access$300(this.this$0);
  }

  public void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.SuspendWhirlPoolView.2
 * JD-Core Version:    0.6.2
 */