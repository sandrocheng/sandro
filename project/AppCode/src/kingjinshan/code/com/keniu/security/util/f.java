package com.keniu.security.util;

import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;

public final class f
{
  private static final String a = "package";
  private static final String b = "com.android.settings.ApplicationPkgName";
  private static final String c = "pkg";
  private static final String d = "android.settings.APPLICATION_DETAILS_SETTINGS";
  private static final String e = "com.android.settings";
  private static final String f = "com.android.settings.InstalledAppDetails";

  public static Intent a(String paramString)
  {
    Intent localIntent = new Intent();
    try
    {
      int j = Integer.parseInt(Build.VERSION.SDK);
      i = j;
      if (i >= 9)
      {
        localIntent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        localIntent.setData(Uri.fromParts("package", paramString, null));
        return localIntent;
      }
      if (i == 8);
      for (String str = "pkg"; ; str = "com.android.settings.ApplicationPkgName")
      {
        localIntent.setAction("android.intent.action.VIEW");
        localIntent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
        localIntent.putExtra(str, paramString);
        break;
      }
    }
    catch (Exception localException)
    {
      while (true)
        int i = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.f
 * JD-Core Version:    0.6.2
 */