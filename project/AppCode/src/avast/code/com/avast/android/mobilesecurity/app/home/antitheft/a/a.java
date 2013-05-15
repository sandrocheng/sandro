package com.avast.android.mobilesecurity.app.home.antitheft.a;

import android.annotation.SuppressLint;
import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build.VERSION;

public class a
{
  static
  {
    try
    {
      Class.forName("android.app.admin.DevicePolicyManager");
      return;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }

  public static void a()
  {
  }

  @SuppressLint({"NewApi"})
  public static boolean a(Context paramContext, String paramString)
  {
    if (Build.VERSION.SDK_INT >= 8)
      if (!paramString.equals("com.avast.android.at_play"))
        break label71;
    label71: for (String str = "com.avast.android.antitheft"; ; str = paramString)
    {
      ComponentName localComponentName = new ComponentName(paramString, str + ".deprecationwrappers.V22AndHigherDevicePolicyManagerAdmin");
      for (boolean bool = ((DevicePolicyManager)paramContext.getSystemService("device_policy")).isAdminActive(localComponentName); ; bool = false)
        return bool;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.antitheft.a.a
 * JD-Core Version:    0.6.2
 */