package com.google.a.a.a;

import android.text.TextUtils;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public class bf
{
  private static final DecimalFormat a = new DecimalFormat("0.######", new DecimalFormatSymbols(Locale.US));
  private final bi b;
  private final bh c;
  private volatile boolean d = false;
  private volatile boolean e = false;
  private long f = 120000L;
  private long g;
  private boolean h = true;

  bf()
  {
    this.b = null;
    this.c = null;
  }

  bf(String paramString, bi parambi)
  {
    if (paramString == null)
      throw new IllegalArgumentException("trackingId cannot be null");
    this.b = parambi;
    this.c = new bh(null);
    this.c.b("trackingId", paramString);
    this.c.b("sampleRate", "100");
    this.c.a("sessionControl", "start");
    this.c.b("useSecure", Boolean.toString(true));
  }

  private void a(String paramString, Map paramMap)
  {
    this.e = true;
    if (paramMap == null)
      paramMap = new HashMap();
    paramMap.put("hitType", paramString);
    this.c.a(paramMap, Boolean.valueOf(true));
    if (!a())
      aq.i("Too many hits sent too quickly, throttling invoked.");
    while (true)
    {
      this.c.a();
      return;
      this.b.a(this.c.b());
    }
  }

  private void b()
  {
    if (this.d)
      throw new IllegalStateException("Tracker closed");
  }

  public void a(int paramInt, Long paramLong)
  {
    if (paramInt < 1)
      aq.h("index must be > 0, ignoring setCustomMetric call for " + paramInt + ", " + paramLong);
    while (true)
    {
      return;
      String str = null;
      if (paramLong != null)
        str = Long.toString(paramLong.longValue());
      this.c.a(bj.a("customMetric", paramInt), str);
    }
  }

  public void a(int paramInt, String paramString)
  {
    if (paramInt < 1)
      aq.h("index must be > 0, ignoring setCustomDimension call for " + paramInt + ", " + paramString);
    while (true)
    {
      return;
      this.c.a(bj.a("customDimension", paramInt), paramString);
    }
  }

  public void a(String paramString)
  {
    if (this.e)
      aq.i("Tracking already started, setAppName call ignored");
    while (true)
    {
      return;
      if (TextUtils.isEmpty(paramString))
      {
        aq.i("setting appName to empty value not allowed, call ignored");
      }
      else
      {
        ah.a().a(ai.o);
        this.c.b("appName", paramString);
      }
    }
  }

  public void a(String paramString1, String paramString2, String paramString3, Long paramLong)
  {
    b();
    ah.a().a(ai.c);
    ah.a().a(true);
    a("event", b(paramString1, paramString2, paramString3, paramLong));
    ah.a().a(false);
  }

  public void a(Map paramMap1, Map paramMap2)
  {
    if (paramMap1 != null)
    {
      Iterator localIterator2 = paramMap1.keySet().iterator();
      while (localIterator2.hasNext())
      {
        Integer localInteger2 = (Integer)localIterator2.next();
        a(localInteger2.intValue(), (String)paramMap1.get(localInteger2));
      }
    }
    if (paramMap2 != null)
    {
      Iterator localIterator1 = paramMap2.keySet().iterator();
      while (localIterator1.hasNext())
      {
        Integer localInteger1 = (Integer)localIterator1.next();
        a(localInteger1.intValue(), (Long)paramMap2.get(localInteger1));
      }
    }
  }

  boolean a()
  {
    boolean bool1 = true;
    while (true)
    {
      try
      {
        boolean bool2 = this.h;
        if (!bool2)
          return bool1;
        long l1 = System.currentTimeMillis();
        if (this.f < 120000L)
        {
          long l2 = l1 - this.g;
          if (l2 > 0L)
            this.f = Math.min(120000L, l2 + this.f);
        }
        this.g = l1;
        if (this.f >= 2000L)
        {
          this.f -= 2000L;
          continue;
        }
      }
      finally
      {
      }
      aq.i("Excessive tracking detected.  Tracking call ignored.");
      bool1 = false;
    }
  }

  public Map b(String paramString1, String paramString2, String paramString3, Long paramLong)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("eventCategory", paramString1);
    localHashMap.put("eventAction", paramString2);
    localHashMap.put("eventLabel", paramString3);
    if (paramLong != null)
      localHashMap.put("eventValue", Long.toString(paramLong.longValue()));
    ah.a().a(ai.Y);
    return localHashMap;
  }

  public void b(String paramString)
  {
    if (this.e)
      aq.i("Tracking already started, setAppVersion call ignored");
    while (true)
    {
      return;
      ah.a().a(ai.q);
      this.c.b("appVersion", paramString);
    }
  }

  public void c(String paramString)
  {
    b();
    if (TextUtils.isEmpty(paramString))
      throw new IllegalStateException("trackView requires a appScreen to be set");
    ah.a().a(ai.b);
    this.c.b("description", paramString);
    a("appview", null);
  }

  public void d(String paramString)
  {
    ah.a().a(ai.A);
    this.c.a("referrer", paramString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.a.bf
 * JD-Core Version:    0.6.2
 */