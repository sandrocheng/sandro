package com.avast.android.mobilesecurity.app.firewall.core;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.avast.android.generic.ad;
import com.avast.android.generic.service.WakefulIntentService;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.widget.WidgetControlProvider;
import com.avast.android.mobilesecurity.t;

public class FirewallHandlingService extends WakefulIntentService
{
  private void a(Context paramContext)
  {
    try
    {
      m.c("Applying firewall rules in FirewallHandlingService...");
      if (!b.a(paramContext, null))
      {
        m.c("Applying firewall rules in FirewallHandlingService failed");
        a(2131493680, 0);
      }
      m.c("Applied firewall rules in FirewallHandlingService");
      return;
    }
    catch (Exception localException)
    {
      while (true)
        m.b("Error in FW app boot completed handling", localException);
    }
  }

  private void b(Context paramContext)
  {
    try
    {
      m.c("Roaming state handling, subthread entered");
      if (!b.a(paramContext, null))
      {
        m.c("Roaming state handling, error in applying FW rules, disabling");
        a(2131493681, 0);
        ((t)ad.a(paramContext, t.class)).g(false);
        WidgetControlProvider.a(paramContext);
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        m.b("Error in FW app roaming state handling", localException);
    }
  }

  public static void b(Context paramContext, Intent paramIntent)
  {
    WakefulIntentService.a(paramContext, paramIntent, paramContext.getPackageName() + ".app.firewall.core.FirewallHandlingService");
  }

  private void c(Context paramContext, Intent paramIntent)
  {
    try
    {
      b.a(paramContext, paramIntent.getStringExtra("pkg"), paramIntent.getIntExtra("uid", -1));
      return;
    }
    catch (Exception localException)
    {
      while (true)
        m.b("Error in FW app remove handling", localException);
    }
  }

  private void d(Context paramContext, Intent paramIntent)
  {
    while (true)
    {
      try
      {
        boolean bool = paramIntent.getBooleanExtra("enabled", false);
        if (bool)
          if (b.a(paramContext, null))
          {
            a(2131493663, 0);
            ((t)ad.a(paramContext, t.class)).g(bool);
            WidgetControlProvider.a(paramContext);
          }
          else
          {
            a(2131493670, 0);
          }
      }
      catch (Exception localException)
      {
        m.b("Error in FW app remove handling", localException);
      }
      if (!b.b(paramContext, null))
        break;
      a(2131493667, 0);
    }
    a(2131493677, 0);
  }

  protected void a(Context paramContext, Intent paramIntent)
  {
    String str;
    if ((paramIntent != null) && (paramIntent.getAction() != null))
    {
      str = paramIntent.getAction();
      if (!TextUtils.isEmpty(str))
        break label29;
    }
    while (true)
    {
      return;
      str = null;
      break;
      label29: m.c("Firewall handling service started for intent " + str);
      if (str.equals("com.avast.android.mobilesecurity.app.firewall.core.APP_REMOVED"))
        c(paramContext, paramIntent);
      else if (str.equals("com.avast.android.mobilesecurity.app.firewall.core.BOOT_COMPLETED"))
        a(paramContext);
      else if (str.equals("com.avast.android.mobilesecurity.app.firewall.core.ROAMING_CHANGED"))
        b(paramContext);
      else if (str.equals("com.avast.android.mobilesecurity.app.firewall.core.WIDGET_COMMAND"))
        d(paramContext, paramIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.core.FirewallHandlingService
 * JD-Core Version:    0.6.2
 */