package com.avast.android.generic.app.passwordrecovery;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.avast.android.generic.util.m;

public class PasswordRecoveryReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    m.c("PasswordRecoveryReceiver received intent with action " + paramIntent.getAction());
    if ("android.intent.action.TIME_SET".equals(paramIntent.getAction()))
      a.d(paramContext);
    while (true)
    {
      return;
      if (("android.intent.action.BOOT_COMPLETED".equals(paramIntent.getAction())) || ("android.intent.action.QUICKBOOT_POWERON".equals(paramIntent.getAction())))
      {
        if (a.d(paramContext))
          a.b(paramContext);
      }
      else if ("com.avast.android.generic.RECOVERY_TIME_TICK".equals(paramIntent.getAction()))
      {
        String str2 = paramIntent.getStringExtra("auth_token");
        if ((str2 != null) && (a.b(paramContext, str2)) && (a.d(paramContext)))
          a.c(paramContext);
      }
      else if ("com.avast.android.generic.RECOVERY_SMS".equals(paramIntent.getAction()))
      {
        String str1 = paramIntent.getStringExtra("auth_token");
        if ((str1 != null) && (a.c(paramContext, str1)) && (a.d(paramContext)))
          switch (getResultCode())
          {
          default:
            a.a(paramContext, false);
            break;
          case -1:
            a.a(paramContext, true);
          }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.passwordrecovery.PasswordRecoveryReceiver
 * JD-Core Version:    0.6.2
 */