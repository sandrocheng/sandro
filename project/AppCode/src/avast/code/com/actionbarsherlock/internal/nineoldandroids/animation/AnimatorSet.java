package com.actionbarsherlock.internal.nineoldandroids.animation;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class AnimatorSet extends Animator
{
  private ValueAnimator mDelayAnim = null;
  private long mDuration = -1L;
  private boolean mNeedsSort = true;
  private HashMap mNodeMap = new HashMap();
  private ArrayList mNodes = new ArrayList();
  private ArrayList mPlayingSet = new ArrayList();
  private AnimatorSet.AnimatorSetListener mSetListener = null;
  private ArrayList mSortedNodes = new ArrayList();
  private long mStartDelay = 0L;
  private boolean mStarted = false;
  boolean mTerminated = false;

  private void sortNodes()
  {
    if (this.mNeedsSort)
    {
      this.mSortedNodes.clear();
      ArrayList localArrayList1 = new ArrayList();
      int n = this.mNodes.size();
      for (int i1 = 0; i1 < n; i1++)
      {
        AnimatorSet.Node localNode4 = (AnimatorSet.Node)this.mNodes.get(i1);
        if ((localNode4.dependencies == null) || (localNode4.dependencies.size() == 0))
          localArrayList1.add(localNode4);
      }
      ArrayList localArrayList2 = new ArrayList();
      while (localArrayList1.size() > 0)
      {
        int i2 = localArrayList1.size();
        for (int i3 = 0; i3 < i2; i3++)
        {
          AnimatorSet.Node localNode2 = (AnimatorSet.Node)localArrayList1.get(i3);
          this.mSortedNodes.add(localNode2);
          if (localNode2.nodeDependents != null)
          {
            int i4 = localNode2.nodeDependents.size();
            for (int i5 = 0; i5 < i4; i5++)
            {
              AnimatorSet.Node localNode3 = (AnimatorSet.Node)localNode2.nodeDependents.get(i5);
              localNode3.nodeDependencies.remove(localNode2);
              if (localNode3.nodeDependencies.size() == 0)
                localArrayList2.add(localNode3);
            }
          }
        }
        localArrayList1.clear();
        localArrayList1.addAll(localArrayList2);
        localArrayList2.clear();
      }
      this.mNeedsSort = false;
      if (this.mSortedNodes.size() != this.mNodes.size())
        throw new IllegalStateException("Circular dependencies cannot exist in AnimatorSet");
    }
    else
    {
      int i = this.mNodes.size();
      for (int j = 0; j < i; j++)
      {
        AnimatorSet.Node localNode1 = (AnimatorSet.Node)this.mNodes.get(j);
        if ((localNode1.dependencies != null) && (localNode1.dependencies.size() > 0))
        {
          int k = localNode1.dependencies.size();
          for (int m = 0; m < k; m++)
          {
            AnimatorSet.Dependency localDependency = (AnimatorSet.Dependency)localNode1.dependencies.get(m);
            if (localNode1.nodeDependencies == null)
              localNode1.nodeDependencies = new ArrayList();
            if (!localNode1.nodeDependencies.contains(localDependency.node))
              localNode1.nodeDependencies.add(localDependency.node);
          }
        }
        localNode1.done = false;
      }
    }
  }

  public void cancel()
  {
    this.mTerminated = true;
    ArrayList localArrayList2;
    if (isStarted())
    {
      if (this.mListeners == null)
        break label181;
      localArrayList2 = (ArrayList)this.mListeners.clone();
      Iterator localIterator3 = localArrayList2.iterator();
      while (localIterator3.hasNext())
        ((Animator.AnimatorListener)localIterator3.next()).onAnimationCancel(this);
    }
    label181: for (ArrayList localArrayList1 = localArrayList2; ; localArrayList1 = null)
    {
      if ((this.mDelayAnim != null) && (this.mDelayAnim.isRunning()))
        this.mDelayAnim.cancel();
      while (localArrayList1 != null)
      {
        Iterator localIterator2 = localArrayList1.iterator();
        while (localIterator2.hasNext())
          ((Animator.AnimatorListener)localIterator2.next()).onAnimationEnd(this);
        if (this.mSortedNodes.size() > 0)
        {
          Iterator localIterator1 = this.mSortedNodes.iterator();
          while (localIterator1.hasNext())
            ((AnimatorSet.Node)localIterator1.next()).animation.cancel();
        }
      }
      this.mStarted = false;
      return;
    }
  }

  public AnimatorSet clone()
  {
    AnimatorSet localAnimatorSet = (AnimatorSet)super.clone();
    localAnimatorSet.mNeedsSort = true;
    localAnimatorSet.mTerminated = false;
    localAnimatorSet.mStarted = false;
    localAnimatorSet.mPlayingSet = new ArrayList();
    localAnimatorSet.mNodeMap = new HashMap();
    localAnimatorSet.mNodes = new ArrayList();
    localAnimatorSet.mSortedNodes = new ArrayList();
    HashMap localHashMap = new HashMap();
    Iterator localIterator1 = this.mNodes.iterator();
    while (localIterator1.hasNext())
    {
      AnimatorSet.Node localNode3 = (AnimatorSet.Node)localIterator1.next();
      AnimatorSet.Node localNode4 = localNode3.clone();
      localHashMap.put(localNode3, localNode4);
      localAnimatorSet.mNodes.add(localNode4);
      localAnimatorSet.mNodeMap.put(localNode4.animation, localNode4);
      localNode4.dependencies = null;
      localNode4.tmpDependencies = null;
      localNode4.nodeDependents = null;
      localNode4.nodeDependencies = null;
      ArrayList localArrayList1 = localNode4.animation.getListeners();
      if (localArrayList1 != null)
      {
        Iterator localIterator4 = localArrayList1.iterator();
        ArrayList localArrayList2 = null;
        while (localIterator4.hasNext())
        {
          Animator.AnimatorListener localAnimatorListener = (Animator.AnimatorListener)localIterator4.next();
          if ((localAnimatorListener instanceof AnimatorSet.AnimatorSetListener))
          {
            if (localArrayList2 == null)
              localArrayList2 = new ArrayList();
            localArrayList2.add(localAnimatorListener);
          }
        }
        if (localArrayList2 != null)
        {
          Iterator localIterator5 = localArrayList2.iterator();
          while (localIterator5.hasNext())
            localArrayList1.remove((Animator.AnimatorListener)localIterator5.next());
        }
      }
    }
    Iterator localIterator2 = this.mNodes.iterator();
    while (localIterator2.hasNext())
    {
      AnimatorSet.Node localNode1 = (AnimatorSet.Node)localIterator2.next();
      AnimatorSet.Node localNode2 = (AnimatorSet.Node)localHashMap.get(localNode1);
      if (localNode1.dependencies != null)
      {
        Iterator localIterator3 = localNode1.dependencies.iterator();
        while (localIterator3.hasNext())
        {
          AnimatorSet.Dependency localDependency = (AnimatorSet.Dependency)localIterator3.next();
          localNode2.addDependency(new AnimatorSet.Dependency((AnimatorSet.Node)localHashMap.get(localDependency.node), localDependency.rule));
        }
      }
    }
    return localAnimatorSet;
  }

  public void end()
  {
    this.mTerminated = true;
    if (isStarted())
    {
      if (this.mSortedNodes.size() != this.mNodes.size())
      {
        sortNodes();
        Iterator localIterator3 = this.mSortedNodes.iterator();
        while (localIterator3.hasNext())
        {
          AnimatorSet.Node localNode = (AnimatorSet.Node)localIterator3.next();
          if (this.mSetListener == null)
            this.mSetListener = new AnimatorSet.AnimatorSetListener(this, this);
          localNode.animation.addListener(this.mSetListener);
        }
      }
      if (this.mDelayAnim != null)
        this.mDelayAnim.cancel();
      if (this.mSortedNodes.size() > 0)
      {
        Iterator localIterator2 = this.mSortedNodes.iterator();
        while (localIterator2.hasNext())
          ((AnimatorSet.Node)localIterator2.next()).animation.end();
      }
      if (this.mListeners != null)
      {
        Iterator localIterator1 = ((ArrayList)this.mListeners.clone()).iterator();
        while (localIterator1.hasNext())
          ((Animator.AnimatorListener)localIterator1.next()).onAnimationEnd(this);
      }
      this.mStarted = false;
    }
  }

  public ArrayList getChildAnimations()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.mNodes.iterator();
    while (localIterator.hasNext())
      localArrayList.add(((AnimatorSet.Node)localIterator.next()).animation);
    return localArrayList;
  }

  public long getDuration()
  {
    return this.mDuration;
  }

  public long getStartDelay()
  {
    return this.mStartDelay;
  }

  public boolean isRunning()
  {
    Iterator localIterator = this.mNodes.iterator();
    do
      if (!localIterator.hasNext())
        break;
    while (!((AnimatorSet.Node)localIterator.next()).animation.isRunning());
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean isStarted()
  {
    return this.mStarted;
  }

  public AnimatorSet.Builder play(Animator paramAnimator)
  {
    if (paramAnimator != null)
      this.mNeedsSort = true;
    for (AnimatorSet.Builder localBuilder = new AnimatorSet.Builder(this, paramAnimator); ; localBuilder = null)
      return localBuilder;
  }

  public void playSequentially(List paramList)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      this.mNeedsSort = true;
      if (paramList.size() != 1)
        break label44;
      play((Animator)paramList.get(0));
    }
    while (true)
    {
      return;
      label44: for (int i = 0; i < -1 + paramList.size(); i++)
        play((Animator)paramList.get(i)).before((Animator)paramList.get(i + 1));
    }
  }

  public void playSequentially(Animator[] paramArrayOfAnimator)
  {
    int j;
    if (paramArrayOfAnimator != null)
    {
      this.mNeedsSort = true;
      int i = paramArrayOfAnimator.length;
      j = 0;
      if (i != 1)
        break label28;
      play(paramArrayOfAnimator[0]);
    }
    while (true)
    {
      return;
      label28: 
      while (j < -1 + paramArrayOfAnimator.length)
      {
        play(paramArrayOfAnimator[j]).before(paramArrayOfAnimator[(j + 1)]);
        j++;
      }
    }
  }

  public void playTogether(Collection paramCollection)
  {
    if ((paramCollection != null) && (paramCollection.size() > 0))
    {
      this.mNeedsSort = true;
      Object localObject1 = null;
      Iterator localIterator = paramCollection.iterator();
      if (localIterator.hasNext())
      {
        Animator localAnimator = (Animator)localIterator.next();
        if (localObject1 == null);
        for (Object localObject2 = play(localAnimator); ; localObject2 = localObject1)
        {
          localObject1 = localObject2;
          break;
          localObject1.with(localAnimator);
        }
      }
    }
  }

  public void playTogether(Animator[] paramArrayOfAnimator)
  {
    int i = 1;
    if (paramArrayOfAnimator != null)
    {
      this.mNeedsSort = i;
      AnimatorSet.Builder localBuilder = play(paramArrayOfAnimator[0]);
      while (i < paramArrayOfAnimator.length)
      {
        localBuilder.with(paramArrayOfAnimator[i]);
        i++;
      }
    }
  }

  public AnimatorSet setDuration(long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("duration must be a value of zero or greater");
    Iterator localIterator = this.mNodes.iterator();
    while (localIterator.hasNext())
      ((AnimatorSet.Node)localIterator.next()).animation.setDuration(paramLong);
    this.mDuration = paramLong;
    return this;
  }

  public void setInterpolator(Interpolator paramInterpolator)
  {
    Iterator localIterator = this.mNodes.iterator();
    while (localIterator.hasNext())
      ((AnimatorSet.Node)localIterator.next()).animation.setInterpolator(paramInterpolator);
  }

  public void setStartDelay(long paramLong)
  {
    this.mStartDelay = paramLong;
  }

  public void setTarget(Object paramObject)
  {
    Iterator localIterator = this.mNodes.iterator();
    while (localIterator.hasNext())
    {
      Animator localAnimator = ((AnimatorSet.Node)localIterator.next()).animation;
      if ((localAnimator instanceof AnimatorSet))
        ((AnimatorSet)localAnimator).setTarget(paramObject);
      else if ((localAnimator instanceof ObjectAnimator))
        ((ObjectAnimator)localAnimator).setTarget(paramObject);
    }
  }

  public void setupEndValues()
  {
    Iterator localIterator = this.mNodes.iterator();
    while (localIterator.hasNext())
      ((AnimatorSet.Node)localIterator.next()).animation.setupEndValues();
  }

  public void setupStartValues()
  {
    Iterator localIterator = this.mNodes.iterator();
    while (localIterator.hasNext())
      ((AnimatorSet.Node)localIterator.next()).animation.setupStartValues();
  }

  public void start()
  {
    int i = 0;
    this.mTerminated = false;
    this.mStarted = true;
    sortNodes();
    int j = this.mSortedNodes.size();
    for (int k = 0; k < j; k++)
    {
      AnimatorSet.Node localNode3 = (AnimatorSet.Node)this.mSortedNodes.get(k);
      ArrayList localArrayList4 = localNode3.animation.getListeners();
      if ((localArrayList4 != null) && (localArrayList4.size() > 0))
      {
        Iterator localIterator2 = new ArrayList(localArrayList4).iterator();
        while (localIterator2.hasNext())
        {
          Animator.AnimatorListener localAnimatorListener = (Animator.AnimatorListener)localIterator2.next();
          if (((localAnimatorListener instanceof AnimatorSet.DependencyListener)) || ((localAnimatorListener instanceof AnimatorSet.AnimatorSetListener)))
            localNode3.animation.removeListener(localAnimatorListener);
        }
      }
    }
    ArrayList localArrayList1 = new ArrayList();
    int m = 0;
    if (m < j)
    {
      AnimatorSet.Node localNode2 = (AnimatorSet.Node)this.mSortedNodes.get(m);
      if (this.mSetListener == null)
        this.mSetListener = new AnimatorSet.AnimatorSetListener(this, this);
      if ((localNode2.dependencies == null) || (localNode2.dependencies.size() == 0))
        localArrayList1.add(localNode2);
      while (true)
      {
        localNode2.animation.addListener(this.mSetListener);
        m++;
        break;
        int i3 = localNode2.dependencies.size();
        for (int i4 = 0; i4 < i3; i4++)
        {
          AnimatorSet.Dependency localDependency = (AnimatorSet.Dependency)localNode2.dependencies.get(i4);
          localDependency.node.animation.addListener(new AnimatorSet.DependencyListener(this, localNode2, localDependency.rule));
        }
        localNode2.tmpDependencies = ((ArrayList)localNode2.dependencies.clone());
      }
    }
    if (this.mStartDelay <= 0L)
    {
      Iterator localIterator1 = localArrayList1.iterator();
      while (localIterator1.hasNext())
      {
        AnimatorSet.Node localNode1 = (AnimatorSet.Node)localIterator1.next();
        localNode1.animation.start();
        this.mPlayingSet.add(localNode1.animation);
      }
    }
    this.mDelayAnim = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
    this.mDelayAnim.setDuration(this.mStartDelay);
    this.mDelayAnim.addListener(new AnimatorSet.1(this, localArrayList1));
    this.mDelayAnim.start();
    if (this.mListeners != null)
    {
      ArrayList localArrayList3 = (ArrayList)this.mListeners.clone();
      int i1 = localArrayList3.size();
      for (int i2 = 0; i2 < i1; i2++)
        ((Animator.AnimatorListener)localArrayList3.get(i2)).onAnimationStart(this);
    }
    if ((this.mNodes.size() == 0) && (this.mStartDelay == 0L))
    {
      this.mStarted = false;
      if (this.mListeners != null)
      {
        ArrayList localArrayList2 = (ArrayList)this.mListeners.clone();
        int n = localArrayList2.size();
        while (i < n)
        {
          ((Animator.AnimatorListener)localArrayList2.get(i)).onAnimationEnd(this);
          i++;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet
 * JD-Core Version:    0.6.2
 */