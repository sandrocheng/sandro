package com.tencent.qqpimsecure.uilib.view.button;

import android.os.Handler;
import android.os.Message;

class RotationView$1 extends Handler
{
  RotationView$1(RotationView paramRotationView)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    float f = 1.0F * (float)(System.currentTimeMillis() - RotationView.access$000(this.this$0)) / 3500.0F;
    if (RotationView.access$100(this.this$0))
      f = 1.1F;
    removeMessages(0);
    if (f > 1.0F)
    {
      RotationView.access$202(this.this$0, 0);
      RotationView.access$302(this.this$0, false);
      this.this$0.postInvalidate();
    }
    while (true)
    {
      return;
      RotationView.access$202(this.this$0, (int)(f * 2520.0F));
      this.this$0.postInvalidate();
      sendEmptyMessageDelayed(0, 30L);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.button.RotationView.1
 * JD-Core Version:    0.6.2
 */