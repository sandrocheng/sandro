package com.tencent.qqpimsecure.uilib.view;

import android.os.Handler;
import android.os.Message;

class ProgressBarView$1 extends Handler
{
  ProgressBarView$1(ProgressBarView paramProgressBarView)
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
        i = this.this$0.getProgress();
        if (ProgressBarView.access$000(this.this$0) == i)
          if (ProgressBarView.access$100(this.this$0) != null)
            ProgressBarView.access$100(this.this$0).onAnimationFinish();
        break;
      case 2:
      }
    }
    int j;
    if (ProgressBarView.access$000(this.this$0) > i)
    {
      j = i + 2;
      if (j > ProgressBarView.access$000(this.this$0))
        j = ProgressBarView.access$000(this.this$0);
    }
    label256: 
    while (true)
    {
      this.this$0.setProgress(j);
      ProgressBarView.access$200(this.this$0).sendEmptyMessage(1);
      break;
      if (ProgressBarView.access$300(this.this$0) < ProgressBarView.access$400(this.this$0))
      {
        this.this$0.setProgress(1 + ProgressBarView.access$300(this.this$0));
        ProgressBarView.access$200(this.this$0).sendEmptyMessageDelayed(2, 2L);
        break;
      }
      if (ProgressBarView.access$100(this.this$0) == null)
        break;
      ProgressBarView.access$100(this.this$0).onAnimationFinish();
      ProgressBarView.access$102(this.this$0, null);
      break;
      return;
      while (true)
      {
        if (j >= 0)
          break label256;
        j = 0;
        break;
        j = i - 2;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.ProgressBarView.1
 * JD-Core Version:    0.6.2
 */