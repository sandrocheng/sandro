package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.graphics.drawable.AnimationDrawable;
import android.os.Handler;
import android.os.Message;

class SuspendWhirlPoolView$1 extends Handler
{
  SuspendWhirlPoolView$1(SuspendWhirlPoolView paramSuspendWhirlPoolView)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      if (!SuspendWhirlPoolView.access$000(this.this$0).isRunning())
      {
        SuspendWhirlPoolView.access$000(this.this$0).setAlpha(255);
        SuspendWhirlPoolView.access$000(this.this$0).start();
        continue;
        if (SuspendWhirlPoolView.access$000(this.this$0).isRunning())
        {
          SuspendWhirlPoolView.access$000(this.this$0).stop();
          SuspendWhirlPoolView.access$000(this.this$0).setAlpha(0);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.SuspendWhirlPoolView.1
 * JD-Core Version:    0.6.2
 */