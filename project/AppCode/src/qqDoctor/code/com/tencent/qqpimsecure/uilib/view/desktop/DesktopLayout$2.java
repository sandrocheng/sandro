package com.tencent.qqpimsecure.uilib.view.desktop;

import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.LinearLayout;
import com.tencent.qqpimsecure.uilib.ui.adapter.DesktopAdapter;

class DesktopLayout$2
  implements Animation.AnimationListener
{
  DesktopLayout$2(DesktopLayout paramDesktopLayout)
  {
  }

  public void onAnimationEnd(Animation paramAnimation)
  {
    DesktopLayout.access$200(this.this$0).clearAnimation();
    DesktopLayout.access$600(this.this$0).removeAllViews();
    DesktopLayout.access$700(this.this$0);
    ((DesktopAdapter)DesktopLayout.access$200(this.this$0).getAdapter()).notifyDataSetChanged();
    DesktopLayout.access$400(this.this$0).clearAnimation();
    ((DesktopAdapter)DesktopLayout.access$400(this.this$0).getAdapter()).notifyDataSetChanged();
    if (DesktopLayout.access$200(this.this$0).getLastSelectedView() != null)
    {
      DesktopLayout.access$800(this.this$0).removeView(DesktopLayout.access$200(this.this$0).getLastSelectedView());
      DesktopLayout.access$200(this.this$0).setLastSelectedView(null);
    }
    DesktopLayout.access$902(this.this$0, false);
  }

  public void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.desktop.DesktopLayout.2
 * JD-Core Version:    0.6.2
 */