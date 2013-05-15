package com.avast.android.mobilesecurity.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.avast.android.mobilesecurity.app.firewall.core.FirewallHandlingService;

public class AppUninstallReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getDataString();
    String str2 = str1.substring(1 + str1.indexOf(":"));
    if (("android.intent.action.PACKAGE_REMOVED".equals(paramIntent.getAction())) && (!paramIntent.getBooleanExtra("android.intent.extra.REPLACING", false)))
    {
      int i = paramIntent.getIntExtra("android.intent.extra.UID", -123);
      if (i != -123)
      {
        Intent localIntent = new Intent("com.avast.android.mobilesecurity.app.firewall.core.APP_REMOVED");
        localIntent.putExtra("pkg", str2);
        localIntent.putExtra("uid", i);
        FirewallHandlingService.b(paramContext, paramIntent);
      }
    }
    AppUninstallService.a(paramContext, paramIntent.getData(), paramIntent.getAction(), paramIntent.getExtras());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.receiver.AppUninstallReceiver
 * JD-Core Version:    0.6.2
 */