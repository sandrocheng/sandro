package com.keniu.security.rates;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.ijinshan.kpref.t;

public final class c
{
  private static final boolean h = true;
  private static final boolean i = true;
  private static final int j = 1;
  private static final String k = null;
  private static final String l = null;
  private static final float m;
  private static final long n;
  private static c o;
  public boolean a;
  public boolean b;
  public int c;
  public String d;
  public float e;
  public long f;
  public String g;

  private c()
  {
  }

  private c(Context paramContext)
  {
    b(paramContext);
  }

  public static c a(Context paramContext)
  {
    try
    {
      if (o == null)
      {
        c localc1 = new c();
        o = localc1;
        localc1.b(paramContext);
      }
      c localc2 = o;
      return localc2;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(int paramInt)
  {
    this.c = Math.min(100, Math.max(1, paramInt));
  }

  private void b(Context paramContext)
  {
    SharedPreferences localSharedPreferences = t.b(paramContext);
    this.a = localSharedPreferences.getBoolean(paramContext.getString(2131428199), true);
    this.b = localSharedPreferences.getBoolean(paramContext.getString(2131428200), true);
    this.d = localSharedPreferences.getString(paramContext.getString(2131428201), k);
    this.e = localSharedPreferences.getFloat(paramContext.getString(2131428202), 0.0F);
    this.c = localSharedPreferences.getInt(paramContext.getString(2131428203), 1);
    this.f = localSharedPreferences.getLong(paramContext.getString(2131428204), 0L);
    this.g = localSharedPreferences.getString(paramContext.getString(2131428205), l);
  }

  public final float a()
  {
    return this.e / 100.0F;
  }

  public final void a(Context paramContext, int paramInt)
  {
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    switch (paramInt)
    {
    default:
    case 2131428199:
    case 2131428200:
    case 2131428201:
    case 2131428202:
    case 2131428203:
    case 2131428204:
    case 2131428205:
    }
    while (true)
    {
      localEditor.commit();
      return;
      localEditor.putBoolean(paramContext.getString(2131428199), this.a);
      continue;
      localEditor.putBoolean(paramContext.getString(2131428200), this.b);
      continue;
      localEditor.putString(paramContext.getString(2131428201), this.d);
      continue;
      localEditor.putFloat(paramContext.getString(2131428202), this.e);
      continue;
      localEditor.putInt(paramContext.getString(2131428203), this.c);
      continue;
      localEditor.putLong(paramContext.getString(2131428204), this.f);
      continue;
      localEditor.putString(paramContext.getString(2131428205), this.g);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.rates.c
 * JD-Core Version:    0.6.2
 */