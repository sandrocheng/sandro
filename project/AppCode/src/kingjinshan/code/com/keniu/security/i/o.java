package com.keniu.security.i;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Handler;
import android.os.Message;
import com.keniu.security.malware.AppMettle;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class o extends t
  implements com.keniu.security.monitor.b
{
  private static o A = new o();
  public static final int a = 0;
  public static final int b = 1;
  public static final int c = 0;
  public static final int d = 1;
  public static int e = 0;
  public static int f = 0;
  public static final int g = 3;
  public static final int h = 0;
  public static final int i = 1;
  public static final int j = 2;
  private Handler B = new p(this);
  private u[] u;
  private Context v;
  private PackageManager w;
  private r x;
  private a y;
  private NotificationManager z;

  public static o a()
  {
    return A;
  }

  private u a(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt <= this.u.length));
    for (u localu = this.u[paramInt]; ; localu = null)
      return localu;
  }

  private void a(boolean paramBoolean1, int paramInt, boolean paramBoolean2, AppMettle paramAppMettle, b paramb)
  {
    Message localMessage;
    if (paramBoolean2)
    {
      localMessage = null;
      if (paramb != null)
      {
        if (!paramBoolean1)
          break label46;
        localMessage = this.B.obtainMessage(1, paramInt, 0, paramb);
      }
    }
    while (true)
    {
      if (localMessage != null)
        this.B.sendMessage(localMessage);
      return;
      label46: localMessage = this.B.obtainMessage(0, paramInt, 0, paramb);
      continue;
      localMessage = null;
      if (paramAppMettle != null)
        if (paramBoolean1)
          localMessage = this.B.obtainMessage(1, paramInt, 1, paramAppMettle);
        else
          localMessage = this.B.obtainMessage(0, paramInt, 1, paramAppMettle);
    }
  }

  private String b(String paramString)
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.MAIN", null);
      localIntent.addCategory("android.intent.category.LAUNCHER");
      localIntent.setPackage(paramString);
      ResolveInfo localResolveInfo = (ResolveInfo)this.w.queryIntentActivities(localIntent, 0).iterator().next();
      if (localResolveInfo != null)
      {
        str = localResolveInfo.activityInfo.name;
        return str;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        String str = null;
        continue;
        str = null;
      }
    }
  }

  private boolean b(int paramInt)
  {
    u localu = a(paramInt);
    boolean bool;
    if (localu != null)
      if (localu.a(1) == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      bool = false;
    }
  }

  private boolean c(int paramInt)
  {
    u localu = a(paramInt);
    if (localu != null);
    for (boolean bool = localu.b(); ; bool = false)
      return bool;
  }

  private static boolean c(String paramString)
  {
    return Pattern.compile("/sdcard/").matcher(paramString).find();
  }

  private boolean d(int paramInt)
  {
    u localu = a(paramInt);
    if (localu != null);
    for (boolean bool = localu.c(); ; bool = false)
      return bool;
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    if (paramInt == com.keniu.security.monitor.a.p)
      this.u[2].a(0);
    while (true)
    {
      return 0;
      if ((paramInt == com.keniu.security.monitor.a.o) && (com.keniu.security.a.a(this.v).h()))
        this.u[2].a(1);
    }
  }

  public final int a(Object paramObject, int paramInt, String paramString)
  {
    this.x.a(paramObject, paramInt, paramString);
    return 0;
  }

  public final void a(Context paramContext)
  {
    this.v = paramContext.getApplicationContext();
    this.z = ((NotificationManager)this.v.getSystemService("notification"));
    this.w = this.v.getPackageManager();
    this.y = new a(paramContext);
    this.u = new u[3];
    this.u[0] = new c(this.v, this);
    this.u[1] = new j(this.v, this);
    this.u[2] = new l(this.v, this);
    this.x = new r(this);
    this.x.start();
    c();
    com.keniu.security.monitor.a locala = com.keniu.security.monitor.a.a();
    locala.a(com.keniu.security.monitor.a.o, this, 1342177279);
    locala.a(com.keniu.security.monitor.a.p, this, 1342177279);
  }

  public final void b()
  {
    this.x.a();
    this.x = null;
    com.keniu.security.monitor.a locala = com.keniu.security.monitor.a.a();
    locala.a(com.keniu.security.monitor.a.o, this);
    locala.a(com.keniu.security.monitor.a.p, this);
    for (int k = 0; k < 3; k++)
    {
      this.u[k].b();
      this.u[k] = null;
    }
    this.u = null;
    this.y.close();
    this.y = null;
  }

  public final boolean c()
  {
    boolean bool;
    if (this.v == null)
    {
      bool = false;
      return bool;
    }
    com.keniu.security.a locala = com.keniu.security.a.a(this.v);
    u localu1 = this.u[0];
    int k;
    label37: int m;
    label61: u localu3;
    if (locala.f())
    {
      k = 1;
      localu1.a(k);
      u localu2 = this.u[1];
      if (!locala.g())
        break label106;
      m = 1;
      localu2.a(m);
      localu3 = this.u[2];
      if (!locala.h())
        break label112;
    }
    label106: label112: for (int n = 1; ; n = 0)
    {
      localu3.a(n);
      bool = true;
      break;
      k = 0;
      break label37;
      m = 0;
      break label61;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.i.o
 * JD-Core Version:    0.6.2
 */