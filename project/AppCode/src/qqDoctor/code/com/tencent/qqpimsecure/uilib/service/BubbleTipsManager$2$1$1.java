package com.tencent.qqpimsecure.uilib.service;

import android.view.View;
import android.widget.PopupWindow;
import java.util.ArrayList;
import java.util.Timer;

class BubbleTipsManager$2$1$1
  implements Runnable
{
  BubbleTipsManager$2$1$1(BubbleTipsManager.2.1 param1)
  {
  }

  public void run()
  {
    if ((BubbleTipsManager.access$500(this.this$2.this$1.this$0).getBottom() == 0) || (BubbleTipsManager.access$500(this.this$2.this$1.this$0).getTop() == 0))
    {
      this.this$2.val$bubblePop.showAsDropDown(BubbleTipsManager.access$400(this.this$2.this$1.this$0), -10000, -10000);
      this.this$2.val$bubblePop.dismiss();
      this.this$2.val$bubblePop.setFocusable(false);
    }
    switch (((Byte)this.this$2.val$tempBubbleModel.bubbleDirectionList.get(this.this$2.val$tempBubbleModel.currentIndex)).byteValue())
    {
    default:
      BubbleTipsManager.access$602(this.this$2.this$1.this$0, -75 + ((Integer)this.this$2.val$tempBubbleModel.bubbleOffXList.get(this.this$2.val$tempBubbleModel.currentIndex)).intValue());
      BubbleTipsManager.access$702(this.this$2.this$1.this$0, ((Integer)this.this$2.val$tempBubbleModel.bubbleOffYList.get(this.this$2.val$tempBubbleModel.currentIndex)).intValue());
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      this.this$2.val$bubblePop.showAsDropDown(BubbleTipsManager.access$400(this.this$2.this$1.this$0), BubbleTipsManager.access$600(this.this$2.this$1.this$0), BubbleTipsManager.access$700(this.this$2.this$1.this$0));
      this.this$2.val$bubblePop.setFocusable(true);
      BubbleTipsManager.access$800(this.this$2.this$1.this$0, BubbleTipsManager.access$500(this.this$2.this$1.this$0));
      BubbleTipsManager.access$900(this.this$2.this$1.this$0, ((Byte)this.this$2.val$tempBubbleModel.bubbleTypeList.get(this.this$2.val$tempBubbleModel.currentIndex)).byteValue());
      BubbleTipsManager.access$1002(this.this$2.this$1.this$0, 0);
      this.this$2.this$1.this$0.timer = new Timer();
      this.this$2.this$1.this$0.timer.schedule(new BubbleTipsManager.MyTimeTask(this.this$2.this$1.this$0, null), 0L, 1000L);
      return;
      BubbleTipsManager.access$602(this.this$2.this$1.this$0, ((Integer)this.this$2.val$tempBubbleModel.bubbleOffXList.get(this.this$2.val$tempBubbleModel.currentIndex)).intValue() + (BubbleTipsManager.access$400(this.this$2.this$1.this$0).getRight() - BubbleTipsManager.access$400(this.this$2.this$1.this$0).getLeft()) / 2);
      BubbleTipsManager.access$702(this.this$2.this$1.this$0, -60 + ((Integer)this.this$2.val$tempBubbleModel.bubbleOffYList.get(this.this$2.val$tempBubbleModel.currentIndex)).intValue() - (BubbleTipsManager.access$400(this.this$2.this$1.this$0).getBottom() - BubbleTipsManager.access$400(this.this$2.this$1.this$0).getTop()));
      new StringBuilder().append(BubbleTipsManager.access$400(this.this$2.this$1.this$0)).append(" BubbleTipsManager Direction_Up_Bubble bubbleOffY ").append(BubbleTipsManager.access$700(this.this$2.this$1.this$0)).toString();
      continue;
      BubbleTipsManager.access$602(this.this$2.this$1.this$0, -75 + ((Integer)this.this$2.val$tempBubbleModel.bubbleOffXList.get(this.this$2.val$tempBubbleModel.currentIndex)).intValue());
      BubbleTipsManager.access$702(this.this$2.this$1.this$0, ((Integer)this.this$2.val$tempBubbleModel.bubbleOffYList.get(this.this$2.val$tempBubbleModel.currentIndex)).intValue());
      new StringBuilder().append(BubbleTipsManager.access$400(this.this$2.this$1.this$0)).append(" BubbleTipsManager Direction_Down_Bubble bubbleOffY ").append(BubbleTipsManager.access$700(this.this$2.this$1.this$0)).toString();
      continue;
      BubbleTipsManager.access$602(this.this$2.this$1.this$0, ((Integer)this.this$2.val$tempBubbleModel.bubbleOffXList.get(this.this$2.val$tempBubbleModel.currentIndex)).intValue());
      BubbleTipsManager.access$702(this.this$2.this$1.this$0, ((Integer)this.this$2.val$tempBubbleModel.bubbleOffYList.get(this.this$2.val$tempBubbleModel.currentIndex)).intValue() - (BubbleTipsManager.access$400(this.this$2.this$1.this$0).getBottom() - BubbleTipsManager.access$400(this.this$2.this$1.this$0).getTop()) + (-60 + (BubbleTipsManager.access$400(this.this$2.this$1.this$0).getBottom() - BubbleTipsManager.access$400(this.this$2.this$1.this$0).getTop())) / 2);
      new StringBuilder().append(BubbleTipsManager.access$400(this.this$2.this$1.this$0)).append(" BubbleTipsManager Direction_Down_Bubble bubbleOffY ").append(BubbleTipsManager.access$700(this.this$2.this$1.this$0)).toString();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.service.BubbleTipsManager.2.1.1
 * JD-Core Version:    0.6.2
 */