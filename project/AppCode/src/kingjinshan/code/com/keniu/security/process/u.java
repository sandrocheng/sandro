package com.keniu.security.process;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import android.os.Debug.MemoryInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.jxphone.mosecurity.b.c;
import com.jxphone.mosecurity.d.m;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class u extends Thread
{
  private u(s params, byte paramByte)
  {
  }

  public final void run()
  {
    if (((TelephonyManager)s.a(this.a).getSystemService("phone")).getCallState() != 0)
      return;
    s.a(this.a, s.a(this.a).getSharedPreferences("com.ijinshan.mguard_preferences", 0));
    c localc = com.keniu.security.b.e.a(s.a(this.a));
    s.a(this.a, (ActivityManager)s.a(this.a).getSystemService("activity"));
    ActivityManager.MemoryInfo localMemoryInfo1 = new ActivityManager.MemoryInfo();
    s.b(this.a).getMemoryInfo(localMemoryInfo1);
    s.a(this.a, s.b(this.a).getRunningAppProcesses());
    long l1 = localMemoryInfo1.availMem;
    PackageManager localPackageManager = s.a(this.a).getPackageManager();
    m localm = new m();
    com.keniu.security.d.e locale = new com.keniu.security.d.e();
    s.b(this.a, new ArrayList());
    s.c(this.a).clear();
    int[] arrayOfInt = new int[1];
    Iterator localIterator = s.d(this.a).iterator();
    long l2 = 0L;
    label622: 
    while (true)
    {
      ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo;
      String[] arrayOfString;
      int j;
      if (localIterator.hasNext())
      {
        localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
        if (localRunningAppProcessInfo.importance == 400)
        {
          arrayOfString = localRunningAppProcessInfo.pkgList;
          j = arrayOfString.length;
        }
      }
      else
      {
        for (int k = 0; ; k++)
        {
          if (k >= j)
            break label622;
          String str = arrayOfString[k];
          if ((!TextUtils.isEmpty(str)) && (!str.equalsIgnoreCase(s.a(this.a).getPackageName())))
          {
            locale.a(str);
            if (localc.c(locale))
            {
              try
              {
                ApplicationInfo localApplicationInfo = localPackageManager.getPackageInfo(str, 1).applicationInfo;
                arrayOfInt[0] = localRunningAppProcessInfo.pid;
                if ((!s.c(this.a).contains(str)) && (!localm.e(str)))
                {
                  s.c(this.a).add(str);
                  Debug.MemoryInfo[] arrayOfMemoryInfo = (Debug.MemoryInfo[])s.b(this.a).getClass().getMethod("getProcessMemoryInfo", new Class[] { [I.class }).invoke(s.b(this.a), new Object[] { arrayOfInt });
                  Debug.MemoryInfo localMemoryInfo = arrayOfMemoryInfo[0];
                  l2 += ((Integer)localMemoryInfo.getClass().getMethod("getTotalPss", new Class[0]).invoke(localMemoryInfo, new Object[0])).intValue();
                }
                if ((0x1 & localApplicationInfo.flags) == 1)
                  localm.b(str);
                else
                  localm.a(str);
              }
              catch (Exception localException)
              {
              }
              if (localc != null)
                localc.b();
              int i = s.c(this.a).size();
              if (i == 0)
                break;
              ActivityManager.MemoryInfo localMemoryInfo2 = new ActivityManager.MemoryInfo();
              s.b(this.a).getMemoryInfo(localMemoryInfo2);
              long l3 = localMemoryInfo2.availMem;
              if (Integer.parseInt(Build.VERSION.SDK) < 5);
              for (float f = (float)(l3 - l1) / 1024.0F / 1024.0F; ; f = (float)l2 / 1024.0F)
              {
                if (f <= 0.5D)
                  f = 0.5F;
                s.a(this.a, i, f);
                break;
              }
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.u
 * JD-Core Version:    0.6.2
 */