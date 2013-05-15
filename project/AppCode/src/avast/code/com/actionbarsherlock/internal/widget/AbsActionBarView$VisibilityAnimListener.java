package com.actionbarsherlock.internal.widget;

import com.actionbarsherlock.internal.nineoldandroids.animation.Animator;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator.AnimatorListener;
import com.actionbarsherlock.internal.view.menu.ActionMenuView;

public class AbsActionBarView$VisibilityAnimListener
  implements Animator.AnimatorListener
{
  private boolean mCanceled = false;
  int mFinalVisibility;

  protected AbsActionBarView$VisibilityAnimListener(AbsActionBarView paramAbsActionBarView)
  {
  }

  public void onAnimationCancel(Animator paramAnimator)
  {
    this.mCanceled = true;
  }

  public void onAnimationEnd(Animator paramAnimator)
  {
    if (this.mCanceled);
    while (true)
    {
      return;
      this.this$0.mVisibilityAnim = null;
      this.this$0.setVisibility(this.mFinalVisibility);
      if ((this.this$0.mSplitView != null) && (this.this$0.mMenuView != null))
        this.this$0.mMenuView.setVisibility(this.mFinalVisibility);
    }
  }

  public void onAnimationRepeat(Animator paramAnimator)
  {
  }

  public void onAnimationStart(Animator paramAnimator)
  {
    this.this$0.setVisibility(0);
    this.this$0.mVisibilityAnim = paramAnimator;
    this.mCanceled = false;
  }

  public VisibilityAnimListener withFinalVisibility(int paramInt)
  {
    this.mFinalVisibility = paramInt;
    return this;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.AbsActionBarView.VisibilityAnimListener
 * JD-Core Version:    0.6.2
 */