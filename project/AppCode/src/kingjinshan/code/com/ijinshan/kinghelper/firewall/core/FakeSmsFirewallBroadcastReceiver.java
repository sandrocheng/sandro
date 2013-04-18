package com.ijinshan.kinghelper.firewall.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.keniu.security.service.MoSecurityService;

public class FakeSmsFirewallBroadcastReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext.startService(new Intent(paramContext, MoSecurityService.class));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.core.FakeSmsFirewallBroadcastReceiver
 * JD-Core Version:    0.6.2
 */