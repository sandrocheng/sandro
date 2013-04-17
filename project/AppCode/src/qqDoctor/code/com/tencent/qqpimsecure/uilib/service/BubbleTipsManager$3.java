package com.tencent.qqpimsecure.uilib.service;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.PopupWindow;

class BubbleTipsManager$3
  implements Animation.AnimationListener
{
  BubbleTipsManager$3(BubbleTipsManager paramBubbleTipsManager)
  {
  }

  public void onAnimationEnd(Animation paramAnimation)
  {
    BubbleTipsManager.access$1300(this.this$0).dismiss();
    BubbleTipsManager.access$1300(this.this$0).setFocusable(false);
  }

  public void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.service.BubbleTipsManager.3
 * JD-Core Version:    0.6.2
 */