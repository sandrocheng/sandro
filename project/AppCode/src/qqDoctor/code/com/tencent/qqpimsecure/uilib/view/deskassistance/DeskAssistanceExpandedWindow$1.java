package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.widget.TextView;
import zo;
import zo.a;

class DeskAssistanceExpandedWindow$1
  implements zo.a
{
  DeskAssistanceExpandedWindow$1(DeskAssistanceExpandedWindow paramDeskAssistanceExpandedWindow)
  {
  }

  public void RunningProcessListChange()
  {
    DeskAssistanceExpandedWindow.access$000(this.this$0).updateRunningAppText();
    if (DeskAssistanceExpandedWindow.access$100(this.this$0).isShown())
    {
      int i = DeskAssistanceExpandedWindow.access$200(this.this$0).g();
      String str1 = DeskAssistanceExpandedWindow.access$300(this.this$0).getString(2131428983);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i);
      String str2 = String.format(str1, arrayOfObject);
      DeskAssistanceExpandedWindow.access$400(this.this$0).setText(str2);
      DeskAssistanceExpandedWindow.access$100(this.this$0).refreshRunnAppInfo();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.DeskAssistanceExpandedWindow.1
 * JD-Core Version:    0.6.2
 */