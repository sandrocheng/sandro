package com.avast.android.mobilesecurity.app.scanner;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.avast.android.generic.ad;
import com.avast.android.generic.d;
import com.avast.android.generic.util.ak;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.t;
import java.util.Date;

public class AlarmReceiver extends BroadcastReceiver
{
  private static String a = "start";

  public static void a(Context paramContext, int paramInt1, int paramInt2)
  {
    long l1 = ak.a(paramInt1, paramInt2);
    m.c("Setting next automatic scan to " + new Date(l1).toString());
    Intent localIntent = new Intent(paramContext, AlarmReceiver.class);
    if (l1 == -1L)
      localIntent.putExtra(a, false);
    for (long l2 = 120000L + System.currentTimeMillis(); ; l2 = l1)
    {
      PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, localIntent, 268435456);
      ((AlarmManager)paramContext.getSystemService("alarm")).set(1, l2, localPendingIntent);
      return;
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    t localt;
    if (paramIntent.getBooleanExtra(a, true))
    {
      localt = (t)ad.a(paramContext, t.class);
      if ((!localt.aO()) && (!localt.aP()))
        break label73;
    }
    label73: for (int i = 1; ; i = 0)
    {
      if ((i != 0) && (localt.aQ()) && ((d.a(d.a()) & localt.aR()) > 0))
        ScannerScanService.a(paramContext, true, false, 8);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.AlarmReceiver
 * JD-Core Version:    0.6.2
 */