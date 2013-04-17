package com.tencent.qqpimsecure.uilib.service;

import android.widget.PopupWindow.OnDismissListener;
import java.util.Timer;

class BubbleTipsManager$1
  implements PopupWindow.OnDismissListener
{
  BubbleTipsManager$1(BubbleTipsManager paramBubbleTipsManager)
  {
  }

  public void onDismiss()
  {
    if (this.this$0.timer != null)
    {
      this.this$0.timer.cancel();
      this.this$0.timer.purge();
      this.this$0.timer = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.service.BubbleTipsManager.1
 * JD-Core Version:    0.6.2
 */