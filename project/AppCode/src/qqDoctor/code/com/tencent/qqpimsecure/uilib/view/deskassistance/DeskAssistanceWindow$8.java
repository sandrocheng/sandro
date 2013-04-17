package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import ho;
import nd;

class DeskAssistanceWindow$8
  implements OnRocketMoveListener
{
  boolean isin = false;

  DeskAssistanceWindow$8(DeskAssistanceWindow paramDeskAssistanceWindow)
  {
  }

  public void onAnimationDone()
  {
    DeskAssistanceWindow.access$000(this.this$0).setOnClickListener(this.this$0);
    if ((this.isin) && (DeskAssistanceWindow.access$000(this.this$0) != null))
    {
      Message localMessage = DeskAssistanceWindow.access$1500(this.this$0).obtainMessage(2);
      DeskAssistanceWindow.access$1500(this.this$0).removeMessages(2);
      localMessage.sendToTarget();
    }
    DeskAssistanceWindow.access$000(this.this$0).setRocketDone();
    if (DeskAssistanceWindow.access$200(this.this$0))
      DeskAssistanceWindow.access$1600(this.this$0);
    DeskAssistanceWindow.access$000(this.this$0).setColorEggGone();
  }

  public void onMove()
  {
    if (DeskAssistanceWindow.access$600(this.this$0) == null)
    {
      DeskAssistanceWindow.access$700(this.this$0);
      DeskAssistanceWindow.access$600(this.this$0).poolAnimate(true, false);
    }
    Rect localRect = DeskAssistanceWindow.access$800(this.this$0);
    if (DeskAssistanceWindow.access$000(this.this$0).isInWhirlPool(localRect))
    {
      DeskAssistanceWindow.access$900(this.this$0);
      if (DeskAssistanceWindow.access$600(this.this$0) != null)
        DeskAssistanceWindow.access$600(this.this$0).poolAnimate(true, true);
      DeskAssistanceWindow.access$1000(this.this$0);
    }
    while (true)
    {
      return;
      DeskAssistanceWindow.access$1100(this.this$0);
      if (DeskAssistanceWindow.access$600(this.this$0) != null)
        DeskAssistanceWindow.access$600(this.this$0).poolAnimate(true, false);
      DeskAssistanceWindow.access$1200(this.this$0);
    }
  }

  public boolean onPutDown()
  {
    SuspendWhirlPoolView localSuspendWhirlPoolView = DeskAssistanceWindow.access$600(this.this$0);
    boolean bool = false;
    if (localSuspendWhirlPoolView == null)
      return bool;
    Rect localRect = DeskAssistanceWindow.access$800(this.this$0);
    if (DeskAssistanceWindow.access$000(this.this$0) != null)
      this.isin = DeskAssistanceWindow.access$000(this.this$0).isInWhirlPool(localRect);
    if (this.isin)
    {
      DeskAssistanceWindow.access$000(this.this$0).setUp();
      if (DeskAssistanceWindow.access$600(this.this$0) != null)
        DeskAssistanceWindow.access$600(this.this$0).poolAnimate(false, true);
      DeskAssistanceWindow.access$1100(this.this$0);
      DeskAssistanceWindow.access$1200(this.this$0);
      DeskAssistanceWindow.access$1300(this.this$0);
      DeskAssistanceWindow.access$202(this.this$0, true);
      DeskAssistanceWindow.access$1400(this.this$0).df();
      nd.a().a(26271);
    }
    while (true)
    {
      bool = this.isin;
      break;
      onAnimationDone();
      if (DeskAssistanceWindow.access$600(this.this$0) != null)
        DeskAssistanceWindow.access$600(this.this$0).stopAnimation();
    }
  }

  public void onStandUp()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.DeskAssistanceWindow.8
 * JD-Core Version:    0.6.2
 */