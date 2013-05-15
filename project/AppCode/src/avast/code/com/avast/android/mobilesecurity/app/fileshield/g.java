package com.avast.android.mobilesecurity.app.fileshield;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class g extends BroadcastReceiver
{
  g(FileShieldService paramFileShieldService)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("intent.action.sd_card_scan_started".equals(paramIntent.getAction()))
      FileShieldService.a(this.a, true);
    if ("intent.action.sd_card_scan_stopped".equals(paramIntent.getAction()))
      FileShieldService.a(this.a, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.fileshield.g
 * JD-Core Version:    0.6.2
 */