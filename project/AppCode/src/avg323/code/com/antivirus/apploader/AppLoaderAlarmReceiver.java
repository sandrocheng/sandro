package com.antivirus.apploader;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class AppLoaderAlarmReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.droidsec.apploaderalarm".equals(paramIntent.getAction()))
      paramContext.startService(new Intent(paramContext, AppLoaderService.class));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.apploader.AppLoaderAlarmReceiver
 * JD-Core Version:    0.6.2
 */