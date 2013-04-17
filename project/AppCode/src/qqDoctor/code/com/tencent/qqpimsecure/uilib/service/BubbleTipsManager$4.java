package com.tencent.qqpimsecure.uilib.service;

import android.os.Handler;
import android.os.Message;
import java.util.Timer;

class BubbleTipsManager$4 extends Handler
{
  BubbleTipsManager$4(BubbleTipsManager paramBubbleTipsManager)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    }
    while (true)
    {
      super.handleMessage(paramMessage);
      return;
      BubbleTipsManager.access$1008(this.this$0);
      new StringBuilder(" handleMessage secondCount ").append(BubbleTipsManager.access$1000(this.this$0)).toString();
      if (BubbleTipsManager.access$1000(this.this$0) >= BubbleTipsManager.access$1400(this.this$0))
      {
        BubbleTipsManager.access$1500(this.this$0);
        if (this.this$0.timer != null)
        {
          this.this$0.timer.cancel();
          this.this$0.timer.purge();
          this.this$0.timer = null;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.service.BubbleTipsManager.4
 * JD-Core Version:    0.6.2
 */