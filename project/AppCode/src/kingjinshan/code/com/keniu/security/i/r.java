package com.keniu.security.i;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.jxphone.mosecurity.d.m;
import com.keniu.security.d.d;
import com.keniu.security.main.bu;
import com.keniu.security.malware.AppMettle;
import com.keniu.security.malware.TransparentVircusAcitvity;
import com.keniu.security.malware.bd;
import com.keniu.security.util.at;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

final class r extends Thread
{
  private Handler b;
  private Looper c;

  r(o paramo)
  {
  }

  private d a(ApplicationInfo paramApplicationInfo)
  {
    bd localbd = new bd();
    localbd.a(o.d(this.a));
    d locald1 = localbd.a(paramApplicationInfo.publicSourceDir, 1);
    Object localObject;
    if ((locald1 == null) || (locald1.c()))
    {
      if (!at.c(o.d(this.a)))
      {
        localObject = new d();
        ((d)localObject).s = 1;
        localbd.a();
        return localObject;
      }
      d locald2 = new d();
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new AppMettle(paramApplicationInfo, locald2));
      d locald3 = (d)localbd.a(localArrayList, new boolean[] { false }).get(0);
      if (locald3 != null)
      {
        locald3.w = true;
        if (paramApplicationInfo.publicSourceDir.indexOf("/sdcard/", 0) < 0)
          break label198;
        localbd.a(2, locald3, paramApplicationInfo, true);
      }
      while (true)
      {
        if (locald3.b())
          bu.a(System.currentTimeMillis(), 2L, 1L, 0L, 0L);
        localObject = locald3;
        break;
        label198: localbd.a(1, locald3, paramApplicationInfo, true);
      }
    }
    if (paramApplicationInfo.publicSourceDir.indexOf("/sdcard/", 0) >= 0)
      localbd.a(2, locald1, paramApplicationInfo, false);
    while (true)
    {
      if (locald1.b())
        bu.a(System.currentTimeMillis(), 2L, 1L, 0L, 0L);
      localObject = locald1;
      break;
      localbd.a(1, locald1, paramApplicationInfo, false);
    }
  }

  private void a(int paramInt, ApplicationInfo paramApplicationInfo, b paramb)
  {
    CharSequence localCharSequence = paramApplicationInfo.loadLabel(o.c(this.a));
    if ((localCharSequence == null) || (localCharSequence.length() == 0));
    for (Object localObject1 = paramApplicationInfo.packageName; ; localObject1 = localCharSequence)
    {
      bd localbd = new bd();
      localbd.a(o.d(this.a));
      d locald1 = localbd.a(paramApplicationInfo.publicSourceDir, 1);
      Object localObject2;
      String str5;
      int i;
      if ((locald1 == null) || (locald1.c()))
        if (!at.c(o.d(this.a)))
        {
          d locald2 = new d();
          locald2.s = 1;
          localObject2 = locald2;
          localbd.a();
          if (localObject2 == null)
            break label557;
          str5 = ((d)localObject2).t;
          i = ((d)localObject2).s;
        }
      for (String str1 = str5; ; str1 = null)
      {
        String str2 = paramApplicationInfo.publicSourceDir;
        String str3 = paramApplicationInfo.packageName;
        String str4 = localObject1.toString();
        b localb = o.b(this.a).a(str2, str4, str3, str1, paramInt, i);
        int k;
        boolean bool;
        if (localb != null)
        {
          k = 1;
          if ((!d.a(localb.f)) && (paramb != null) && (paramb.g == localb.g) && (paramb.i == localb.i) && (paramb.c.equals(localb.c)) && (localb.f == paramb.f))
            k = 0;
          a locala = o.b(this.a);
          if (paramb != null)
          {
            bool = true;
            label277: locala.a(localb, bool);
          }
        }
        for (int j = k; ; j = 0)
        {
          if ((j != 0) || (paramb == null) || (paramInt == 0))
          {
            AppMettle localAppMettle1 = new AppMettle(paramApplicationInfo, (d)localObject2);
            a(paramInt, false, localAppMettle1, paramb);
          }
          return;
          d locald3 = new d();
          ArrayList localArrayList = new ArrayList();
          AppMettle localAppMettle2 = new AppMettle(paramApplicationInfo, locald3);
          localArrayList.add(localAppMettle2);
          d locald4 = (d)localbd.a(localArrayList, new boolean[] { false }).get(0);
          if (locald4 != null)
          {
            locald4.w = true;
            if (paramApplicationInfo.publicSourceDir.indexOf("/sdcard/", 0) < 0)
              break label454;
            localbd.a(2, locald4, paramApplicationInfo, true);
          }
          while (true)
          {
            if (locald4.b())
              bu.a(System.currentTimeMillis(), 2L, 1L, 0L, 0L);
            localObject2 = locald4;
            break;
            label454: localbd.a(1, locald4, paramApplicationInfo, true);
          }
          if (paramApplicationInfo.publicSourceDir.indexOf("/sdcard/", 0) >= 0)
            localbd.a(2, locald1, paramApplicationInfo, false);
          while (true)
          {
            if (locald1.b())
              bu.a(System.currentTimeMillis(), 2L, 1L, 0L, 0L);
            localObject2 = locald1;
            break;
            localbd.a(1, locald1, paramApplicationInfo, false);
          }
          bool = false;
          break label277;
        }
        label557: i = -1;
      }
    }
  }

  private void a(int paramInt, String paramString)
  {
    b localb = o.b(this.a).a(paramString);
    if ((localb != null) && (!a(paramInt, localb)));
    while (true)
    {
      return;
      PackageInfo localPackageInfo = o.c(this.a).getPackageArchiveInfo(paramString, 128);
      if ((localPackageInfo != null) && (localPackageInfo.applicationInfo != null))
      {
        if (localPackageInfo.applicationInfo.publicSourceDir == null)
          localPackageInfo.applicationInfo.publicSourceDir = paramString;
        a(paramInt, localPackageInfo.applicationInfo, localb);
      }
    }
  }

  private void a(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    Intent localIntent = new Intent(o.d(this.a), TransparentVircusAcitvity.class);
    Bundle localBundle = new Bundle();
    localBundle.putInt("notificationID", o.e);
    localBundle.putString("packName", paramString2);
    localBundle.putInt("watcherModel", paramInt);
    localBundle.putString("malName", paramString4);
    localBundle.putString("softName", paramString3);
    localBundle.putString("filePath", paramString1);
    localIntent.putExtras(localBundle);
    localIntent.addFlags(268435456);
    o.d(this.a).startActivity(localIntent);
  }

  private void a(int paramInt, boolean paramBoolean, AppMettle paramAppMettle, b paramb)
  {
    Object localObject3;
    int j;
    Object localObject2;
    Object localObject1;
    Object localObject4;
    if (paramBoolean)
    {
      int k = paramb.f;
      String str5 = paramb.c;
      localObject3 = paramb.a;
      String str6 = paramb.b;
      String str7 = paramb.d;
      j = k;
      localObject2 = str7;
      localObject1 = str6;
      localObject4 = str5;
      if (!d.a(j))
        break label280;
      new m().a((String)localObject4);
      Intent localIntent = new Intent(o.d(this.a), TransparentVircusAcitvity.class);
      Bundle localBundle = new Bundle();
      localBundle.putInt("notificationID", o.e);
      localBundle.putString("packName", (String)localObject4);
      localBundle.putInt("watcherModel", paramInt);
      localBundle.putString("malName", (String)localObject2);
      localBundle.putString("softName", (String)localObject1);
      localBundle.putString("filePath", (String)localObject3);
      localIntent.putExtras(localBundle);
      localIntent.addFlags(268435456);
      o.d(this.a).startActivity(localIntent);
    }
    label280: for (boolean bool = false; ; bool = true)
    {
      o.a(this.a, bool, paramInt, paramBoolean, paramAppMettle, paramb);
      return;
      int i = paramAppMettle.b.s;
      String str1 = paramAppMettle.a.packageName;
      String str2 = paramAppMettle.a.publicSourceDir;
      String str3 = (String)paramAppMettle.a.loadLabel(o.c(this.a));
      String str4 = paramAppMettle.b.t;
      j = i;
      localObject1 = str3;
      localObject2 = str4;
      localObject3 = str2;
      localObject4 = str1;
      break;
    }
  }

  private boolean a(int paramInt1, int paramInt2, String paramString1, String paramString2, String paramString3, String paramString4, b paramb)
  {
    b localb = o.b(this.a).a(paramString1, paramString4, paramString2, paramString3, paramInt1, paramInt2);
    boolean bool2;
    boolean bool3;
    if (localb != null)
    {
      bool2 = true;
      if ((!d.a(localb.f)) && (paramb != null) && (paramb.g == localb.g) && (paramb.i == localb.i) && (paramb.c.equals(localb.c)) && (localb.f == paramb.f))
        bool2 = false;
      a locala = o.b(this.a);
      if (paramb != null)
      {
        bool3 = true;
        locala.a(localb, bool3);
      }
    }
    for (boolean bool1 = bool2; ; bool1 = false)
    {
      return bool1;
      bool3 = false;
      break;
    }
  }

  private boolean a(int paramInt, b paramb)
  {
    long l1 = System.currentTimeMillis();
    File localFile = new File(paramb.a);
    long l2;
    if ((localFile.lastModified() == paramb.i) && (localFile.length() == paramb.g))
    {
      boolean bool2 = d.b(paramb.f);
      bool1 = false;
      if (bool2)
      {
        if (paramb.f != 1)
          break label129;
        l2 = 3600000L;
        boolean bool3 = l2 + paramb.h < l1;
        bool1 = false;
        if (bool3);
      }
    }
    for (boolean bool1 = true; ; bool1 = true)
    {
      if ((!bool1) && (paramInt != 2) && (10000L + paramb.h < l1))
        a(paramInt, true, null, paramb);
      return bool1;
      label129: l2 = 86400000L;
      break;
    }
  }

  private void b(int paramInt, String paramString)
  {
    try
    {
      ApplicationInfo localApplicationInfo2 = o.c(this.a).getApplicationInfo(paramString, 1152);
      localApplicationInfo1 = localApplicationInfo2;
      if ((localApplicationInfo1 != null) && ((0x1 & localApplicationInfo1.flags) == 0))
      {
        localb = o.b(this.a).a(localApplicationInfo1.publicSourceDir);
        if ((localb == null) || (a(paramInt, localb)));
      }
      else
      {
        return;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        b localb;
        localNameNotFoundException.printStackTrace();
        ApplicationInfo localApplicationInfo1 = null;
        continue;
        a(paramInt, localApplicationInfo1, localb);
      }
    }
  }

  final void a()
  {
    if (this.c != null)
      this.c.quit();
    try
    {
      join();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.printStackTrace();
    }
  }

  final void a(Object paramObject, int paramInt, String paramString)
  {
    if (this.b == null);
    label69: 
    while (true)
    {
      return;
      for (int i = 0; ; i++)
      {
        if (i >= o.a(this.a).length)
          break label69;
        if (o.a(this.a)[i] == paramObject)
        {
          Message localMessage = this.b.obtainMessage(1, i, paramInt, paramString);
          this.b.sendMessage(localMessage);
          break;
        }
      }
    }
  }

  public final void run()
  {
    Looper.prepare();
    this.c = Looper.myLooper();
    this.b = new s(this);
    Looper.loop();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.i.r
 * JD-Core Version:    0.6.2
 */