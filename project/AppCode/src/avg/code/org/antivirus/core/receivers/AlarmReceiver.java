package org.antivirus.core.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import org.antivirus.core.AVCoreService;
import org.antivirus.core.Logger;

public class AlarmReceiver extends BroadcastReceiver
{
  public static final long DAILY_INTERVAL = 86400000L;
  public static final long NEVER_INTERVAL = -1L;
  public static final long WEEKLY_INTERVAL = 604800000L;
  public static final String c_alarmCode = "alarm_code";
  public static final int c_alarmCodeCheck = 1;
  public static final int c_alarmCodeScan = 3;
  public static final int c_alarmCodeUpdate = 2;
  public static final String c_antivirus = "antivirus";
  public static final int c_trafficCounterEndPeriod = 5;
  public static final int c_trafficCounterRefresh = 4;

  public static boolean isValidInterval(long paramLong)
  {
    if ((86400000L == paramLong) || (604800000L == paramLong));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      String str = paramIntent.getStringExtra("antivirus");
      if ((str != null) && (str.compareTo("antivirus") == 0))
      {
        Intent localIntent = new Intent();
        localIntent.setComponent(AVCoreService.SERVICE_IDENTIFIER);
        localIntent.putExtra("__SAC", 3);
        localIntent.putExtra("__SAD", paramIntent.getIntExtra("alarm_code", -1));
        paramContext.startService(localIntent);
      }
      else
      {
        Logger.error("Invalid alarm");
      }
    }
    catch (Exception localException)
    {
      Logger.log(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.receivers.AlarmReceiver
 * JD-Core Version:    0.6.2
 */