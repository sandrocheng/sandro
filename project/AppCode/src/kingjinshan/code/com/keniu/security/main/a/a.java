package com.keniu.security.main.a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.widget.Toast;
import com.ijinshan.bootmanager.activity.AutoBootMangerActivity;
import com.keniu.security.f.ab;
import com.keniu.security.f.f;
import com.keniu.security.main.MainActivity;
import com.keniu.security.malware.bz;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class a
  implements m
{
  public static boolean a = false;
  private static final String n = "ap.jar";
  public String b = "开机启动项需要优化";
  public String c = "立即优化";
  public String d = "已优化";
  public String e = "已优化";
  public String f = "开机启动项优化";
  public int g = k.c;
  public int h;
  private PackageManager i;
  private List j = new ArrayList();
  private int k;
  private final int l = Build.VERSION.SDK_INT;
  private String m;

  private static boolean b(com.ijinshan.bootmanager.b.a parama)
  {
    return bz.a().a(parama.c(), parama.d());
  }

  private int c(Context paramContext)
  {
    this.i = paramContext.getPackageManager();
    Intent localIntent = new Intent("android.intent.action.BOOT_COMPLETED", null);
    List localList = this.i.queryBroadcastReceivers(localIntent, 0);
    HashMap localHashMap = new HashMap();
    ArrayList localArrayList1 = new ArrayList();
    Iterator localIterator1 = localList.iterator();
    while (localIterator1.hasNext())
    {
      ResolveInfo localResolveInfo = (ResolveInfo)localIterator1.next();
      ApplicationInfo localApplicationInfo = localResolveInfo.activityInfo.applicationInfo;
      if ((0x1 & localApplicationInfo.flags) != 1)
      {
        com.ijinshan.bootmanager.b.a locala2 = new com.ijinshan.bootmanager.b.a();
        locala2.a(localApplicationInfo.packageName);
        if (localApplicationInfo.labelRes != 0)
        {
          locala2.b(localApplicationInfo.loadLabel(this.i).toString());
          label142: if (localApplicationInfo.icon == 0)
            break label252;
          locala2.a(localApplicationInfo.loadIcon(this.i));
          label164: if ((0x40000 & localApplicationInfo.flags) == 0)
            break label269;
          locala2.d(paramContext.getString(2131428710));
        }
        while (true)
        {
          locala2.a(true);
          if (!localHashMap.containsKey(localApplicationInfo.packageName))
            break label283;
          ((List)localHashMap.get(localApplicationInfo.packageName)).add(localResolveInfo.activityInfo.name);
          break;
          locala2.b(localApplicationInfo.packageName);
          break label142;
          label252: locala2.a(paramContext.getResources().getDrawable(17301651));
          break label164;
          label269: locala2.d(paramContext.getString(2131428711));
        }
        label283: ArrayList localArrayList2 = new ArrayList();
        localArrayList2.add(localResolveInfo.activityInfo.name);
        localHashMap.put(localApplicationInfo.packageName, localArrayList2);
        localArrayList1.add(locala2);
      }
    }
    com.ijinshan.bootmanager.c.a locala = new com.ijinshan.bootmanager.c.a(paramContext);
    Iterator localIterator2 = localArrayList1.iterator();
    while (localIterator2.hasNext())
    {
      com.ijinshan.bootmanager.b.a locala1 = (com.ijinshan.bootmanager.b.a)localIterator2.next();
      if ((!locala1.c().equals("com.ijinshan.mguard")) && (!locala1.c().equals("com.ijinshan.mPrivacy")) && (!locala1.c().equals("com.ijinshan.kbatterydoctor")) && (!locala1.c().equals("com.ijinshan.duba")) && (!locala.a(locala1)))
      {
        locala1.a((List)localHashMap.get(locala1.c()));
        this.j.add(locala1);
      }
    }
    locala.a();
    return this.j.size();
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
      if (TextUtils.isEmpty(this.m))
        this.m = (f.a(paramContext.getFilesDir().getPath()) + "ap.jar");
      ab.a();
      ab.a(new File(this.m), paramContext.getApplicationContext());
      if (!bz.a().e())
      {
        bz.a().c();
        MainActivity.c = true;
        a = true;
      }
    }
    while (true)
    {
      return;
      new b(this).start();
      this.h = k.g;
      this.b = ("关闭开机启动项" + this.k + "个");
      this.e = "已优化";
      continue;
      Intent localIntent = new Intent();
      localIntent.setClass(paramContext, AutoBootMangerActivity.class);
      paramContext.startActivity(localIntent);
    }
  }

  public final void a(l paraml, Context paramContext)
  {
    paraml.a(this);
    this.i = paramContext.getPackageManager();
    Intent localIntent = new Intent("android.intent.action.BOOT_COMPLETED", null);
    List localList = this.i.queryBroadcastReceivers(localIntent, 0);
    HashMap localHashMap = new HashMap();
    ArrayList localArrayList1 = new ArrayList();
    Iterator localIterator1 = localList.iterator();
    while (localIterator1.hasNext())
    {
      ResolveInfo localResolveInfo = (ResolveInfo)localIterator1.next();
      ApplicationInfo localApplicationInfo = localResolveInfo.activityInfo.applicationInfo;
      if ((0x1 & localApplicationInfo.flags) != 1)
      {
        com.ijinshan.bootmanager.b.a locala2 = new com.ijinshan.bootmanager.b.a();
        locala2.a(localApplicationInfo.packageName);
        if (localApplicationInfo.labelRes != 0)
        {
          locala2.b(localApplicationInfo.loadLabel(this.i).toString());
          label154: if (localApplicationInfo.icon == 0)
            break label264;
          locala2.a(localApplicationInfo.loadIcon(this.i));
          label176: if ((0x40000 & localApplicationInfo.flags) == 0)
            break label281;
          locala2.d(paramContext.getString(2131428710));
        }
        while (true)
        {
          locala2.a(true);
          if (!localHashMap.containsKey(localApplicationInfo.packageName))
            break label295;
          ((List)localHashMap.get(localApplicationInfo.packageName)).add(localResolveInfo.activityInfo.name);
          break;
          locala2.b(localApplicationInfo.packageName);
          break label154;
          label264: locala2.a(paramContext.getResources().getDrawable(17301651));
          break label176;
          label281: locala2.d(paramContext.getString(2131428711));
        }
        label295: ArrayList localArrayList2 = new ArrayList();
        localArrayList2.add(localResolveInfo.activityInfo.name);
        localHashMap.put(localApplicationInfo.packageName, localArrayList2);
        localArrayList1.add(locala2);
      }
    }
    com.ijinshan.bootmanager.c.a locala = new com.ijinshan.bootmanager.c.a(paramContext);
    Iterator localIterator2 = localArrayList1.iterator();
    while (localIterator2.hasNext())
    {
      com.ijinshan.bootmanager.b.a locala1 = (com.ijinshan.bootmanager.b.a)localIterator2.next();
      if ((!locala1.c().equals("com.ijinshan.mguard")) && (!locala1.c().equals("com.ijinshan.mPrivacy")) && (!locala1.c().equals("com.ijinshan.kbatterydoctor")) && (!locala1.c().equals("com.ijinshan.duba")) && (!locala.a(locala1)))
      {
        locala1.a((List)localHashMap.get(locala1.c()));
        this.j.add(locala1);
      }
    }
    locala.a();
    this.k = this.j.size();
    if (this.k > 0)
      this.b = ("开机启动项" + this.k + "个");
    for (this.h = k.i; ; this.h = k.g)
    {
      paraml.b(this);
      return;
      this.b = "开机启动项优化";
    }
  }

  public final void a(boolean paramBoolean)
  {
    if (a)
    {
      a = false;
      if (!paramBoolean)
        break label72;
      new c(this).start();
      this.h = k.g;
      this.b = ("关闭开机启动项" + this.k + "个");
      this.e = "已优化";
    }
    while (true)
    {
      return;
      label72: this.h = k.i;
      this.b = "未获Root权限，开机启动项优化失败";
      if (MainActivity.d != null)
        MainActivity.d.show();
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
    this.g = k.c;
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
 * Qualified Name:     com.keniu.security.main.a.a
 * JD-Core Version:    0.6.2
 */