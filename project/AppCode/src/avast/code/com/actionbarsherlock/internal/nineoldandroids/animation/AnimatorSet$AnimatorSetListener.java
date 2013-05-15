package com.actionbarsherlock.internal.nineoldandroids.animation;

import java.util.ArrayList;
import java.util.HashMap;

class AnimatorSet$AnimatorSetListener
  implements Animator.AnimatorListener
{
  private AnimatorSet mAnimatorSet;

  AnimatorSet$AnimatorSetListener(AnimatorSet paramAnimatorSet1, AnimatorSet paramAnimatorSet2)
  {
    this.mAnimatorSet = paramAnimatorSet2;
  }

  public void onAnimationCancel(Animator paramAnimator)
  {
    if ((!this.this$0.mTerminated) && (AnimatorSet.access$000(this.this$0).size() == 0) && (this.this$0.mListeners != null))
    {
      int i = this.this$0.mListeners.size();
      for (int j = 0; j < i; j++)
        ((Animator.AnimatorListener)this.this$0.mListeners.get(j)).onAnimationCancel(this.mAnimatorSet);
    }
  }

  public void onAnimationEnd(Animator paramAnimator)
  {
    paramAnimator.removeListener(this);
    AnimatorSet.access$000(this.this$0).remove(paramAnimator);
    ((AnimatorSet.Node)AnimatorSet.access$100(this.mAnimatorSet).get(paramAnimator)).done = true;
    int j;
    if (!this.this$0.mTerminated)
    {
      ArrayList localArrayList1 = AnimatorSet.access$200(this.mAnimatorSet);
      int i = localArrayList1.size();
      j = 0;
      if (j >= i)
        break label175;
      if (((AnimatorSet.Node)localArrayList1.get(j)).done);
    }
    label175: for (int k = 0; ; k = 1)
    {
      if (k != 0)
      {
        if (this.this$0.mListeners != null)
        {
          ArrayList localArrayList2 = (ArrayList)this.this$0.mListeners.clone();
          int m = localArrayList2.size();
          int n = 0;
          while (true)
            if (n < m)
            {
              ((Animator.AnimatorListener)localArrayList2.get(n)).onAnimationEnd(this.mAnimatorSet);
              n++;
              continue;
              j++;
              break;
            }
        }
        AnimatorSet.access$302(this.mAnimatorSet, false);
      }
      return;
    }
  }

  public void onAnimationRepeat(Animator paramAnimator)
  {
  }

  public void onAnimationStart(Animator paramAnimator)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet.AnimatorSetListener
 * JD-Core Version:    0.6.2
 */