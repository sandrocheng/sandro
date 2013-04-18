package com.keniu.security.traffic;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.HandlerThread;
import com.keniu.security.MoSecurityApplication;
import com.keniu.security.monitor.a;
import com.keniu.security.monitor.b;
import com.keniu.security.util.at;

public final class r
  implements b
{
  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    MoSecurityApplication localMoSecurityApplication = MoSecurityApplication.a();
    y localy = y.a(localMoSecurityApplication);
    if (paramInt == a.p)
      if (at.a(localMoSecurityApplication));
    while (true)
    {
      return 0;
      if ((localy.w == 0) || (localy.w == 2));
      try
      {
        if (SaveTrafficModelSettingActivity.b != null)
        {
          SaveTrafficModelSettingActivity.b.quit();
          SaveTrafficModelSettingActivity.b = null;
          SaveTrafficModelSettingActivity.c = null;
        }
        label67: if ((localy.w == 0) || (localy.w == 1))
        {
          q.a(localMoSecurityApplication);
          f[] arrayOff2 = e.c(localMoSecurityApplication, false);
          int k = arrayOff2.length;
          String str2 = q.b();
          int m = 0;
          if (m < k)
          {
            f localf2 = arrayOff2[m];
            if (!str2.contains(String.valueOf(localf2.a)))
            {
              if (!localf2.d)
                break label169;
              localf2.l = true;
            }
            while (true)
            {
              localf2.h.setCallback(null);
              do
              {
                m++;
                break;
              }
              while (localf2.k);
              localf2.d = true;
            }
          }
          e.b(localMoSecurityApplication, false);
        }
        while (true)
        {
          label169: break;
          if (paramInt != a.o)
            continue;
          if (!at.a(localMoSecurityApplication))
            break;
          if ((localy.w == 0) || (localy.w == 2));
          try
          {
            if (SaveTrafficModelSettingActivity.b == null)
              SaveTrafficModelSettingActivity.b = new HandlerThread("thread_save_traffic");
            SaveTrafficModelSettingActivity.b.start();
            label255: if (SaveTrafficModelSettingActivity.c == null)
              SaveTrafficModelSettingActivity.c = new Handler(SaveTrafficModelSettingActivity.b.getLooper());
            SaveTrafficModelSettingActivity.c.post(SaveTrafficModelSettingActivity.d);
            if ((localy.w != 0) && (localy.w != 1))
              continue;
            q.a(localMoSecurityApplication);
            f[] arrayOff1 = e.c(localMoSecurityApplication, false);
            int i = arrayOff1.length;
            String str1 = q.b();
            int j = 0;
            if (j < i)
            {
              f localf1 = arrayOff1[j];
              if (!str1.contains(String.valueOf(localf1.a)))
              {
                if (!localf1.l)
                  break label380;
                localf1.l = false;
              }
              while (true)
              {
                j++;
                break;
                label380: localf1.d = false;
              }
            }
            e.b(localMoSecurityApplication, false);
          }
          catch (IllegalThreadStateException localIllegalThreadStateException)
          {
            break label255;
          }
        }
      }
      catch (Exception localException)
      {
        break label67;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.r
 * JD-Core Version:    0.6.2
 */