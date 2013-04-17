package com.tencent.qqpimsecure.uilib.service;

import android.app.Activity;
import android.view.View;
import android.widget.PopupWindow;

class BubbleTipsManager$2$1
  implements Runnable
{
  BubbleTipsManager$2$1(BubbleTipsManager.2 param2, PopupWindow paramPopupWindow, BubbleTipsManager.BubbleModel paramBubbleModel)
  {
  }

  public void run()
  {
    while (true)
    {
      if (!BubbleTipsManager.access$000(this.this$1.this$0))
      {
        if (BubbleTipsManager.access$400(this.this$1.this$0) == null)
          BubbleTipsManager.access$002(this.this$1.this$0, true);
      }
      else
        return;
      new StringBuilder().append(BubbleTipsManager.access$400(this.this$1.this$0).getBottom()).append(" BubbleTipsManager tempIBinder ").append(BubbleTipsManager.access$400(this.this$1.this$0).getTop()).append(" bubbleView.getTop() ").append(BubbleTipsManager.access$500(this.this$1.this$0).getTop()).append(" bubbleView.getBottom() ").append(BubbleTipsManager.access$500(this.this$1.this$0).getBottom()).toString();
      if ((BubbleTipsManager.access$400(this.this$1.this$0).getBottom() != 0) || (BubbleTipsManager.access$400(this.this$1.this$0).getTop() != 0))
      {
        ((Activity)BubbleTipsManager.access$1200(this.this$1.this$0)).runOnUiThread(new BubbleTipsManager.2.1.1(this));
        BubbleTipsManager.access$002(this.this$1.this$0, true);
      }
      try
      {
        Thread.sleep(200L);
      }
      catch (Exception localException)
      {
        BubbleTipsManager.access$002(this.this$1.this$0, true);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.service.BubbleTipsManager.2.1
 * JD-Core Version:    0.6.2
 */