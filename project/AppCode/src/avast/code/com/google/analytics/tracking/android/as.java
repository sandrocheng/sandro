package com.google.analytics.tracking.android;

import android.text.TextUtils;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class as
  implements bo
{
  private static final DecimalFormat a = new DecimalFormat("0.######", new DecimalFormatSymbols(Locale.US));
  private final bp b;
  private final au c;
  private volatile boolean d = false;
  private volatile boolean e = false;

  as(String paramString, bp parambp)
  {
    if (paramString == null)
      throw new IllegalArgumentException("trackingId cannot be null");
    this.b = parambp;
    this.c = new au(null);
    this.c.b("trackingId", paramString);
    this.c.b("sampleRate", "100");
    this.c.a("sessionControl", "start");
  }

  private void a()
  {
    if (this.d)
      throw new IllegalStateException("Tracker closed");
  }

  private void a(String paramString, Map paramMap)
  {
    this.e = true;
    if (paramMap == null)
      paramMap = new HashMap();
    paramMap.put("hitType", paramString);
    this.c.a(paramMap, Boolean.valueOf(true));
    this.b.a(this.c.b());
    this.c.a();
  }

  public void a(double paramDouble)
  {
    an.a().a(ao.w);
    this.c.b("sampleRate", Double.toString(paramDouble));
  }

  public void a(String paramString)
  {
    if (this.e)
      ay.i("Tracking already started, setAppName call ignored");
    while (true)
    {
      return;
      if (TextUtils.isEmpty(paramString))
      {
        ay.i("setting appName to empty value not allowed, call ignored");
      }
      else
      {
        an.a().a(ao.o);
        this.c.b("appName", paramString);
      }
    }
  }

  public void a(String paramString1, String paramString2, String paramString3, Long paramLong)
  {
    a();
    an.a().a(ao.c);
    an.a().a(true);
    a("event", b(paramString1, paramString2, paramString3, paramLong));
    an.a().a(false);
  }

  public void a(String paramString, boolean paramBoolean)
  {
    a();
    an.a().a(ao.e);
    an.a().a(true);
    a("exception", b(paramString, paramBoolean));
    an.a().a(false);
  }

  public void a(boolean paramBoolean)
  {
    an.a().a(ao.u);
    this.c.b("anonymizeIp", Boolean.toString(paramBoolean));
  }

  public Map b(String paramString1, String paramString2, String paramString3, Long paramLong)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("eventCategory", paramString1);
    localHashMap.put("eventAction", paramString2);
    localHashMap.put("eventLabel", paramString3);
    if (paramLong != null)
      localHashMap.put("eventValue", Long.toString(paramLong.longValue()));
    an.a().a(ao.Y);
    return localHashMap;
  }

  public Map b(String paramString, boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("exDescription", paramString);
    localHashMap.put("exFatal", Boolean.toString(paramBoolean));
    an.a().a(ao.H);
    return localHashMap;
  }

  public void b(String paramString)
  {
    if (this.e)
      ay.i("Tracking already started, setAppVersion call ignored");
    while (true)
    {
      return;
      an.a().a(ao.q);
      this.c.b("appVersion", paramString);
    }
  }

  public void b(boolean paramBoolean)
  {
    a();
    an.a().a(ao.m);
    au localau = this.c;
    if (paramBoolean);
    for (String str = "start"; ; str = null)
    {
      localau.a("sessionControl", str);
      return;
    }
  }

  public void c(String paramString)
  {
    a();
    if (TextUtils.isEmpty(paramString))
      throw new IllegalStateException("trackView requires a appScreen to be set");
    an.a().a(ao.b);
    this.c.b("description", paramString);
    a("appview", null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.as
 * JD-Core Version:    0.6.2
 */