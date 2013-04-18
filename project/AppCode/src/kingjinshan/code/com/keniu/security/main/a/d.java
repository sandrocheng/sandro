package com.keniu.security.main.a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Environment;
import com.keniu.security.main.MainActivity;
import com.keniu.security.main.a;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import com.keniu.security.util.at;
import java.io.File;

public final class d
  implements m
{
  public static final String a = "com.ijinshan.kbatterydoctor";
  public static final String b;
  public String c = "电池保养";
  public String d = "立即开启";
  public String e = "已开启";
  public String f = "已开启";
  public String g = "是否开启电池保养";
  public int h = k.d;
  public int i;

  static
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (!Environment.getExternalStorageState().equals("mounted"));
    for (String str = null; ; str = Environment.getExternalStorageDirectory().getPath())
    {
      b = str + File.separatorChar + "mosecurity" + File.separatorChar + "BatteryDoctor.apk";
      return;
    }
  }

  private boolean d(Context paramContext)
  {
    if (f(paramContext))
      this.c = "电池保养";
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      this.c = "未开启电池保养";
    }
  }

  private void e(Context paramContext)
  {
    aq localaq = new aq(paramContext, (byte)0);
    localaq.a(paramContext.getString(2131427962));
    localaq.b(paramContext.getString(2131428109));
    localaq.b(paramContext.getString(2131428112), null);
    localaq.a(paramContext.getString(2131428111), new e(this, paramContext));
    localaq.c().show();
  }

  private static boolean f(Context paramContext)
  {
    try
    {
      Intent localIntent = paramContext.getPackageManager().getLaunchIntentForPackage("com.ijinshan.kbatterydoctor");
      if (localIntent != null)
      {
        bool = true;
        return bool;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        boolean bool = false;
        continue;
        bool = false;
      }
    }
  }

  private static void g(Context paramContext)
  {
    Uri localUri = Uri.fromFile(new File(b));
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setDataAndType(localUri, "application/vnd.android.package-archive");
    paramContext.startActivity(localIntent);
  }

  private void h(Context paramContext)
  {
    if (!at.c(paramContext))
    {
      aq localaq = new aq(paramContext, (byte)0);
      localaq.a(paramContext.getString(2131427865));
      localaq.b(paramContext.getString(2131429431));
      localaq.a(paramContext.getString(2131428402), new f(this, paramContext));
      localaq.b(paramContext.getString(2131428398), null);
      localaq.c().show();
    }
    while (true)
    {
      return;
      MainActivity.a(paramContext).c();
    }
  }

  private static boolean j()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }

  private static String k()
  {
    if (!Environment.getExternalStorageState().equals("mounted"));
    for (String str = null; ; str = Environment.getExternalStorageDirectory().getPath())
      return str;
  }

  public final int a()
  {
    return this.h;
  }

  public final String a(int paramInt)
  {
    String str;
    if (paramInt == k.k)
      str = this.c;
    while (true)
    {
      return str;
      if (paramInt == k.l)
        str = this.d;
      else if (paramInt == k.m)
        str = this.e;
      else if (paramInt == k.n)
        str = this.f;
      else if (paramInt == k.o)
        str = this.g;
      else
        str = null;
    }
  }

  public final void a(Context paramContext)
  {
    if (MainActivity.a(paramContext).d())
      h(paramContext);
    while (true)
    {
      return;
      aq localaq = new aq(paramContext, (byte)0);
      localaq.a(paramContext.getString(2131427962));
      localaq.b(paramContext.getString(2131428109));
      localaq.b(paramContext.getString(2131428112), null);
      localaq.a(paramContext.getString(2131428111), new e(this, paramContext));
      localaq.c().show();
    }
  }

  public final void a(l paraml, Context paramContext)
  {
    paraml.a(this);
    if (f(paramContext))
      this.f = "已开启";
    for (this.i = k.g; ; this.i = k.i)
    {
      paraml.b(this);
      return;
      this.f = "立即开启";
    }
  }

  public final void a(boolean paramBoolean)
  {
  }

  public final int b()
  {
    return this.i;
  }

  public final void b(Context paramContext)
  {
    if (f(paramContext))
    {
      this.f = "已开启";
      this.i = k.g;
    }
    while (true)
    {
      return;
      if (MainActivity.a(paramContext).d())
      {
        this.d = "正在下载";
        this.i = k.i;
      }
      else
      {
        this.d = "立即开启";
        this.i = k.i;
      }
    }
  }

  public final String c()
  {
    return this.c;
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
    if ((this.i == k.h) || (this.i == k.g));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean h()
  {
    return false;
  }

  public final boolean i()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.a.d
 * JD-Core Version:    0.6.2
 */