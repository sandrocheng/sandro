package com.keniu.security.main.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import com.keniu.security.d.d;
import com.keniu.security.main.bu;
import com.keniu.security.malware.AppMettle;
import com.keniu.security.malware.ScanResultListActivity;
import com.keniu.security.malware.bd;
import com.keniu.security.malware.bh;
import java.util.ArrayList;

public final class ag
  implements m, bh
{
  public static int a = 1367;
  public String b = "病毒查杀";
  public String c = "立即清理";
  public String d = "已查杀";
  public String e = "未发现";
  public String f = "本机是否有病毒、恶意软件";
  public int g = k.d;
  public int h;
  private bd i = null;
  private l j = null;
  private ArrayList k = new ArrayList();
  private ArrayList l = new ArrayList();
  private int m = 0;
  private int n = 0;
  private long o = 0L;
  private int p = 0;

  private boolean c(Context paramContext)
  {
    this.k.clear();
    this.m = 0;
    this.n = 0;
    this.i = new bd();
    this.i.a(paramContext);
    long l1 = System.currentTimeMillis();
    this.i.a(this);
    int i1 = this.k.size();
    if (i1 > 0)
    {
      this.b = ("检测到有" + i1 + "个恶意软件");
      this.o = (System.currentTimeMillis() - l1);
      bu.a(System.currentTimeMillis(), this.n, this.k.size(), this.p, 0L);
      this.i.a();
      if (this.k.size() != 0)
        break label158;
    }
    label158: for (boolean bool = true; ; bool = false)
    {
      return bool;
      this.b = "病毒木马、恶意软件";
      break;
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

  public final void a(int paramInt, Intent paramIntent)
  {
    if (paramInt == -1)
    {
      this.k = paramIntent.getParcelableArrayListExtra("ScanResultListActivity_result_trojan");
      this.p = (this.m - this.k.size());
      if (this.k.size() != 0)
        break label86;
      this.h = k.g;
      this.b = ("已查杀" + this.p + "个恶意软件");
      this.d = "已查杀";
    }
    while (true)
    {
      return;
      label86: this.b = ("检测到有" + this.k.size() + "个恶意软件");
    }
  }

  public final void a(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramContext, ScanResultListActivity.class);
    Bundle localBundle = new Bundle();
    localBundle.putLong("mScanUsedTime", this.o / 1000L);
    localBundle.putInt("mScanApkCount", this.n);
    localBundle.putBoolean("bClickFast", true);
    localBundle.putBoolean("bSettingNet", false);
    localBundle.putBoolean("bScanFromMainMenu", true);
    localBundle.putBoolean("bSettingNet", false);
    localBundle.putBoolean("bCloudScanComplete", true);
    localIntent.putExtras(localBundle);
    localIntent.putParcelableArrayListExtra("ScanResultListActivity_result_trojan", this.k);
    localIntent.putParcelableArrayListExtra("ScanResultListActivity_result_unknown", this.l);
    ((Activity)paramContext).startActivityForResult(localIntent, a);
  }

  public final void a(l paraml, Context paramContext)
  {
    paraml.a(this);
    this.j = paraml;
    this.k.clear();
    this.m = 0;
    this.n = 0;
    this.i = new bd();
    this.i.a(paramContext);
    long l1 = System.currentTimeMillis();
    this.i.a(this);
    int i1 = this.k.size();
    int i2;
    if (i1 > 0)
    {
      this.b = ("检测到有" + i1 + "个恶意软件");
      this.o = (System.currentTimeMillis() - l1);
      bu.a(System.currentTimeMillis(), this.n, this.k.size(), this.p, 0L);
      this.i.a();
      if (this.k.size() != 0)
        break label191;
      i2 = 1;
      label161: if (i2 == 0)
        break label197;
    }
    label191: label197: for (this.h = k.g; ; this.h = k.i)
    {
      paraml.b(this);
      return;
      this.b = "病毒木马、恶意软件";
      break;
      i2 = 0;
      break label161;
    }
  }

  public final void a(boolean paramBoolean)
  {
  }

  public final boolean a(float paramFloat, String[] paramArrayOfString, d[] paramArrayOfd, ApplicationInfo[] paramArrayOfApplicationInfo)
  {
    for (int i1 = 0; i1 < paramArrayOfd.length; i1++)
    {
      d locald = paramArrayOfd[i1];
      if ((locald != null) && (locald.b()))
      {
        this.m = (1 + this.m);
        this.k.add(new AppMettle(paramArrayOfApplicationInfo[i1], locald));
      }
      this.n = (1 + this.n);
    }
    return this.j.a(this, (int)(100.0F * paramFloat));
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
    return true;
  }

  public final boolean i()
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.a.ag
 * JD-Core Version:    0.6.2
 */