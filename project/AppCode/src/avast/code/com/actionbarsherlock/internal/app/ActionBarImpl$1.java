package com.actionbarsherlock.internal.app;

import com.actionbarsherlock.internal.nineoldandroids.animation.Animator;
import com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorListenerAdapter;
import com.actionbarsherlock.internal.nineoldandroids.widget.NineFrameLayout;
import com.actionbarsherlock.internal.widget.ActionBarContainer;

class ActionBarImpl$1 extends AnimatorListenerAdapter
{
  ActionBarImpl$1(ActionBarImpl paramActionBarImpl)
  {
  }

  public void onAnimationEnd(Animator paramAnimator)
  {
    if (ActionBarImpl.access$000(this.this$0) != null)
    {
      ActionBarImpl.access$000(this.this$0).setTranslationY(0.0F);
      ActionBarImpl.access$100(this.this$0).setTranslationY(0.0F);
    }
    if ((ActionBarImpl.access$200(this.this$0) != null) && (ActionBarImpl.access$300(this.this$0) == 1))
      ActionBarImpl.access$200(this.this$0).setVisibility(8);
    ActionBarImpl.access$100(this.this$0).setVisibility(8);
    ActionBarImpl.access$100(this.this$0).setTransitioning(false);
    ActionBarImpl.access$402(this.this$0, null);
    this.this$0.completeDeferredDestroyActionMode();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.app.ActionBarImpl.1
 * JD-Core Version:    0.6.2
 */