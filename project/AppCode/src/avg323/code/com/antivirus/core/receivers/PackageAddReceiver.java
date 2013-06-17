package com.antivirus.core.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

public class PackageAddReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().compareTo("android.intent.action.PACKAGE_ADDED") == 0);
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("package", paramIntent.getDataString());
      localBundle.putBoolean("updating", paramIntent.getBooleanExtra("android.intent.extra.REPLACING", false));
      com.antivirus.core.a.a(paramContext, 2000, 2, localBundle);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.receivers.PackageAddReceiver
 * JD-Core Version:    0.6.2
 */