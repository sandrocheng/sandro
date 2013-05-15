package com.avast.android.antitheft_setup_components.app.home.b;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.provider.Settings.SettingNotFoundException;
import android.provider.Settings.System;
import android.support.v4.app.Fragment;
import com.avast.android.antitheft_setup_components.g;
import com.avast.android.generic.a;
import com.avast.android.generic.ui.b.d;
import com.avast.android.generic.util.q;

public class c extends d
{
  public c()
  {
    super(g.C, g.e);
    a(com.avast.android.antitheft_setup_components.c.a);
    a("http://support.avast.com/index.php?languageid=1&group=eng&_m=knowledgebase&_a=viewarticle&kbarticleid=1034#idt_165");
  }

  public static boolean a(Context paramContext)
  {
    try
    {
      int i = Settings.System.getInt(paramContext.getContentResolver(), "install_non_market_apps");
      bool = false;
      if (i == 0)
        bool = true;
      return bool;
    }
    catch (Settings.SettingNotFoundException localSettingNotFoundException)
    {
      while (true)
        boolean bool = false;
    }
  }

  public String a()
  {
    return "Non-market disabled";
  }

  public boolean a(Context paramContext, Fragment paramFragment)
  {
    try
    {
      if (Build.VERSION.SDK_INT < 14)
        paramFragment.startActivityForResult(new Intent("android.settings.APPLICATION_SETTINGS"), 100);
      else
        throw new Exception();
    }
    catch (Exception localException1)
    {
      try
      {
        paramFragment.startActivityForResult(new Intent("android.settings.SECURITY_SETTINGS"), 100);
      }
      catch (Exception localException2)
      {
        try
        {
          Intent localIntent = new Intent();
          localIntent.setComponent(new ComponentName("com.android.settings", "com.android.settings.Settings"));
          localIntent.setAction("android.intent.action.MAIN");
          paramFragment.startActivityForResult(localIntent, 100);
        }
        catch (Exception localException3)
        {
          int i = g.K;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = q.a(paramContext, localException3);
          a.a(paramContext, paramContext.getString(i, arrayOfObject));
        }
      }
    }
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.b.c
 * JD-Core Version:    0.6.2
 */