package com.tencent.qqpimsecure.uilib.view;

import android.os.Handler;
import android.os.Message;

class MiniProgressBarView$1 extends Handler
{
  MiniProgressBarView$1(MiniProgressBarView paramMiniProgressBarView)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    int i;
    synchronized (this.this$0)
    {
      switch (paramMessage.what)
      {
      default:
        break;
      case 1:
        i = MiniProgressBarView.access$000(this.this$0);
        if (MiniProgressBarView.access$100(this.this$0) == i)
          if (MiniProgressBarView.access$200(this.this$0) != null)
            MiniProgressBarView.access$200(this.this$0).onAnimationFinish();
        break;
      }
    }
    int j;
    if (MiniProgressBarView.access$100(this.this$0) > i)
    {
      j = i + 2;
      if (j > MiniProgressBarView.access$100(this.this$0))
        j = MiniProgressBarView.access$100(this.this$0);
    }
    while (true)
    {
      this.this$0.setProgress(j);
      MiniProgressBarView.access$300(this.this$0).sendEmptyMessage(1);
      break;
      j = i - 2;
      if (j < 0)
        j = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.MiniProgressBarView.1
 * JD-Core Version:    0.6.2
 */