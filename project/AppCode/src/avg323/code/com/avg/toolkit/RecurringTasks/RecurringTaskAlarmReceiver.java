package com.avg.toolkit.RecurringTasks;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.avg.toolkit.f;
import com.avg.toolkit.f.a;

public class RecurringTaskAlarmReceiver extends BroadcastReceiver
{
  public static void a(Context paramContext, String paramString, int paramInt)
  {
    Intent localIntent = new Intent(paramContext, RecurringTaskAlarmReceiver.class);
    localIntent.setAction(paramString);
    localIntent.putExtra("alarm_code", paramInt);
    paramContext.sendBroadcast(localIntent);
  }

  public static void a(Context paramContext, String paramString, int paramInt1, int paramInt2, long paramLong1, long paramLong2)
  {
    if ((paramInt2 != 0) && (paramInt2 != 3))
      a.a();
    Intent localIntent = new Intent(paramContext, RecurringTaskAlarmReceiver.class);
    localIntent.setAction(paramString);
    localIntent.putExtra("alarm_code", paramInt1);
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, localIntent, 134217728);
    ((AlarmManager)paramContext.getSystemService("alarm")).setRepeating(paramInt2, paramLong1, paramLong2, localPendingIntent);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("alarm_code", paramIntent.getIntExtra("alarm_code", -1));
      localBundle.putString("__SAD", paramIntent.getAction());
      f.a(paramContext, 1000, 1003, localBundle);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        a.a(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.RecurringTasks.RecurringTaskAlarmReceiver
 * JD-Core Version:    0.6.2
 */