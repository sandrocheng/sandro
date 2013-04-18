package com.keniu.security.main.a;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.widget.Toast;
import com.jxphone.mosecurity.b.c;
import com.keniu.security.f.ab;
import com.keniu.security.f.f;
import com.keniu.security.malware.bz;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

public final class n
  implements m
{
  public static boolean a = false;
  public String b = "进程清理，释放内存";
  public String c = "立即清理";
  public String d = "已优化";
  public String e = "已优化";
  public String f = "进程清理，释放内存";
  public int g = k.c;
  public int h;
  private long i = j();
  private ActivityManager j;
  private int k;
  private Context l;

  private boolean c(Context paramContext)
  {
    this.j = ((ActivityManager)paramContext.getSystemService("activity"));
    PackageManager localPackageManager = paramContext.getPackageManager();
    ActivityManager.MemoryInfo localMemoryInfo = new ActivityManager.MemoryInfo();
    this.j.getMemoryInfo(localMemoryInfo);
    List localList = this.j.getRunningAppProcesses();
    Iterator localIterator;
    if ((localList != null) && (localList.size() > 0))
      localIterator = localList.iterator();
    try
    {
      do
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
        if ((1 == (0x1 & localPackageManager.getPackageInfo(localRunningAppProcessInfo.processName, 1).applicationInfo.flags)) || (localRunningAppProcessInfo.processName.compareToIgnoreCase("com.ijinshan.mguard") == 0))
          localIterator.remove();
      }
      while (localIterator.hasNext());
      this.k = localList.size();
      if (100L * localMemoryInfo.availMem <= 1024L * (50L * this.i))
      {
        float f1 = Math.max(Math.min((float)(1024L * this.i - localMemoryInfo.availMem) / (float)(1024L * this.i), 0.99F), 0.01F);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf((int)(f1 * 100.0F));
        String str = String.format("%d%%", arrayOfObject);
        this.b = ("运行进程" + this.k + "个,内存占用" + str);
        bool = false;
        return bool;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localIterator.remove();
        continue;
        this.b = "进程清理，释放内存";
        boolean bool = true;
      }
    }
  }

  private void d(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    ActivityManager.MemoryInfo localMemoryInfo1 = new ActivityManager.MemoryInfo();
    ActivityManager.MemoryInfo localMemoryInfo2 = new ActivityManager.MemoryInfo();
    this.j.getMemoryInfo(localMemoryInfo1);
    List localList = this.j.getRunningAppProcesses();
    c localc = com.keniu.security.b.e.a(paramContext);
    com.jxphone.mosecurity.d.m localm = new com.jxphone.mosecurity.d.m();
    Iterator localIterator = localList.iterator();
    int m = 0;
    ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo;
    com.keniu.security.d.e locale;
    do
    {
      if (!localIterator.hasNext())
        break;
      localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
      locale = new com.keniu.security.d.e();
      locale.a(localRunningAppProcessInfo.processName);
    }
    while ((!localc.c(locale)) || (localRunningAppProcessInfo.processName.compareToIgnoreCase("com.ijinshan.mguard") == 0) || (localRunningAppProcessInfo.processName.compareToIgnoreCase("com.ijinshan.mPrivacy") == 0) || (localRunningAppProcessInfo.processName.compareToIgnoreCase("com.ijinshan.kbatterydoctor") == 0) || (localRunningAppProcessInfo.processName.compareToIgnoreCase("com.ijinshan.duba") == 0));
    while (true)
    {
      try
      {
        ApplicationInfo localApplicationInfo = localPackageManager.getPackageInfo(localRunningAppProcessInfo.processName, 1).applicationInfo;
        if ((localApplicationInfo == null) || (1 == (0x1 & localApplicationInfo.flags)) || (localm.e(localApplicationInfo.packageName)))
          break label496;
        localm.a(localApplicationInfo.packageName);
        n = m + 1;
        m = n;
        break;
        this.j.getMemoryInfo(localMemoryInfo2);
        boolean bool = localMemoryInfo1.availMem < localMemoryInfo2.availMem;
        float f1 = 0.0F;
        if (bool)
          f1 = (float)(localMemoryInfo2.availMem - localMemoryInfo1.availMem) / 1048576.0F;
        if (m > 0)
        {
          if (f1 > 0.1F)
          {
            String str4 = paramContext.getString(2131429420);
            Object[] arrayOfObject4 = new Object[2];
            arrayOfObject4[0] = Integer.valueOf(m);
            arrayOfObject4[1] = Float.valueOf(f1);
            Toast.makeText(paramContext, String.format(str4, arrayOfObject4), 0).show();
            if (f1 > 0.1F)
            {
              String str2 = paramContext.getString(2131429420);
              Object[] arrayOfObject2 = new Object[2];
              arrayOfObject2[0] = Integer.valueOf(m);
              arrayOfObject2[1] = Float.valueOf(f1);
              this.b = String.format(str2, arrayOfObject2);
              this.h = k.g;
            }
          }
          else
          {
            String str3 = paramContext.getString(2131429421);
            Object[] arrayOfObject3 = new Object[1];
            arrayOfObject3[0] = Integer.valueOf(m);
            Toast.makeText(paramContext, String.format(str3, arrayOfObject3), 0).show();
            continue;
          }
        }
        else
        {
          Toast.makeText(paramContext, 2131429422, 0).show();
          continue;
        }
        String str1 = paramContext.getString(2131429421);
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(m);
        this.b = String.format(str1, arrayOfObject1);
        continue;
      }
      catch (Exception localException)
      {
      }
      break;
      label496: int n = m;
    }
  }

  private static long j()
  {
    long l1 = 0L;
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
      l1 = Integer.valueOf(localBufferedReader.readLine().split("\\s+")[1]).intValue();
      localBufferedReader.close();
      l2 = l1;
      return l2;
    }
    catch (IOException localIOException)
    {
      while (true)
        long l2 = l1;
    }
  }

  public final int a()
  {
    return this.g;
  }

  public final String a(int paramInt)
  {
    String str;
    if (paramInt == k.k)
      str = this.b;
    while (true)
    {
      return str;
      if (paramInt == k.l)
        str = this.c;
      else if (paramInt == k.m)
        str = this.d;
      else if (paramInt == k.n)
        str = this.e;
      else if (paramInt == k.o)
        str = this.f;
      else
        str = null;
    }
  }

  public final void a(Context paramContext)
  {
    bz.a();
    if (bz.b())
    {
      String str = f.a(paramContext.getFilesDir().getPath()) + "ap.jar";
      ab.a();
      ab.a(new File(str), paramContext.getApplicationContext());
      if (!bz.a().e())
      {
        bz.a().c();
        com.keniu.security.main.MainActivity.c = true;
        a = true;
      }
    }
    while (true)
    {
      return;
      d(paramContext);
      continue;
      d(paramContext);
    }
  }

  public final void a(l paraml, Context paramContext)
  {
    this.l = paramContext;
    paraml.a(this);
    if (c(paramContext));
    for (this.h = k.g; ; this.h = k.i)
    {
      paraml.b(this);
      return;
    }
  }

  public final void a(boolean paramBoolean)
  {
    if (a)
    {
      a = false;
      d(this.l);
    }
  }

  public final int b()
  {
    return this.h;
  }

  public final void b(Context paramContext)
  {
  }

  public final String c()
  {
    return this.b;
  }

  public final int d()
  {
    return 80;
  }

  public final void e()
  {
    this.k = 0;
  }

  public final void f()
  {
  }

  public final boolean g()
  {
    if ((this.h == k.h) || (this.h == k.g));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean h()
  {
    return false;
  }

  public final boolean i()
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.a.n
 * JD-Core Version:    0.6.2
 */