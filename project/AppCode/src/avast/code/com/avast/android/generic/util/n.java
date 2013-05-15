package com.avast.android.generic.util;

import android.content.ComponentName;
import android.content.Intent;
import android.support.v4.app.Fragment;

public class n
{
  public static void a(Fragment paramFragment, String paramString)
  {
    Intent localIntent2;
    try
    {
      Intent localIntent1 = new Intent();
      localIntent1.setAction("android.intent.action.VIEW");
      localIntent1.setComponent(new ComponentName("com.android.settings", "com.android.settings.DeviceAdminSettings"));
      localIntent1.addFlags(268435456);
      paramFragment.startActivity(localIntent1);
      return;
    }
    catch (Exception localException)
    {
      localIntent2 = new Intent();
      localIntent2.setAction("android.intent.action.VIEW");
      localIntent2.addFlags(268435456);
      if (!paramString.equals("com.avast.android.at_play"));
    }
    for (String str = "com.avast.android.antitheft"; ; str = paramString)
    {
      localIntent2.putExtra("android.app.extra.DEVICE_ADMIN", new ComponentName(paramString, str + ".deprecationwrappers.V22AndHigherDevicePolicyManagerAdmin"));
      localIntent2.setComponent(new ComponentName("com.android.settings", "com.android.settings.DeviceAdminAdd"));
      paramFragment.startActivity(localIntent2);
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.n
 * JD-Core Version:    0.6.2
 */