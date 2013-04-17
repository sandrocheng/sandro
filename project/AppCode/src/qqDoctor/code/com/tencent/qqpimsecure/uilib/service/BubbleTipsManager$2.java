package com.tencent.qqpimsecure.uilib.service;

import android.widget.PopupWindow;
import java.util.ArrayList;

class BubbleTipsManager$2
  implements Runnable
{
  BubbleTipsManager$2(BubbleTipsManager paramBubbleTipsManager, String paramString)
  {
  }

  public void run()
  {
    BubbleTipsManager.access$002(this.this$0, false);
    for (int i = 0; ; i++)
    {
      BubbleTipsManager.BubbleModel localBubbleModel;
      PopupWindow localPopupWindow;
      if (i < BubbleTipsManager.access$100(this.this$0).size())
      {
        localBubbleModel = (BubbleTipsManager.BubbleModel)BubbleTipsManager.access$100(this.this$0).get(i);
        if (!localBubbleModel.parentKey.equals(this.val$parentKey))
          continue;
        localPopupWindow = BubbleTipsManager.access$200(this.this$0, localBubbleModel);
        new StringBuilder().append(localPopupWindow).append(" bubblePop BubbleTipsManager tempBubbleModel.bubbleTypeList ").append(localBubbleModel.bubbleTypeList).toString();
        if (!BubbleTipsManager.access$300(this.this$0, ((Byte)localBubbleModel.bubbleTypeList.get(localBubbleModel.currentIndex)).byteValue()))
          break label120;
      }
      while (true)
      {
        return;
        label120: if (localPopupWindow != null)
          new Thread(new BubbleTipsManager.2.1(this, localPopupWindow, localBubbleModel)).start();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.service.BubbleTipsManager.2
 * JD-Core Version:    0.6.2
 */