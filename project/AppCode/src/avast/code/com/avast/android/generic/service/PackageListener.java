package com.avast.android.generic.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.avast.android.generic.ad;
import com.avast.android.generic.ah;
import com.avast.android.generic.util.t;
import com.avast.android.generic.util.z;

public class PackageListener extends BroadcastReceiver
{
  private void a(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.avast.android.generic.action.C2DM_ENABLE_SUITE");
    localIntent.putExtra("sourcePackage", paramContext.getPackageName());
    t.a(paramContext, "ALL", "Sending enable C2DM command");
    com.avast.android.generic.util.ae.a(localIntent);
    paramContext.sendOrderedBroadcast(localIntent, "com.avast.android.generic.COMM_PERMISSION");
  }

  public static void a(Context paramContext, String paramString, boolean paramBoolean)
  {
    if (((z.a(paramContext, "com.avast.android.antitheft")) && (paramString.equals("com.avast.android.at_play"))) || ((z.a(paramContext, "com.avast.android.at_play")) && (paramString.equals("com.avast.android.antitheft"))))
    {
      Intent localIntent2 = new Intent();
      localIntent2.setAction("com.avast.android.antitheft.action.DISABLE_YOUR_COMPONENTS");
      z.a(paramContext, "com.avast.android.at_play", localIntent2);
      return;
    }
    com.avast.android.generic.ae localae = (com.avast.android.generic.ae)ad.a(paramContext, ah.class);
    localae.a("packageInstTime", System.currentTimeMillis());
    localae.b();
    if (paramBoolean)
      com.avast.android.generic.ae.a(paramContext, false);
    while (true)
    {
      Intent localIntent1 = new Intent();
      localIntent1.setAction("com.avast.android.mobilesecurity.app.account.PUSH_ACCOUNT_COMMUNICATION");
      z.a(paramContext, paramString, localIntent1);
      break;
      com.avast.android.generic.ae.a(paramContext);
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    t.a(paramContext, "Package listener, " + paramIntent.getAction() + " intent received, context " + paramContext);
    if (paramContext == null);
    while (true)
    {
      return;
      if (paramContext.getApplicationContext() != null)
        paramContext = paramContext.getApplicationContext();
      boolean bool1 = paramIntent.getAction().equals("android.intent.action.PACKAGE_ADDED");
      boolean bool2 = paramIntent.getAction().equals("android.intent.action.PACKAGE_REMOVED");
      boolean bool3 = paramIntent.getBooleanExtra("android.intent.extra.REPLACING", false);
      boolean bool4 = paramIntent.getAction().equals("com.avast.android.generic.action.SHARE_SETTINGS");
      if (((bool1) || (bool2) || (bool4)) && (!bool3))
      {
        String str1;
        if (!bool4)
        {
          str1 = z.a(paramContext, paramIntent);
          if (str1 == null);
        }
        else
        {
          String str2;
          do
          {
            str2 = str1;
            t.a(paramContext, paramIntent.getAction() + " intent received");
            if (!bool4)
              z.a();
            String str3 = z.a(paramContext, str2, "com.avast.android.generic.action.SHARE_SETTINGS");
            if (str3 == null)
              break label230;
            t.a(paramContext, "Skipping ADD/REMOVE/SHARESETTINS intent because component " + str3 + " has for sure already handled it");
            break;
            str1 = paramIntent.getStringExtra("sourcePackage");
          }
          while (str1 != null);
          continue;
          label230: if ((bool4) && (str2 != null) && (str2.equals(paramContext.getPackageName())))
          {
            t.a(paramContext, "Skipping SHARESETTINGS intent because it just is myself");
          }
          else if (bool4)
          {
            com.avast.android.generic.ae.a(paramContext, true);
            Intent localIntent2 = new Intent();
            localIntent2.setAction("com.avast.android.mobilesecurity.app.account.PUSH_ACCOUNT_COMMUNICATION");
            z.a(paramContext, str2, localIntent2);
          }
          else if (bool1)
          {
            a(paramContext, str2, true);
          }
          else if (bool2)
          {
            com.avast.android.generic.ae localae = (com.avast.android.generic.ae)ad.a(paramContext, ah.class);
            String str4 = localae.G();
            if ((str4 != null) && (str2.equals(str4)))
            {
              t.a(paramContext, "C2DM owner " + str4 + " uninstalled, another suite member needs to take over");
              a(paramContext);
            }
            localae.a("packageInstTime", System.currentTimeMillis());
            localae.b();
            Intent localIntent1 = new Intent();
            localIntent1.setAction("com.avast.android.mobilesecurity.app.account.PUSH_ACCOUNT_COMMUNICATION");
            z.a(paramContext, paramContext.getPackageName(), localIntent1);
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.service.PackageListener
 * JD-Core Version:    0.6.2
 */