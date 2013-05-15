package com.avast.android.mobilesecurity.receiver;

import android.app.IntentService;
import android.content.Intent;
import com.avast.android.generic.ad;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.account.AccountReportService;
import com.avast.android.mobilesecurity.app.fileshield.FileShieldService;
import com.avast.android.mobilesecurity.app.firewall.core.FirewallHandlingService;
import com.avast.android.mobilesecurity.app.locking.core.AppLockingService;
import com.avast.android.mobilesecurity.app.scanner.AlarmReceiver;
import com.avast.android.mobilesecurity.app.trafficinfo.NetworkStatsService;
import com.avast.android.mobilesecurity.app.webshield.WebshieldService;
import com.avast.android.mobilesecurity.service.UpdateService;
import com.avast.android.mobilesecurity.t;

public class BootCompletedService extends IntentService
{
  public BootCompletedService()
  {
    super("BootCompletedService");
  }

  protected void onHandleIntent(Intent paramIntent)
  {
    t localt = (t)ad.a(this, t.class);
    m.d("launching background services");
    startService(new Intent(this, WebshieldService.class));
    startService(new Intent(this, FileShieldService.class));
    startService(new Intent(this, AppLockingService.class));
    if ((localt.aK()) && (NetworkStatsService.c()))
      NetworkStatsService.a(this, new Intent("com.avast.android.mobilesecurity.action.NETWORK_STATS_POLL"));
    m.d("setting up alerts");
    localt.a("roamingWasActive", false);
    localt.b();
    ServiceStateReceiver.a(this);
    if (localt.aQ())
      AlarmReceiver.a(this, localt.aR(), localt.aS());
    if (localt.aC())
      UpdateService.d(this);
    com.avast.android.generic.util.b.a(new b(this), new Void[0]);
    AccountReportService.a(this);
    if (localt.X())
      FirewallHandlingService.b(this, new Intent("com.avast.android.mobilesecurity.app.firewall.core.BOOT_COMPLETED"));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.receiver.BootCompletedService
 * JD-Core Version:    0.6.2
 */