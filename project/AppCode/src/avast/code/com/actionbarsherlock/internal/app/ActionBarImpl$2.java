package com.actionbarsherlock.internal.app;

import com.actionbarsherlock.internal.nineoldandroids.animation.Animator;
import com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorListenerAdapter;
import com.actionbarsherlock.internal.widget.ActionBarContainer;

class ActionBarImpl$2 extends AnimatorListenerAdapter
{
  ActionBarImpl$2(ActionBarImpl paramActionBarImpl)
  {
  }

  public void onAnimationEnd(Animator paramAnimator)
  {
    ActionBarImpl.access$402(this.this$0, null);
    ActionBarImpl.access$100(this.this$0).requestLayout();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.app.ActionBarImpl.2
 * JD-Core Version:    0.6.2
 */