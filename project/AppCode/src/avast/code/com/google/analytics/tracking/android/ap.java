package com.google.analytics.tracking.android;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class ap
  implements bp, c
{
  private static ap j;
  private boolean a;
  private l b;
  private Context c;
  private bo d;
  private a e;
  private volatile String f;
  private volatile Boolean g;
  private final Map h = new HashMap();
  private String i;

  private ap()
  {
  }

  private ap(Context paramContext)
  {
    this(paramContext, ai.a(paramContext));
  }

  private ap(Context paramContext, l paraml)
  {
    if (paramContext == null)
      throw new IllegalArgumentException("context cannot be null");
    this.c = paramContext.getApplicationContext();
    this.b = paraml;
    this.e = new a();
    this.b.a(new aq(this));
    this.b.a(new ar(this));
  }

  public static ap a(Context paramContext)
  {
    try
    {
      if (j == null)
        j = new ap(paramContext);
      ap localap = j;
      return localap;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public bo a(String paramString)
  {
    if (paramString == null)
      try
      {
        throw new IllegalArgumentException("trackingId cannot be null");
      }
      finally
      {
      }
    Object localObject1 = (bo)this.h.get(paramString);
    if (localObject1 == null)
    {
      localObject1 = new as(paramString, this);
      this.h.put(paramString, localObject1);
      if (this.d == null)
        this.d = ((bo)localObject1);
    }
    an.a().a(ao.N);
    return localObject1;
  }

  public void a(Map paramMap)
  {
    if (paramMap == null)
      try
      {
        throw new IllegalArgumentException("hit cannot be null");
      }
      finally
      {
      }
    paramMap.put("language", bq.a(Locale.getDefault()));
    paramMap.put("adSenseAdMobHitId", Integer.toString(this.e.a()));
    paramMap.put("screenResolution", this.c.getResources().getDisplayMetrics().widthPixels + "x" + this.c.getResources().getDisplayMetrics().heightPixels);
    paramMap.put("usage", an.a().c());
    an.a().b();
    this.b.a(paramMap);
    this.i = ((String)paramMap.get("trackingId"));
  }

  public void a(boolean paramBoolean)
  {
    an.a().a(ao.L);
    this.a = paramBoolean;
    ay.a(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.ap
 * JD-Core Version:    0.6.2
 */