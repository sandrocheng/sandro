package com.tencent.powermanager.service;

import ac;
import af;
import ah;
import aj;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import ap;
import aq;
import bo;
import cc;
import com.tencent.powermanager.PowerManagerApplication;
import com.tencent.powermanager.uilib.view.BatteryChargingWindow;
import com.tencent.tmsecure.common.TMSService;
import ds;
import e.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import r;
import s.a;
import y;

public class ScreenEventReceiver extends BroadcastReceiver
{
  private static List<e.b> b = new ArrayList();
  private String a = "ScreenEventReceiver";

  private static void a()
  {
    try
    {
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext())
        localIterator.next();
    }
    finally
    {
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i = 1;
    if (paramIntent.getAction().equals("android.intent.action.SCREEN_OFF"))
    {
      if ((s.a.d().r()) && (!BatteryEventReceiver.c))
        aj.a();
      if (BatteryEventReceiver.c)
        BatteryChargingWindow.g();
      if (!ac.e())
        ac.b();//mark add_saver_views
      TMSService.startService(new cc());
      paramContext.sendBroadcast(new Intent("powermanager_action_report"));
    }
    do
    {
      do
      {
        a();
        return;
      }
      while (!paramIntent.getAction().equals("android.intent.action.SCREEN_ON"));
      r localr1 = s.a.d();
      if (localr1.r())
        aj.b();
      if ((BatteryEventReceiver.c) && (localr1.u()))
        ac.b(paramContext);
    }
    while ((!BatteryEventReceiver.c) || (!s.a.e().u()));
    s.a.e().o(false);
    r localr2 = s.a.d();
    localr2.a(localr2.d());
    localr2.a(localr2.e());
    Context localContext = PowerManagerApplication.a();
    y localy = s.a.e();
    ap localap = ap.a();
    r localr3 = s.a.d();
    int j = localy.y();
    label220: Intent localIntent;
    label316: int k;
    label338: int m;
    if (j == -1)
    {
      aq.a().e();
      localr3.c(localy.z());
      localap.a(localy.w());
      localap.b(localy.x());
      r.e(Integer.parseInt(localContext.getResources().getStringArray(2130968576)[localy.A()]));
      localr3.b(localy.E());
      localr3.c(localy.B());
      r.d(localy.D());
      if (!localy.v())
        break label467;
      ah.a().c();
      localIntent = new Intent("action.mode.status.changed");
      if (!localy.w())
        break label476;
      k = i;
      localIntent.putExtra("extra_wifi_status", k);
      if (!localy.x())
        break label482;
      m = i;
      label359: localIntent.putExtra("extra_gprs_status", m);
      if (!localy.B())
        break label488;
    }
    while (true)
    {
      localIntent.putExtra("extra_vibrate", i);
      localIntent.putExtra("extra_flight_status", false);
      localIntent.putExtra("extra_screen_light", localy.y());
      localContext.sendBroadcast(localIntent);
      ds.a().b(PowerManagerApplication.a().getString(2131099807));
      double d = af.a().c();
      bo.a().a(d);
      break;
      aq.a().d();
      aq.a().a(j, localContext);
      break label220;
      label467: ah.a().b();
      break label316;
      label476: k = 0;
      break label338;
      label482: m = 0;
      break label359;
      label488: i = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.service.ScreenEventReceiver
 * JD-Core Version:    0.6.2
 */