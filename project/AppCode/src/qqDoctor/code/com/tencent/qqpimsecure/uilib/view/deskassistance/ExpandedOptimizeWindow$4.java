package com.tencent.qqpimsecure.uilib.view.deskassistance;

import com.tencent.qqpimsecure.uilib.view.MiniProgressBarView;
import com.tencent.qqpimsecure.uilib.view.MiniProgressBarView.onAnimationFinishListener;
import vh;

class ExpandedOptimizeWindow$4 extends MiniProgressBarView.onAnimationFinishListener
{
  private final int SETP_COUNT = 5;
  private int count = 0;
  private int mSetp = this.ramUsage / 5;
  private boolean mStopRecu = false;
  int ramUsage = vh.g();

  ExpandedOptimizeWindow$4(ExpandedOptimizeWindow paramExpandedOptimizeWindow)
  {
  }

  public void onAnimationFinish()
  {
    proceAnimationFinish();
  }

  void proceAnimationFinish()
  {
    if (this.mStopRecu);
    while (true)
    {
      return;
      this.count = (1 + this.count);
      int i = this.count * this.mSetp;
      if (ExpandedOptimizeWindow.access$100(this.this$0))
        i = vh.g();
      ExpandedOptimizeWindow.access$700(this.this$0).setProgressWithAnim(i, new ExpandedOptimizeWindow.4.1(this));
      if ((this.count >= 5) || (ExpandedOptimizeWindow.access$100(this.this$0)))
        this.mStopRecu = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ExpandedOptimizeWindow.4
 * JD-Core Version:    0.6.2
 */