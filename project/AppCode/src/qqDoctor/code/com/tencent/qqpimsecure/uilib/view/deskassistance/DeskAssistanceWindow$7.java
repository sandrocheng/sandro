package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.view.WindowManager;

class DeskAssistanceWindow$7
  implements SuspendWhirlPoolView.onSuspendWhirlPoolAnimListener
{
  DeskAssistanceWindow$7(DeskAssistanceWindow paramDeskAssistanceWindow)
  {
  }

  public void onAnimationDone()
  {
    if (DeskAssistanceWindow.access$600(this.this$0) != null)
    {
      DeskAssistanceWindow.access$300(this.this$0).removeView(DeskAssistanceWindow.access$600(this.this$0));
      DeskAssistanceWindow.access$602(this.this$0, null);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.DeskAssistanceWindow.7
 * JD-Core Version:    0.6.2
 */