package com.ijinshan.battery.recommand;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.keniu.security.MoSecurityApplication;
import com.keniu.security.main.MainActivity;
import com.keniu.security.util.at;
import com.keniu.security.util.au;

public class BatteryTipsReceiver extends BroadcastReceiver
{
  private final int a = 30;
  private boolean b = false;

  private void a(Context paramContext)
  {
    paramContext.registerReceiver(this, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
  }

  private void b(Context paramContext)
  {
    paramContext.unregisterReceiver(this);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((!"android.intent.action.BATTERY_CHANGED".equals(paramIntent.getAction())) || (paramIntent.getIntExtra("level", 0) > 30) || (!at.c(paramContext)));
    while (true)
    {
      return;
      try
      {
        Intent localIntent3 = paramContext.getPackageManager().getLaunchIntentForPackage("com.ijinshan.kbatterydoctor");
        localIntent1 = localIntent3;
        if (localIntent1 == null)
        {
          MoSecurityApplication localMoSecurityApplication = MoSecurityApplication.a();
          Intent localIntent2 = new Intent(localMoSecurityApplication, MainActivity.class);
          Bundle localBundle = new Bundle();
          localBundle.putBoolean("notifylowbattery", true);
          localIntent2.putExtras(localBundle);
          PendingIntent localPendingIntent = PendingIntent.getActivity(localMoSecurityApplication.getApplicationContext(), 0, localIntent2, 0);
          au.a(localMoSecurityApplication, 2131428121, 2131428121, localMoSecurityApplication.getString(2131428108), localPendingIntent, 281, 2130837512);
        }
        SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("com.ijinshan.mguard_preferences", 0).edit();
        localEditor.putBoolean("battery_low_notified", true);
        localEditor.commit();
        if (this.b)
          continue;
        paramContext.unregisterReceiver(this);
        this.b = true;
      }
      catch (Exception localException)
      {
        while (true)
          Intent localIntent1 = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.battery.recommand.BatteryTipsReceiver
 * JD-Core Version:    0.6.2
 */