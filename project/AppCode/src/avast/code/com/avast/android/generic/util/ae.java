package com.avast.android.generic.util;

import android.content.Context;
import android.content.Intent;

public class ae
{
  public static void a(Context paramContext, Intent paramIntent)
  {
    try
    {
      a(paramIntent);
      paramContext.startService(paramIntent);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        t.a("AvastGeneric", "Unable to start service", localException);
    }
  }

  public static void a(Context paramContext, Intent paramIntent, String paramString)
  {
    if (paramString == null);
    while (true)
    {
      return;
      a(paramContext, paramIntent, paramString, ".service.CentralService");
      a(paramContext, paramIntent);
    }
  }

  public static void a(Context paramContext, Intent paramIntent, String paramString1, String paramString2)
  {
    if (paramString1 == null)
      return;
    if (paramString1.equals("com.avast.android.at_play"));
    for (String str = "com.avast.android.antitheft"; ; str = paramString1)
    {
      paramIntent.setClassName(paramString1, str + paramString2);
      break;
    }
  }

  public static void a(Intent paramIntent)
  {
    if (paramIntent == null);
    while (true)
    {
      return;
      paramIntent.addFlags(32);
    }
  }

  public static void b(Context paramContext, Intent paramIntent, String paramString)
  {
    a(paramContext, paramIntent, paramString, ".service.CentralService");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.ae
 * JD-Core Version:    0.6.2
 */