package com.keniu.security.service;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.Service;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import android.os.Debug.MemoryInfo;
import android.os.IBinder;
import android.text.TextUtils;
import android.widget.RemoteViews;
import android.widget.Toast;
import com.jxphone.mosecurity.a.a;
import com.jxphone.mosecurity.b.c;
import com.jxphone.mosecurity.d.m;
import com.keniu.security.process.ProcessWidget;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ProcessService extends Service
{
  private SharedPreferences a;
  private ActivityManager b;
  private List c;
  private List d;

  private static int a(Debug.MemoryInfo paramMemoryInfo)
  {
    return ((Integer)paramMemoryInfo.getClass().getMethod("getTotalPss", new Class[0]).invoke(paramMemoryInfo, new Object[0])).intValue();
  }

  private long a()
  {
    return this.a.getLong("cleartime", 0L);
  }

  private void a(int paramInt, float paramFloat)
  {
    SharedPreferences.Editor localEditor = this.a.edit();
    localEditor.putLong("cleartime", System.currentTimeMillis());
    StringBuilder localStringBuilder = new StringBuilder();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Float.valueOf(paramFloat);
    localEditor.putString("clearmemory", String.format("%1$.2f", arrayOfObject) + "MB");
    localEditor.putInt("killCount", paramInt);
    localEditor.commit();
  }

  private void a(int paramInt, long paramLong)
  {
    float f = (float)paramLong / 1024.0F / 1024.0F;
    RemoteViews localRemoteViews = new RemoteViews(getPackageName(), 2130903259);
    String str1 = getString(2131428686);
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    localRemoteViews.setTextViewText(2131231522, String.format(str1, arrayOfObject1));
    String str2 = getString(2131428687);
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Float.valueOf(f);
    localRemoteViews.setTextViewText(2131231523, String.format(str2, arrayOfObject2));
    ComponentName localComponentName = new ComponentName(this, ProcessWidget.class);
    AppWidgetManager.getInstance(this).updateAppWidget(localComponentName, localRemoteViews);
  }

  private int b()
  {
    this.d.clear();
    this.c = this.b.getRunningAppProcesses();
    if (this.c == null);
    for (int k = 0; ; k = this.d.size() - 1)
    {
      return k;
      int i = this.c.size();
      for (int j = 0; j < i; j++)
        for (String str : ((ActivityManager.RunningAppProcessInfo)this.c.get(j)).pkgList)
          if (!this.d.contains(str))
            this.d.add(str);
    }
  }

  private void c()
  {
    this.a = getSharedPreferences("com.ijinshan.mguard_preferences", 0);
    if (System.currentTimeMillis() - this.a.getLong("cleartime", 0L) < 10000L)
      Toast.makeText(this, getString(2131428690), 0).show();
    c localc;
    while (true)
    {
      return;
      localc = com.keniu.security.b.e.a(this);
      if (!localc.a().isEmpty())
        break;
      b localb = new b(this, this);
      localb.d();
    }
    this.b = ((ActivityManager)getSystemService("activity"));
    ActivityManager.MemoryInfo localMemoryInfo1 = new ActivityManager.MemoryInfo();
    this.b.getMemoryInfo(localMemoryInfo1);
    this.c = this.b.getRunningAppProcesses();
    long l1 = localMemoryInfo1.availMem;
    PackageManager localPackageManager = getPackageManager();
    m localm = new m();
    com.keniu.security.d.e locale = new com.keniu.security.d.e();
    this.d = new ArrayList();
    int i = b();
    this.d.clear();
    int[] arrayOfInt = new int[1];
    Iterator localIterator = this.c.iterator();
    long l2 = 0L;
    label867: 
    while (true)
    {
      ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo;
      String[] arrayOfString;
      int m;
      if (localIterator.hasNext())
      {
        localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
        arrayOfString = localRunningAppProcessInfo.pkgList;
        m = arrayOfString.length;
      }
      for (int n = 0; ; n++)
      {
        if (n >= m)
          break label867;
        String str4 = arrayOfString[n];
        if ((!TextUtils.isEmpty(str4)) && (!str4.equalsIgnoreCase(getPackageName())))
        {
          locale.a(str4);
          try
          {
            if (!localc.c(locale))
              continue;
            ApplicationInfo localApplicationInfo = localPackageManager.getPackageInfo(str4, 1).applicationInfo;
            arrayOfInt[0] = localRunningAppProcessInfo.pid;
            if ((!this.d.contains(str4)) && (!localm.e(str4)))
            {
              this.d.add(str4);
              Debug.MemoryInfo localMemoryInfo = ((Debug.MemoryInfo[])this.b.getClass().getMethod("getProcessMemoryInfo", new Class[] { [I.class }).invoke(this.b, new Object[] { arrayOfInt }))[0];
              l2 += ((Integer)localMemoryInfo.getClass().getMethod("getTotalPss", new Class[0]).invoke(localMemoryInfo, new Object[0])).intValue();
            }
            if ((0x1 & localApplicationInfo.flags) == 1)
              localm.b(str4);
            else
              localm.a(str4);
          }
          catch (Exception localException)
          {
          }
          if (localc != null)
            localc.b();
          int j = this.d.size();
          if (j == 0)
          {
            Toast.makeText(this, getString(2131428689), 0).show();
            break;
          }
          ActivityManager.MemoryInfo localMemoryInfo2 = new ActivityManager.MemoryInfo();
          this.b.getMemoryInfo(localMemoryInfo2);
          long l3 = localMemoryInfo2.availMem;
          if (Integer.parseInt(Build.VERSION.SDK) < 5);
          for (float f1 = (float)(l3 - l1) / 1024.0F / 1024.0F; ; f1 = (float)l2 / 1024.0F)
          {
            if (f1 <= 0.5D)
              f1 = 0.5F;
            String str1 = getString(2131428688);
            Object[] arrayOfObject1 = new Object[2];
            arrayOfObject1[0] = Integer.valueOf(j);
            arrayOfObject1[1] = Float.valueOf(f1);
            Toast.makeText(this, String.format(str1, arrayOfObject1), 0).show();
            SharedPreferences.Editor localEditor = this.a.edit();
            localEditor.putLong("cleartime", System.currentTimeMillis());
            StringBuilder localStringBuilder = new StringBuilder();
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = Float.valueOf(f1);
            localEditor.putString("clearmemory", String.format("%1$.2f", arrayOfObject2) + "MB");
            localEditor.putInt("killCount", j);
            localEditor.commit();
            int k = i - j;
            float f2 = (float)(l1 + 1024L * l2) / 1024.0F / 1024.0F;
            RemoteViews localRemoteViews = new RemoteViews(getPackageName(), 2130903259);
            String str2 = getString(2131428686);
            Object[] arrayOfObject3 = new Object[1];
            arrayOfObject3[0] = Integer.valueOf(k);
            localRemoteViews.setTextViewText(2131231522, String.format(str2, arrayOfObject3));
            String str3 = getString(2131428687);
            Object[] arrayOfObject4 = new Object[1];
            arrayOfObject4[0] = Float.valueOf(f2);
            localRemoteViews.setTextViewText(2131231523, String.format(str3, arrayOfObject4));
            ComponentName localComponentName = new ComponentName(this, ProcessWidget.class);
            AppWidgetManager.getInstance(this).updateAppWidget(localComponentName, localRemoteViews);
            break;
          }
        }
      }
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    if (paramIntent != null)
      if ((paramIntent.getStringExtra("process_service_type") != null) && (paramIntent.getStringExtra("process_service_type").equalsIgnoreCase("clear")))
      {
        this.a = getSharedPreferences("com.ijinshan.mguard_preferences", 0);
        if (System.currentTimeMillis() - this.a.getLong("cleartime", 0L) >= 10000L)
          break label87;
        Toast.makeText(this, getString(2131428690), 0).show();
      }
    label87: c localc;
    while (true)
    {
      a.a(this);
      stopSelf();
      return;
      localc = com.keniu.security.b.e.a(this);
      if (!localc.a().isEmpty())
        break;
      b localb = new b(this, this);
      localb.d();
    }
    this.b = ((ActivityManager)getSystemService("activity"));
    ActivityManager.MemoryInfo localMemoryInfo1 = new ActivityManager.MemoryInfo();
    this.b.getMemoryInfo(localMemoryInfo1);
    this.c = this.b.getRunningAppProcesses();
    long l1 = localMemoryInfo1.availMem;
    PackageManager localPackageManager = getPackageManager();
    m localm = new m();
    com.keniu.security.d.e locale = new com.keniu.security.d.e();
    this.d = new ArrayList();
    int i = b();
    this.d.clear();
    int[] arrayOfInt = new int[1];
    long l2 = 0L;
    Iterator localIterator = this.c.iterator();
    label910: 
    while (true)
    {
      ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo;
      String[] arrayOfString;
      int m;
      if (localIterator.hasNext())
      {
        localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
        arrayOfString = localRunningAppProcessInfo.pkgList;
        m = arrayOfString.length;
      }
      for (int n = 0; ; n++)
      {
        if (n >= m)
          break label910;
        String str4 = arrayOfString[n];
        if ((!TextUtils.isEmpty(str4)) && (!str4.equalsIgnoreCase(getPackageName())))
        {
          locale.a(str4);
          try
          {
            if (!localc.c(locale))
              continue;
            ApplicationInfo localApplicationInfo = localPackageManager.getPackageInfo(str4, 1).applicationInfo;
            arrayOfInt[0] = localRunningAppProcessInfo.pid;
            if ((!this.d.contains(str4)) && (!localm.e(str4)))
            {
              this.d.add(str4);
              Debug.MemoryInfo localMemoryInfo = ((Debug.MemoryInfo[])this.b.getClass().getMethod("getProcessMemoryInfo", new Class[] { [I.class }).invoke(this.b, new Object[] { arrayOfInt }))[0];
              l2 += ((Integer)localMemoryInfo.getClass().getMethod("getTotalPss", new Class[0]).invoke(localMemoryInfo, new Object[0])).intValue();
            }
            if ((0x1 & localApplicationInfo.flags) == 1)
              localm.b(str4);
            else
              localm.a(str4);
          }
          catch (Exception localException)
          {
          }
          if (localc != null)
            localc.b();
          int j = this.d.size();
          if (j == 0)
          {
            Toast.makeText(this, getString(2131428689), 0).show();
            break;
          }
          ActivityManager.MemoryInfo localMemoryInfo2 = new ActivityManager.MemoryInfo();
          this.b.getMemoryInfo(localMemoryInfo2);
          long l3 = localMemoryInfo2.availMem;
          if (Integer.parseInt(Build.VERSION.SDK) < 5);
          for (float f1 = (float)(l3 - l1) / 1024.0F / 1024.0F; ; f1 = (float)l2 / 1024.0F)
          {
            if (f1 <= 0.5D)
              f1 = 0.5F;
            String str1 = getString(2131428688);
            Object[] arrayOfObject1 = new Object[2];
            arrayOfObject1[0] = Integer.valueOf(j);
            arrayOfObject1[1] = Float.valueOf(f1);
            Toast.makeText(this, String.format(str1, arrayOfObject1), 0).show();
            SharedPreferences.Editor localEditor = this.a.edit();
            localEditor.putLong("cleartime", System.currentTimeMillis());
            StringBuilder localStringBuilder = new StringBuilder();
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = Float.valueOf(f1);
            localEditor.putString("clearmemory", String.format("%1$.2f", arrayOfObject2) + "MB");
            localEditor.putInt("killCount", j);
            localEditor.commit();
            int k = i - j;
            float f2 = (float)(l1 + 1024L * l2) / 1024.0F / 1024.0F;
            RemoteViews localRemoteViews = new RemoteViews(getPackageName(), 2130903259);
            String str2 = getString(2131428686);
            Object[] arrayOfObject3 = new Object[1];
            arrayOfObject3[0] = Integer.valueOf(k);
            localRemoteViews.setTextViewText(2131231522, String.format(str2, arrayOfObject3));
            String str3 = getString(2131428687);
            Object[] arrayOfObject4 = new Object[1];
            arrayOfObject4[0] = Float.valueOf(f2);
            localRemoteViews.setTextViewText(2131231523, String.format(str3, arrayOfObject4));
            ComponentName localComponentName = new ComponentName(this, ProcessWidget.class);
            AppWidgetManager.getInstance(this).updateAppWidget(localComponentName, localRemoteViews);
            break;
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.service.ProcessService
 * JD-Core Version:    0.6.2
 */