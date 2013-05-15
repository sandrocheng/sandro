package com.google.analytics.tracking.android;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

public class p
{
  private static p a;
  private boolean b = false;
  private String c;
  private String d;
  private String e;
  private int f = 1800;
  private boolean g;
  private Double h;
  private boolean i;
  private boolean j;
  private Thread.UncaughtExceptionHandler k;
  private boolean l = false;
  private int m = 0;
  private long n;
  private long o;
  private Context p;
  private final Map q = new HashMap();
  private bo r = null;
  private bf s;
  private c t;
  private bk u;
  private n v = new q(this);
  private Timer w;
  private TimerTask x;
  private boolean y = false;

  public static p a()
  {
    if (a == null)
      a = new p();
    return a;
  }

  public static bo b()
  {
    if (a().p == null)
      throw new IllegalStateException("You must call EasyTracker.getInstance().setContext(context) or startActivity(activity) before calling getTracker()");
    return a().r;
  }

  private String c(Activity paramActivity)
  {
    String str1 = paramActivity.getClass().getCanonicalName();
    String str2;
    if (this.q.containsKey(str1))
      str2 = (String)this.q.get(str1);
    while (true)
    {
      return str2;
      str2 = this.s.a(str1);
      if (str2 == null)
        str2 = str1;
      this.q.put(str1, str2);
    }
  }

  private void d()
  {
    boolean bool = true;
    this.c = this.s.a("ga_trackingId");
    if (TextUtils.isEmpty(this.c))
    {
      this.c = this.s.a("ga_api_key");
      if (TextUtils.isEmpty(this.c))
      {
        ay.c("EasyTracker requested, but missing required ga_trackingId");
        this.r = new r(this);
        return;
      }
    }
    this.b = bool;
    this.d = this.s.a("ga_appName");
    this.e = this.s.a("ga_appVersion");
    this.g = this.s.c("ga_debug");
    this.h = this.s.b("ga_sampleFrequency");
    if (this.h == null)
      this.h = new Double(this.s.a("ga_sampleRate", 100));
    this.f = this.s.a("ga_dispatchPeriod", 1800);
    this.n = (1000 * this.s.a("ga_sessionTimeout", 30));
    if ((this.s.c("ga_autoActivityTracking")) || (this.s.c("ga_auto_activity_tracking")));
    while (true)
    {
      this.l = bool;
      this.i = this.s.c("ga_anonymizeIp");
      this.j = this.s.c("ga_reportUncaughtExceptions");
      this.r = this.t.a(this.c);
      if (!TextUtils.isEmpty(this.d))
      {
        ay.d("setting appName to " + this.d);
        this.r.a(this.d);
      }
      if (this.e != null)
        this.r.b(this.e);
      this.r.a(this.i);
      this.r.a(this.h.doubleValue());
      this.t.a(this.g);
      this.u.a(this.f);
      if (!this.j)
        break;
      Object localObject = this.k;
      if (localObject == null)
        localObject = new u(this.r, this.u, Thread.getDefaultUncaughtExceptionHandler());
      Thread.setDefaultUncaughtExceptionHandler((Thread.UncaughtExceptionHandler)localObject);
      break;
      bool = false;
    }
  }

  private void e()
  {
    try
    {
      if (this.w != null)
      {
        this.w.cancel();
        this.w = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void a(Activity paramActivity)
  {
    a(paramActivity);
    if (!this.b);
    while (true)
    {
      return;
      e();
      if ((!this.y) && (this.m == 0) && (c()))
      {
        this.r.b(true);
        if (this.l);
      }
      this.y = true;
      this.m = (1 + this.m);
      if (this.l)
        this.r.c(c(paramActivity));
    }
  }

  public void a(Context paramContext)
  {
    if (paramContext == null)
      ay.c("Context cannot be null");
    while (true)
    {
      return;
      w localw = w.a();
      a(paramContext, new bg(paramContext.getApplicationContext()), ap.a(paramContext.getApplicationContext()), localw);
    }
  }

  void a(Context paramContext, bf parambf, c paramc, bk parambk)
  {
    if (paramContext == null)
      ay.c("Context cannot be null");
    if (this.p == null)
    {
      this.p = paramContext.getApplicationContext();
      this.t = paramc;
      this.u = parambk;
      this.s = parambf;
      d();
    }
  }

  public void b(Activity paramActivity)
  {
    a(paramActivity);
    if (!this.b);
    while (true)
    {
      return;
      this.m = (-1 + this.m);
      this.m = Math.max(0, this.m);
      this.o = this.v.a();
      if (this.m == 0)
      {
        e();
        this.x = new s(this, null);
        this.w = new Timer("waitForActivityStart");
        this.w.schedule(this.x, 1000L);
      }
    }
  }

  boolean c()
  {
    if ((this.n == 0L) || ((this.n > 0L) && (this.v.a() > this.o + this.n)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.p
 * JD-Core Version:    0.6.2
 */