package com.keniu.security.traffic;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import com.keniu.security.MoSecurityApplication;
import com.keniu.security.util.at;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class v
  implements Runnable
{
  public final void run()
  {
    MoSecurityApplication localMoSecurityApplication = MoSecurityApplication.a();
    if (at.a(localMoSecurityApplication))
    {
      List localList = ((ActivityManager)localMoSecurityApplication.getSystemService("activity")).getRunningAppProcesses();
      ArrayList localArrayList = new ArrayList();
      if ((localList != null) && (localList.size() > 0))
      {
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
          if (localRunningAppProcessInfo.importance == 400)
            localArrayList.add(Integer.valueOf(localRunningAppProcessInfo.uid));
        }
      }
      if (localArrayList.size() > 0)
      {
        q.a(localMoSecurityApplication);
        f[] arrayOff = e.c(localMoSecurityApplication, false);
        String str = q.b();
        int i = 0;
        if (i < arrayOff.length)
        {
          arrayOff[i].h.setCallback(null);
          if (!str.contains(String.valueOf(arrayOff[i].a)))
          {
            if (!localArrayList.contains(Integer.valueOf(arrayOff[i].a)))
              break label247;
            if ((!arrayOff[i].d) && (!arrayOff[i].k))
            {
              arrayOff[i].d = true;
              q.b(arrayOff[i].a, false);
              arrayOff[i].e = true;
            }
          }
          while (true)
          {
            i++;
            break;
            label247: if (arrayOff[i].d)
              arrayOff[i].d = false;
          }
        }
        e.b(localMoSecurityApplication, false);
      }
    }
    if (SaveTrafficModelSettingActivity.c != null)
      SaveTrafficModelSettingActivity.c.postDelayed(this, 30000L);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.v
 * JD-Core Version:    0.6.2
 */