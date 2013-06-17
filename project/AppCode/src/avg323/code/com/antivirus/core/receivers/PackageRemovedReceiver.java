package com.antivirus.core.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.antivirus.core.a;

public class PackageRemovedReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().compareTo("android.intent.action.PACKAGE_REMOVED") == 0)
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("package_name", paramIntent.getDataString());
      localBundle.putBoolean("updating", paramIntent.getBooleanExtra("android.intent.extra.REPLACING", false));
      a.a(paramContext, 2000, 10, localBundle);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.receivers.PackageRemovedReceiver
 * JD-Core Version:    0.6.2
 */