package com.keniu.security;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.ijinshan.kinghelper.firewall.dd;
import com.keniu.security.service.MoSecurityService;

public class UserUnLockReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    dd.a(paramContext);
    long l = dd.y();
    if (System.currentTimeMillis() > l + 21600000L)
      paramContext.startService(new Intent(paramContext, MoSecurityService.class));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.UserUnLockReceiver
 * JD-Core Version:    0.6.2
 */