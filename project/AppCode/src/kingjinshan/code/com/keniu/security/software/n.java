package com.keniu.security.software;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import com.keniu.security.d.a;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class n extends Thread
{
  private Handler b = null;
  private List c = null;

  public n(APKManagerActivity paramAPKManagerActivity, Handler paramHandler)
  {
    this.b = paramHandler;
  }

  private a a(Context paramContext, String paramString)
  {
    a locala1 = new a();
    File localFile = new File(paramString);
    locala1.a(localFile.length());
    locala1.d(paramString);
    locala1.e(localFile.getName());
    locala1.b(localFile.lastModified());
    a locala2;
    while (true)
    {
      try
      {
        Class localClass1 = Class.forName("android.content.pm.PackageParser");
        Object localObject1 = localClass1.getConstructor(new Class[] { String.class }).newInstance(new Object[] { paramString });
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        localDisplayMetrics.setToDefaults();
        Class[] arrayOfClass1 = new Class[4];
        arrayOfClass1[0] = File.class;
        arrayOfClass1[1] = String.class;
        arrayOfClass1[2] = DisplayMetrics.class;
        arrayOfClass1[3] = Integer.TYPE;
        Method localMethod = localClass1.getDeclaredMethod("parsePackage", arrayOfClass1);
        Object[] arrayOfObject1 = new Object[4];
        arrayOfObject1[0] = new File(paramString);
        arrayOfObject1[1] = paramString;
        arrayOfObject1[2] = localDisplayMetrics;
        arrayOfObject1[3] = Integer.valueOf(0);
        Object localObject2 = localMethod.invoke(localObject1, arrayOfObject1);
        if (localObject2 == null)
        {
          locala2 = null;
          break;
        }
        Field localField = localObject2.getClass().getDeclaredField("applicationInfo");
        if (localField.get(localObject2) == null)
        {
          locala2 = null;
          break;
        }
        ApplicationInfo localApplicationInfo = (ApplicationInfo)localField.get(localObject2);
        Class localClass2 = Class.forName("android.content.res.AssetManager");
        Object localObject3 = localClass2.newInstance();
        localClass2.getDeclaredMethod("addAssetPath", new Class[] { String.class }).invoke(localObject3, new Object[] { paramString });
        Resources localResources1 = paramContext.getResources();
        Class[] arrayOfClass2 = new Class[3];
        arrayOfClass2[0] = localObject3.getClass();
        arrayOfClass2[1] = localResources1.getDisplayMetrics().getClass();
        arrayOfClass2[2] = localResources1.getConfiguration().getClass();
        Constructor localConstructor = Resources.class.getConstructor(arrayOfClass2);
        Object[] arrayOfObject2 = new Object[3];
        arrayOfObject2[0] = localObject3;
        arrayOfObject2[1] = localResources1.getDisplayMetrics();
        arrayOfObject2[2] = localResources1.getConfiguration();
        Resources localResources2 = (Resources)localConstructor.newInstance(arrayOfObject2);
        if (localApplicationInfo == null)
          break label583;
        if (localApplicationInfo.labelRes != 0)
        {
          locala1.b((String)localResources2.getText(localApplicationInfo.labelRes));
          locala1.a(localApplicationInfo.packageName);
          Iterator localIterator = this.c.iterator();
          if (!localIterator.hasNext())
            break label589;
          if (!((PackageInfo)localIterator.next()).applicationInfo.packageName.equals(localApplicationInfo.packageName))
            continue;
          i = 1;
          if (i == 0)
          {
            locala1.a(false);
            locala1.b(false);
            locala1.e = 4;
            if (localApplicationInfo.icon != 0);
            PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageArchiveInfo(paramString, 1);
            if (localPackageInfo == null)
              break label598;
            locala1.c(localPackageInfo.versionName);
            break label598;
          }
        }
        else
        {
          String str = localFile.getName();
          locala1.b(str.substring(0, str.lastIndexOf(".")));
          continue;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        locala2 = null;
      }
      locala1.a(true);
      locala1.b(true);
      locala1.e = 2;
      continue;
      label583: locala2 = null;
      break;
      label589: int i = 0;
    }
    while (true)
    {
      return locala2;
      label598: locala2 = locala1;
    }
  }

  private void a(String paramString)
  {
    File[] arrayOfFile = new File(paramString).listFiles();
    if (arrayOfFile == null)
      return;
    int i = 0;
    label19: if ((i < arrayOfFile.length) && (!APKManagerActivity.w(this.a)))
    {
      if (arrayOfFile[i].isDirectory())
      {
        Message localMessage = Message.obtain();
        localMessage.what = 4;
        Bundle localBundle = new Bundle();
        localBundle.putCharArray("path", arrayOfFile[i].getName().toCharArray());
        localMessage.setData(localBundle);
        this.b.sendMessage(localMessage);
      }
      if (!arrayOfFile[i].isDirectory())
        break label122;
      a(arrayOfFile[i].getAbsolutePath());
    }
    while (true)
    {
      i++;
      break label19;
      break;
      label122: if (arrayOfFile[i].getName().toLowerCase().endsWith(".apk"))
      {
        a locala1 = a(this.a.getApplicationContext(), arrayOfFile[i].getAbsolutePath());
        if (locala1 != null)
        {
          if (locala1.g())
            APKManagerActivity.u(this.a).add(locala1);
          while (true)
          {
            APKManagerActivity.b(this.a, locala1.c());
            break;
            APKManagerActivity.v(this.a).add(locala1);
          }
        }
        a locala2 = new a();
        locala2.e = 4;
        locala2.j();
        locala2.b(true);
        locala2.a(false);
        locala2.b(arrayOfFile[i].getName().substring(0, arrayOfFile[i].getName().lastIndexOf(".")));
        locala2.e(arrayOfFile[i].getName());
        locala2.b(arrayOfFile[i].lastModified());
        locala2.d(arrayOfFile[i].getAbsolutePath());
        locala2.a(arrayOfFile[i].length());
        APKManagerActivity.v(this.a).add(locala2);
      }
    }
  }

  public final void run()
  {
    if (!Environment.getExternalStorageState().equals("mounted"))
      this.b.sendEmptyMessage(1);
    while (true)
    {
      return;
      String str = Environment.getExternalStorageDirectory().getPath();
      APKManagerActivity.a(this.a, new ArrayList());
      APKManagerActivity.b(this.a, new ArrayList());
      a locala1 = new a();
      locala1.e = 1;
      APKManagerActivity.u(this.a).add(locala1);
      a locala2 = new a();
      locala2.e = 3;
      APKManagerActivity.v(this.a).add(locala2);
      this.c = this.a.getPackageManager().getInstalledPackages(4096);
      a(str);
      APKManagerActivity.b(this.a, APKManagerActivity.v(this.a).size() - 1);
      APKManagerActivity.c(this.a, APKManagerActivity.u(this.a).size() - 1);
      if (APKManagerActivity.j(this.a) + APKManagerActivity.k(this.a) <= 0)
      {
        this.b.sendEmptyMessage(2);
      }
      else
      {
        APKManagerActivity.c(this.a, new ArrayList());
        APKManagerActivity.m(this.a).addAll(APKManagerActivity.u(this.a));
        APKManagerActivity.m(this.a).addAll(APKManagerActivity.v(this.a));
        APKManagerActivity.a(this.a, new k(this.a, this.a.getApplicationContext(), APKManagerActivity.m(this.a)));
        this.b.sendEmptyMessage(3);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.n
 * JD-Core Version:    0.6.2
 */