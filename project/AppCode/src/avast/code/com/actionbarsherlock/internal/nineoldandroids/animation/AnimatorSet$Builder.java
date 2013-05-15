package com.actionbarsherlock.internal.nineoldandroids.animation;

import java.util.ArrayList;
import java.util.HashMap;

public class AnimatorSet$Builder
{
  private AnimatorSet.Node mCurrentNode;

  AnimatorSet$Builder(AnimatorSet paramAnimatorSet, Animator paramAnimator)
  {
    this.mCurrentNode = ((AnimatorSet.Node)AnimatorSet.access$100(paramAnimatorSet).get(paramAnimator));
    if (this.mCurrentNode == null)
    {
      this.mCurrentNode = new AnimatorSet.Node(paramAnimator);
      AnimatorSet.access$100(paramAnimatorSet).put(paramAnimator, this.mCurrentNode);
      AnimatorSet.access$400(paramAnimatorSet).add(this.mCurrentNode);
    }
  }

  public Builder after(long paramLong)
  {
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
    localValueAnimator.setDuration(paramLong);
    after(localValueAnimator);
    return this;
  }

  public Builder after(Animator paramAnimator)
  {
    AnimatorSet.Node localNode = (AnimatorSet.Node)AnimatorSet.access$100(this.this$0).get(paramAnimator);
    if (localNode == null)
    {
      localNode = new AnimatorSet.Node(paramAnimator);
      AnimatorSet.access$100(this.this$0).put(paramAnimator, localNode);
      AnimatorSet.access$400(this.this$0).add(localNode);
    }
    AnimatorSet.Dependency localDependency = new AnimatorSet.Dependency(localNode, 1);
    this.mCurrentNode.addDependency(localDependency);
    return this;
  }

  public Builder before(Animator paramAnimator)
  {
    AnimatorSet.Node localNode = (AnimatorSet.Node)AnimatorSet.access$100(this.this$0).get(paramAnimator);
    if (localNode == null)
    {
      localNode = new AnimatorSet.Node(paramAnimator);
      AnimatorSet.access$100(this.this$0).put(paramAnimator, localNode);
      AnimatorSet.access$400(this.this$0).add(localNode);
    }
    localNode.addDependency(new AnimatorSet.Dependency(this.mCurrentNode, 1));
    return this;
  }

  public Builder with(Animator paramAnimator)
  {
    AnimatorSet.Node localNode = (AnimatorSet.Node)AnimatorSet.access$100(this.this$0).get(paramAnimator);
    if (localNode == null)
    {
      localNode = new AnimatorSet.Node(paramAnimator);
      AnimatorSet.access$100(this.this$0).put(paramAnimator, localNode);
      AnimatorSet.access$400(this.this$0).add(localNode);
    }
    localNode.addDependency(new AnimatorSet.Dependency(this.mCurrentNode, 0));
    return this;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet.Builder
 * JD-Core Version:    0.6.2
 */