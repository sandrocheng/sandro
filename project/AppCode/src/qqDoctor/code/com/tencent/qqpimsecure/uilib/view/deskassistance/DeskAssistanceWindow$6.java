package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class DeskAssistanceWindow$6 extends BroadcastReceiver
{
  DeskAssistanceWindow$6(DeskAssistanceWindow paramDeskAssistanceWindow)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.intent.action.SCREEN_ON"))
      DeskAssistanceWindow.access$400(this.this$0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.DeskAssistanceWindow.6
 * JD-Core Version:    0.6.2
 */