package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.os.Handler;
import android.os.Message;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;

class DeskAssistanceWindow$4 extends Handler
{
  DeskAssistanceWindow$4(DeskAssistanceWindow paramDeskAssistanceWindow)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    case 1:
    default:
    case 0:
    case 2:
    }
    while (true)
    {
      return;
      if ((DeskAssistanceWindow.access$000(this.this$0) != null) && (DeskAssistanceWindow.access$000(this.this$0).hasAddToWindow()))
      {
        DeskAssistanceWindow.access$000(this.this$0).dealWithInter();
        DeskAssistanceWindow.access$000(this.this$0).initView();
        WindowManager.LayoutParams localLayoutParams = DeskAssistanceWindow.access$000(this.this$0).getWindowLayoutParams(-1, -1);
        DeskAssistanceWindow.access$300(this.this$0).updateViewLayout(DeskAssistanceWindow.access$000(this.this$0), localLayoutParams);
        continue;
        if ((DeskAssistanceWindow.access$000(this.this$0) != null) && (DeskAssistanceWindow.access$000(this.this$0).hasAddToWindow()))
          DeskAssistanceWindow.access$000(this.this$0).dealWithInter();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.DeskAssistanceWindow.4
 * JD-Core Version:    0.6.2
 */