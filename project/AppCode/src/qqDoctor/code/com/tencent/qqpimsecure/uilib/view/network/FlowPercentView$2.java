package com.tencent.qqpimsecure.uilib.view.network;

import java.util.TimerTask;

class FlowPercentView$2 extends TimerTask
{
  FlowPercentView$2(FlowPercentView paramFlowPercentView, float paramFloat)
  {
  }

  public void run()
  {
    float f1 = Math.abs(FlowPercentView.access$000(this.this$0) - this.val$to);
    float f2 = (int)FlowPercentView.access$000(this.this$0);
    if (f1 != 0.0F)
    {
      float f3 = f1;
      if (f3 > 0.0F)
      {
        if (f3 <= 1.0F)
          f2 = this.val$to;
        while (true)
        {
          f3 = Math.abs(f2 - this.val$to);
          this.this$0.sendChangeOnSpeed(f1, f3, f2);
          break;
          if (f2 > this.val$to)
            f2 -= 1.0F;
          else
            f2 += 1.0F;
        }
      }
    }
    cancel();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.network.FlowPercentView.2
 * JD-Core Version:    0.6.2
 */