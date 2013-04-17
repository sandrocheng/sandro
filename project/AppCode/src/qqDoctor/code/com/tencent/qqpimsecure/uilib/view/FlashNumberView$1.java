package com.tencent.qqpimsecure.uilib.view;

import android.os.Handler;
import android.os.Message;

class FlashNumberView$1 extends Handler
{
  FlashNumberView$1(FlashNumberView paramFlashNumberView)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    int i = 1 + FlashNumberView.access$000(this.this$0);
    if (i < FlashNumberView.access$100(this.this$0))
      if (FlashNumberView.access$200(this.this$0))
      {
        FlashNumberView.access$300(this.this$0, i);
        FlashNumberView.access$400(this.this$0).sendEmptyMessageDelayed(1, 20L);
      }
    while (true)
    {
      return;
      if (i == FlashNumberView.access$100(this.this$0))
      {
        FlashNumberView.access$202(this.this$0, false);
        FlashNumberView.access$300(this.this$0, i);
      }
      else
      {
        FlashNumberView.access$202(this.this$0, false);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.FlashNumberView.1
 * JD-Core Version:    0.6.2
 */