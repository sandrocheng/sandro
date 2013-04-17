package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.os.Handler;
import ho;
import nd;
import zk.b;

class DeskAssistanceWindow$2
  implements zk.b
{
  private int mCount = 0;

  DeskAssistanceWindow$2(DeskAssistanceWindow paramDeskAssistanceWindow)
  {
  }

  public void BestNow()
  {
    if (!ho.a().cJ())
      DeskAssistanceWindow.access$100(this.this$0).sendEmptyMessage(5);
    for (boolean bool = false; ; bool = true)
    {
      DeskAssistanceWindow.access$000(this.this$0).startColorEggAnimation(0, 0L, bool);
      DeskAssistanceWindow.access$202(this.this$0, false);
      Handler localHandler = DeskAssistanceWindow.access$000(this.this$0).getMinDeskAssiHandler();
      if (DeskAssistanceWindow.access$000(this.this$0).isReadyToShow())
        localHandler.sendEmptyMessage(16);
      while (true)
      {
        nd.a().a(26272);
        return;
        DeskAssistanceWindow.access$000(this.this$0).setIsReadyToShow(true);
      }
    }
  }

  public void CleanEstimateComplete(int paramInt, long paramLong)
  {
    boolean bool = true;
    if (!ho.a().cJ())
    {
      DeskAssistanceWindow.access$100(this.this$0).sendEmptyMessage(5);
      bool = false;
    }
    DeskAssistanceWindow.access$000(this.this$0).startColorEggAnimation(paramInt, paramLong, bool);
    DeskAssistanceWindow.access$202(this.this$0, false);
    nd.a().a(26272);
  }

  public void CleanFinish()
  {
    this.mCount = 0;
  }

  public boolean isReadyToCleanNow()
  {
    if ((!DeskAssistanceWindow.access$000(this.this$0).isRocketRunning()) || (this.mCount > 1000));
    for (boolean bool = true; ; bool = false)
    {
      this.mCount = (1 + this.mCount);
      return bool;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.DeskAssistanceWindow.2
 * JD-Core Version:    0.6.2
 */