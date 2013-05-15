package com.actionbarsherlock.internal.nineoldandroids.animation;

import java.util.ArrayList;

class AnimatorSet$Node
  implements Cloneable
{
  public Animator animation;
  public ArrayList dependencies = null;
  public boolean done = false;
  public ArrayList nodeDependencies = null;
  public ArrayList nodeDependents = null;
  public ArrayList tmpDependencies = null;

  public AnimatorSet$Node(Animator paramAnimator)
  {
    this.animation = paramAnimator;
  }

  public void addDependency(AnimatorSet.Dependency paramDependency)
  {
    if (this.dependencies == null)
    {
      this.dependencies = new ArrayList();
      this.nodeDependencies = new ArrayList();
    }
    this.dependencies.add(paramDependency);
    if (!this.nodeDependencies.contains(paramDependency.node))
      this.nodeDependencies.add(paramDependency.node);
    Node localNode = paramDependency.node;
    if (localNode.nodeDependents == null)
      localNode.nodeDependents = new ArrayList();
    localNode.nodeDependents.add(this);
  }

  public Node clone()
  {
    try
    {
      Node localNode = (Node)super.clone();
      localNode.animation = this.animation.clone();
      return localNode;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
    }
    throw new AssertionError();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet.Node
 * JD-Core Version:    0.6.2
 */