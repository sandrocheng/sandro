package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.widget.ImageButton;
import android.widget.TextView;
import nd;
import zo;

class DeskAssistanceExpandedWindow$3
  implements DeskAssistanceExpandedWindow.MFrameWindowObserver
{
  DeskAssistanceExpandedWindow$3(DeskAssistanceExpandedWindow paramDeskAssistanceExpandedWindow)
  {
  }

  private void changeAndUpdateTaskManagerFrameTitle()
  {
    if (!DeskAssistanceExpandedWindow.access$100(this.this$0).isShown());
    while (true)
    {
      return;
      DeskAssistanceExpandedWindow.access$800(this.this$0).setVisibility(8);
      DeskAssistanceExpandedWindow.access$800(this.this$0).setEnabled(false);
      DeskAssistanceExpandedWindow.access$400(this.this$0).setVisibility(0);
      int i = DeskAssistanceExpandedWindow.access$200(this.this$0).g();
      String str1 = DeskAssistanceExpandedWindow.access$300(this.this$0).getString(2131428983);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i);
      String str2 = String.format(str1, arrayOfObject);
      DeskAssistanceExpandedWindow.access$400(this.this$0).setText(str2);
      nd.a().g();
    }
  }

  public void changeToNormalFrameTitle()
  {
    DeskAssistanceExpandedWindow.access$800(this.this$0).setEnabled(true);
    DeskAssistanceExpandedWindow.access$800(this.this$0).setVisibility(0);
    DeskAssistanceExpandedWindow.access$400(this.this$0).setVisibility(8);
  }

  public void onOptimizeFinish()
  {
    if (DeskAssistanceExpandedWindow.access$700(this.this$0) == DeskAssistanceExpandedWindow.access$100(this.this$0))
    {
      DeskAssistanceExpandedWindow.access$100(this.this$0).refreshRunnAppInfo();
      changeAndUpdateTaskManagerFrameTitle();
    }
  }

  public void switchToTaskManagerView()
  {
    DeskAssistanceExpandedWindow.access$500(this.this$0, DeskAssistanceExpandedWindow.WindowType.ETaskManagerWindow);
    DeskAssistanceExpandedWindow.access$600(this.this$0).setImageResource(2130837605);
    DeskAssistanceExpandedWindow.access$100(this.this$0).refreshRunnAppInfo();
    changeAndUpdateTaskManagerFrameTitle();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.DeskAssistanceExpandedWindow.3
 * JD-Core Version:    0.6.2
 */