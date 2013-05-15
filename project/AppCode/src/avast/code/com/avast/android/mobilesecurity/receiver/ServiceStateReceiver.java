package com.avast.android.mobilesecurity.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;
import com.avast.android.generic.ad;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.firewall.core.FirewallHandlingService;
import com.avast.android.mobilesecurity.t;

public class ServiceStateReceiver extends BroadcastReceiver
{
  public static void a(Context paramContext)
  {
    t localt = (t)ad.a(paramContext, t.class);
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    try
    {
      boolean bool3 = localTelephonyManager.isNetworkRoaming();
      bool1 = bool3;
      boolean bool2 = localt.b("roamingWasActive", false);
      if (bool2 != bool1)
      {
        m.c("Roaming state changed (old " + bool2 + ", new " + bool1 + ")");
        localt.a("roamingWasActive", bool1);
        localt.b();
        a(paramContext, bool1);
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        m.b("Error getting roaming state", localException);
        boolean bool1 = false;
      }
    }
  }

  private static void a(Context paramContext, boolean paramBoolean)
  {
    if (((t)ad.a(paramContext, t.class)).X())
    {
      m.c("Roaming state handling, FW is enabled");
      FirewallHandlingService.b(paramContext, new Intent("com.avast.android.mobilesecurity.app.firewall.core.ROAMING_CHANGED"));
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!paramIntent.getAction().equals("android.intent.action.SERVICE_STATE"))
      m.e("ServiceState onReceived() called with " + paramIntent);
    while (true)
    {
      return;
      try
      {
        a(paramContext);
      }
      catch (Exception localException)
      {
        m.b("Error in handling roaming top", localException);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.receiver.ServiceStateReceiver
 * JD-Core Version:    0.6.2
 */