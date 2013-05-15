package com.actionbarsherlock.internal.nineoldandroids.animation;

import java.util.ArrayList;

class AnimatorSet$DependencyListener
  implements Animator.AnimatorListener
{
  private AnimatorSet mAnimatorSet;
  private AnimatorSet.Node mNode;
  private int mRule;

  public AnimatorSet$DependencyListener(AnimatorSet paramAnimatorSet, AnimatorSet.Node paramNode, int paramInt)
  {
    this.mAnimatorSet = paramAnimatorSet;
    this.mNode = paramNode;
    this.mRule = paramInt;
  }

  private void startIfReady(Animator paramAnimator)
  {
    if (this.mAnimatorSet.mTerminated)
      return;
    int i = this.mNode.tmpDependencies.size();
    int j = 0;
    label24: AnimatorSet.Dependency localDependency;
    if (j < i)
    {
      localDependency = (AnimatorSet.Dependency)this.mNode.tmpDependencies.get(j);
      if ((localDependency.rule == this.mRule) && (localDependency.node.animation == paramAnimator))
        paramAnimator.removeListener(this);
    }
    while (true)
    {
      this.mNode.tmpDependencies.remove(localDependency);
      if (this.mNode.tmpDependencies.size() != 0)
        break;
      this.mNode.animation.start();
      AnimatorSet.access$000(this.mAnimatorSet).add(this.mNode.animation);
      break;
      j++;
      break label24;
      localDependency = null;
    }
  }

  public void onAnimationCancel(Animator paramAnimator)
  {
  }

  public void onAnimationEnd(Animator paramAnimator)
  {
    if (this.mRule == 1)
      startIfReady(paramAnimator);
  }

  public void onAnimationRepeat(Animator paramAnimator)
  {
  }

  public void onAnimationStart(Animator paramAnimator)
  {
    if (this.mRule == 0)
      startIfReady(paramAnimator);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet.DependencyListener
 * JD-Core Version:    0.6.2
 */