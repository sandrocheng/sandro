package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;

class MinDeskAssistantWindow$1$1
  implements MinDeskAssistantWindow.onConfirmGetPrizeListener
{
  MinDeskAssistantWindow$1$1(MinDeskAssistantWindow.1 param1)
  {
  }

  public void onConfirmFinish()
  {
    MinDeskAssistantWindow.access$902(this.this$1.this$0, false);
    this.this$1.this$0.initView();
    WindowManager.LayoutParams localLayoutParams = this.this$1.this$0.getWindowLayoutParams(-1, -1);
    try
    {
      if (this.this$1.this$0.hasAddToWindow())
        MinDeskAssistantWindow.access$1000(this.this$1.this$0).updateViewLayout(this.this$1.this$0, localLayoutParams);
      while (true)
      {
        this.this$1.this$0.setVisibility(0);
        break;
        MinDeskAssistantWindow.access$1100(this.this$1.this$0).addView(this.this$1.this$0, localLayoutParams);
        this.this$1.this$0.setHasAddToWindow(true);
      }
    }
    catch (Exception localException)
    {
    }
  }

  public void onConfirmStart()
  {
    MinDeskAssistantWindow.access$902(this.this$1.this$0, true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.MinDeskAssistantWindow.1.1
 * JD-Core Version:    0.6.2
 */