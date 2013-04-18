package com.keniu.security.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.provider.Settings.System;
import android.util.Log;
import com.ijinshan.kinghelper.firewall.dc;
import com.ijinshan.kpref.t;
import com.keniu.security.MoSecurityApplication;
import com.keniu.security.malware.bz;
import com.keniu.security.monitor.b;
import com.keniu.security.protection.ScreenLockService;
import com.keniu.security.protection.ui.ag;
import com.keniu.security.sync.k;
import com.keniu.security.sync.ui.DialogAct;
import com.keniu.security.traffic.e;
import com.keniu.security.traffic.y;
import com.keniu.security.util.av;
import java.io.PrintStream;

public class StartupReceiver extends BroadcastReceiver
  implements b
{
  private Handler a = new m(this);
  private Context b = null;

  public static boolean a(Context paramContext, String paramString)
  {
    String str1 = ag.n(paramContext);
    String str2 = t.b(paramContext).getString(paramContext.getString(2131429249), null);
    boolean bool;
    if ((str1 != null) && (str1.contains(paramString)))
    {
      ag.a(paramContext, false);
      bool = false;
    }
    while (true)
    {
      return bool;
      if ((str2 != null) && (str2.equals(paramString)))
      {
        bool = false;
      }
      else
      {
        ag.a(paramContext, true);
        bool = true;
      }
    }
  }

  private static void b()
  {
    dc.a(MoSecurityApplication.a());
    y.a(MoSecurityApplication.a());
    if ((y.b(MoSecurityApplication.a())) || (dc.b()))
    {
      MoSecurityApplication localMoSecurityApplication = MoSecurityApplication.a();
      Intent localIntent = new Intent(localMoSecurityApplication, DialogAct.class);
      localIntent.setFlags(268435456);
      localIntent.putExtra("dialog_type", 4);
      localMoSecurityApplication.startActivity(localIntent);
    }
    while (true)
    {
      return;
      k localk = k.a();
      localk.a(MoSecurityApplication.a());
      localk.a("last_imsi_for_sim_change", av.c(MoSecurityApplication.a()));
    }
  }

  private static void b(Context paramContext)
  {
    System.out.println("startupReceiver startLock");
    Intent localIntent = new Intent(paramContext, ScreenLockService.class);
    localIntent.putExtra("type", 1);
    localIntent.putExtra("preview", false);
    paramContext.startService(localIntent);
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    if (paramInt == com.keniu.security.monitor.a.x)
    {
      Log.e("monitorNotify", "TYPE_ENTER_ROOT");
      if (e.j.e())
      {
        Log.e("monitorNotify", "TYPE_ENTER_ROOT2");
        e.a(this.b, false);
      }
      com.keniu.security.monitor.a.a().a(paramInt, this);
    }
    return 0;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.intent.action.BOOT_COMPLETED"))
    {
      this.b = paramContext;
      if (com.keniu.security.a.a(paramContext).ao())
      {
        Intent localIntent = new Intent(paramContext, MoSecurityService.class);
        localIntent.putExtra("IsAutoStartup", true);
        paramContext.startService(localIntent);
      }
      if (ag.g(paramContext))
      {
        if (!t.b(paramContext).getBoolean(paramContext.getString(2131429251), false))
          break label110;
        System.out.println("order suoding");
        b(paramContext);
      }
    }
    label150: 
    while (true)
    {
      new Thread(new n(this, paramContext)).start();
      return;
      label110: if (Settings.System.getInt(paramContext.getContentResolver(), "airplane_mode_on", 0) != 0);
      for (int i = 1; ; i = 0)
      {
        if (i != 0)
          break label150;
        new p(this, paramContext).start();
        break;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.service.StartupReceiver
 * JD-Core Version:    0.6.2
 */