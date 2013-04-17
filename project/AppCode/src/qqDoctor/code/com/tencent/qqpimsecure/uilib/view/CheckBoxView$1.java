package com.tencent.qqpimsecure.uilib.view;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class CheckBoxView$1
  implements Animation.AnimationListener
{
  CheckBoxView$1(CheckBoxView paramCheckBoxView)
  {
  }

  public void onAnimationEnd(Animation paramAnimation)
  {
    CheckBoxView.access$002(this.this$0, false);
  }

  public void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public void onAnimationStart(Animation paramAnimation)
  {
    CheckBoxView.access$002(this.this$0, true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.CheckBoxView.1
 * JD-Core Version:    0.6.2
 */