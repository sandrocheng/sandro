package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.os.Handler;
import vh.b;

class DeskAssistanceWindow$3
  implements vh.b
{
  DeskAssistanceWindow$3(DeskAssistanceWindow paramDeskAssistanceWindow)
  {
  }

  public void onMemoryGot()
  {
    Handler localHandler = DeskAssistanceWindow.access$000(this.this$0).getMinDeskAssiHandler();
    if (DeskAssistanceWindow.access$000(this.this$0).isReadyToShow())
      localHandler.sendEmptyMessage(16);
    while (true)
    {
      return;
      DeskAssistanceWindow.access$000(this.this$0).setIsReadyToShow(true);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.DeskAssistanceWindow.3
 * JD-Core Version:    0.6.2
 */