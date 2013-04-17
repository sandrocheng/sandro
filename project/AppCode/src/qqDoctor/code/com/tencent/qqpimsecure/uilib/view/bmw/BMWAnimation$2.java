package com.tencent.qqpimsecure.uilib.view.bmw;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import java.util.TimerTask;

class BMWAnimation$2 extends TimerTask
{
  BMWAnimation$2(BMWAnimation paramBMWAnimation, int paramInt1, int paramInt2)
  {
  }

  public void run()
  {
    int i = BMWAnimation.access$100(this.this$0);
    int j = Math.abs(i - this.val$to);
    if (j != 0.0F)
      while (j > 0.0F)
      {
        int k;
        label45: int m;
        if (j <= 1.0F)
        {
          k = this.val$to;
          Message localMessage = BMWAnimation.access$200(this.this$0).obtainMessage(0);
          Bundle localBundle = new Bundle();
          localBundle.putInt("Percent", k);
          localMessage.setData(localBundle);
          localMessage.sendToTarget();
          m = Math.abs(k - this.val$to);
        }
        try
        {
          Thread.sleep(this.val$tempDuration);
          i = k;
          j = m;
          continue;
          if (i > this.val$to)
          {
            k = (int)(i - 1.0F);
            break label45;
          }
          k = (int)(1.0F + i);
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
          i = k;
          j = m;
        }
      }
    cancel();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.bmw.BMWAnimation.2
 * JD-Core Version:    0.6.2
 */