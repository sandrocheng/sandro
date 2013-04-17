package com.tencent.qqpimsecure.service;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.media.AudioManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.SoftwareManager;
import f;
import ho;
import java.util.Calendar;
import jl;
import ov;

public class TimedTaskReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("taskType", -1);
    String str1 = paramIntent.getStringExtra("taskName");
    String str2 = paramIntent.getStringExtra("taskDes");
    int j = paramIntent.getIntExtra("taskDesStatus", -1);
    new StringBuilder("^^ type ").append(i).append(" name ").append(str1).append(" des ").append(str2).append(" stauts ").append(j).toString();
    switch (i)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      ov.a().a(paramIntent);
      ho.a().a(Integer.valueOf(str2).intValue());
      continue;
      ov.a().a(paramIntent);
      AudioManager localAudioManager = (AudioManager)paramContext.getSystemService("audio");
      switch (Integer.valueOf(str2).intValue())
      {
      default:
        break;
      case 0:
        localAudioManager.setRingerMode(2);
        localAudioManager.setVibrateSetting(0, 1);
        localAudioManager.setVibrateSetting(1, 1);
        break;
      case 1:
        localAudioManager.setRingerMode(2);
        localAudioManager.setVibrateSetting(0, 0);
        localAudioManager.setVibrateSetting(1, 0);
        break;
      case 2:
        localAudioManager.setRingerMode(1);
        localAudioManager.setVibrateSetting(0, 1);
        localAudioManager.setVibrateSetting(1, 1);
        break;
      case 3:
        localAudioManager.setRingerMode(0);
        localAudioManager.setVibrateSetting(0, 0);
        localAudioManager.setVibrateSetting(1, 0);
        continue;
        ov.a().a(paramIntent);
        if (j == 0)
        {
          ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class)).startUpApp(str2);
        }
        else if (j == 1)
        {
          ((ActivityManager)paramContext.getSystemService("activity")).restartPackage(str2);
        }
        else
        {
          new StringBuilder(" ^^　is schedule app ? false").toString();
          continue;
          jl localjl = f.e();
          int k = localjl.b.getInt("scanPlan", -1);
          int[] arrayOfInt = localjl.a();
          int m = localjl.b.getInt("scanTimeHour", 17);
          int n = localjl.b.getInt("scanTimeMini", 0);
          Calendar localCalendar1 = Calendar.getInstance();
          Calendar localCalendar2 = Calendar.getInstance();
          localCalendar2.set(11, m);
          localCalendar2.set(12, n);
          localCalendar2.set(13, 0);
          if (localCalendar1.get(12) == localCalendar2.get(12))
            if (k == 0)
            {
              for (int i1 = 0; i1 < arrayOfInt.length; i1++)
                if (arrayOfInt[i1] == 1)
                  localCalendar2.set(7, (i1 + 2) % 7);
              if (localCalendar1.get(7) != localCalendar2.get(7));
            }
            else
            {
              ov.a().c();
            }
        }
        break;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.service.TimedTaskReceiver
 * JD-Core Version:    0.6.2
 */