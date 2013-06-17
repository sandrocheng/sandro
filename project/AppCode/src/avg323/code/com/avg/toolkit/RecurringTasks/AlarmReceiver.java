package com.avg.toolkit.RecurringTasks;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.avg.toolkit.f;
import com.avg.toolkit.f.a;

public class AlarmReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("alarm_code", paramIntent.getIntExtra("alarm_code", -1));
      localBundle.putInt("alarm_code2", paramIntent.getIntExtra("alarm_code2", -1));
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
 * Qualified Name:     com.avg.toolkit.RecurringTasks.AlarmReceiver
 * JD-Core Version:    0.6.2
 */