package com.tencent.qqpimsecure.uilib.view.desktop;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.BaseAdapter;

class DesktopView$2
  implements Animation.AnimationListener
{
  DesktopView$2(DesktopView paramDesktopView)
  {
  }

  public void onAnimationEnd(Animation paramAnimation)
  {
    DesktopView.access$010(this.this$0);
    if (DesktopView.access$000(this.this$0) == 0)
    {
      this.this$0.clearAnimation();
      if (DesktopView.access$100(this.this$0) != null)
        DesktopView.access$100(this.this$0).positionChange(DesktopView.access$200(this.this$0), DesktopView.access$300(this.this$0));
      DesktopView.access$202(this.this$0, DesktopView.access$300(this.this$0));
      ((BaseAdapter)this.this$0.getAdapter()).notifyDataSetChanged();
      if (!DesktopView.access$400(this.this$0))
      {
        DesktopView.access$202(this.this$0, 99);
        DesktopView.access$302(this.this$0, 99);
      }
      DesktopView.access$502(this.this$0, false);
    }
  }

  public void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.desktop.DesktopView.2
 * JD-Core Version:    0.6.2
 */