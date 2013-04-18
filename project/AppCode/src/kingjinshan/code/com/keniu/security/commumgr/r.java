package com.keniu.security.commumgr;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class r extends BroadcastReceiver
{
  r(OnekeyCallSettingActivity paramOnekeyCallSettingActivity)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if (str == null);
    while (true)
    {
      return;
      if (str.compareTo("com.android.launcher.action.INSTALL_SHORTCUT") == 0)
        OnekeyCallSettingActivity.b(this.a);
      else if (str.compareTo("com.android.launcher.action.UNINSTALL_SHORTCUT") == 0)
        OnekeyCallSettingActivity.b(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.r
 * JD-Core Version:    0.6.2
 */