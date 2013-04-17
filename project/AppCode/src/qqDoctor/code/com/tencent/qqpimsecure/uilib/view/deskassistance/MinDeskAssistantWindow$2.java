package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.media.AsyncPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.service.ColorEggManager;
import ho;

class MinDeskAssistantWindow$2
  implements Runnable
{
  MinDeskAssistantWindow$2(MinDeskAssistantWindow paramMinDeskAssistantWindow, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void run()
  {
    int i = 1;
    MinDeskAssistantWindow.access$1600(this.this$0).startCheckLottery();
    this.this$0.setIsReadyToShow(false);
    int j = this.val$start;
    this.this$0.setFlying(i);
    AsyncPlayer localAsyncPlayer = new AsyncPlayer(null);
    if (MinDeskAssistantWindow.access$1700(this.this$0).cw())
    {
      Uri localUri = Uri.parse("android.resource://com.tencent.qqpimsecure/2131099650");
      localAsyncPlayer.play(MinDeskAssistantWindow.access$1500(this.this$0), localUri, false, 2);
    }
    int m = (int)(0.5D * this.val$end);
    int k;
    while (true)
      if (j >= this.val$end)
      {
        Message localMessage2 = MinDeskAssistantWindow.access$700(this.this$0).obtainMessage();
        localMessage2.what = 0;
        localMessage2.arg1 = this.val$left;
        localMessage2.arg2 = j;
        if (this.this$0.hasAddToWindow())
        {
          localMessage2.sendToTarget();
          i += 3;
          j -= i;
          try
          {
            Thread.sleep(30L);
            if (k <= m)
              MinDeskAssistantWindow.access$1800(this.this$0, false);
          }
          catch (InterruptedException localInterruptedException)
          {
            while (true)
              localInterruptedException.printStackTrace();
          }
        }
      }
    this.this$0.setFlying(false);
    localAsyncPlayer.stop();
    MinDeskAssistantWindow.access$1902(this.this$0, 1000);
    Message localMessage1 = MinDeskAssistantWindow.access$700(this.this$0).obtainMessage();
    localMessage1.what = 3;
    localMessage1.arg1 = this.val$left;
    localMessage1.arg2 = k;
    localMessage1.sendToTarget();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.MinDeskAssistantWindow.2
 * JD-Core Version:    0.6.2
 */