package com.keniu.security.traffic;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.ijinshan.kpref.t;
import java.util.Calendar;
import java.util.Date;

public final class y
{
  private static final boolean A = true;
  private static final boolean B = true;
  private static final boolean C = true;
  private static final long D = 0L;
  private static final long E = 0L;
  private static final int F = 1;
  private static final long G = 0L;
  private static final long H = 0L;
  private static final long I = 5242880L;
  private static final long J = 0L;
  private static final long K = 0L;
  private static y L;
  public static final long x = 60000L;
  public static final long y = 3600000L;
  public static final long z = 86400000L;
  public boolean a;
  public boolean b;
  public boolean c;
  public long d;
  public int e;
  public long f;
  public long g;
  public long h;
  public long i;
  public long j;
  public String k;
  public String l;
  public String m;
  public String n;
  public long o;
  public String p;
  public boolean q;
  public boolean r;
  public boolean s;
  public long t;
  public String u;
  public int v;
  public int w;

  private y()
  {
  }

  private y(Context paramContext)
  {
    e(paramContext);
  }

  public static long a(long paramLong)
  {
    return 86400000L * ((paramLong - 60000L * new Date(paramLong).getTimezoneOffset()) / 86400000L);
  }

  public static y a(Context paramContext)
  {
    try
    {
      if (L == null)
      {
        y localy1 = new y();
        L = localy1;
        localy1.e(paramContext);
      }
      y localy2 = L;
      return localy2;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void a()
  {
    try
    {
      L = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void b(long paramLong)
  {
    this.i = paramLong;
  }

  public static boolean b()
  {
    if ((!TextUtils.isEmpty(L.k)) && (!TextUtils.isEmpty(L.l)) && (!TextUtils.isEmpty(L.n)) && (!TextUtils.isEmpty(L.m)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean b(Context paramContext)
  {
    int i1;
    if (!d(paramContext))
    {
      if ((TextUtils.isEmpty(L.k)) && (TextUtils.isEmpty(L.l)) && (TextUtils.isEmpty(L.n)) && (TextUtils.isEmpty(L.m)))
        break label65;
      i1 = 1;
      if (i1 == 0)
        break label70;
    }
    label65: label70: for (boolean bool = true; ; bool = false)
    {
      return bool;
      i1 = 0;
      break;
    }
  }

  public static void c(Context paramContext)
  {
    SharedPreferences localSharedPreferences = t.b(paramContext);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    for (int i3 : new int[] { 2131428299, 2131428300, 2131428301, 2131428302, 2131428291, 2131428295, 2131428296, 2131428297, 2131428296 })
      if (localSharedPreferences.contains(paramContext.getString(i3)))
      {
        localEditor.remove(paramContext.getString(i3));
        localEditor.commit();
      }
    a();
  }

  private static boolean c()
  {
    if ((!TextUtils.isEmpty(L.k)) || (!TextUtils.isEmpty(L.l)) || (!TextUtils.isEmpty(L.n)) || (!TextUtils.isEmpty(L.m)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean d(Context paramContext)
  {
    try
    {
      long l1 = t.b(paramContext).getLong(paramContext.getString(2131428291), 0L);
      if (l1 != 0L)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  private void e(Context paramContext)
  {
    SharedPreferences localSharedPreferences = t.b(paramContext);
    this.a = localSharedPreferences.getBoolean(paramContext.getString(2131428288), true);
    this.r = localSharedPreferences.getBoolean("kn_traffis_xuanfuchuang_key", false);
    this.s = localSharedPreferences.getBoolean(paramContext.getString(2131428080), true);
    this.t = localSharedPreferences.getLong(paramContext.getString(2131428290), System.currentTimeMillis());
    this.k = localSharedPreferences.getString(paramContext.getString(2131428299), "");
    this.l = localSharedPreferences.getString(paramContext.getString(2131428300), "");
    this.q = localSharedPreferences.getBoolean(paramContext.getString(2131428286), true);
    this.u = localSharedPreferences.getString(paramContext.getString(2131428032), "3");
    this.v = localSharedPreferences.getInt(paramContext.getString(2131428033), 0);
    this.w = localSharedPreferences.getInt(paramContext.getString(2131428292), 3);
    this.n = localSharedPreferences.getString(paramContext.getString(2131428301), "");
    this.m = localSharedPreferences.getString(paramContext.getString(2131428302), "");
    this.b = localSharedPreferences.getBoolean(paramContext.getString(2131428289), true);
    this.c = localSharedPreferences.getBoolean(paramContext.getString(2131428309), true);
    this.d = localSharedPreferences.getLong(paramContext.getString(2131428291), 0L);
    this.e = localSharedPreferences.getInt(paramContext.getString(2131428295), 1);
    this.f = localSharedPreferences.getLong(paramContext.getString(2131428304), 0L);
    this.i = localSharedPreferences.getLong(paramContext.getString(2131428296), 0L);
    this.o = localSharedPreferences.getLong(paramContext.getString(2131428055), 0L);
    this.p = localSharedPreferences.getString(paramContext.getString(2131428297), "");
    this.g = localSharedPreferences.getLong(paramContext.getString(2131428307), 5242880L);
    this.h = localSharedPreferences.getLong(paramContext.getString(2131428308), 0L);
    this.j = localSharedPreferences.getLong(paramContext.getString(2131428310), 0L);
    if (this.j == 0L)
    {
      this.j = System.currentTimeMillis();
      a(paramContext, 2131428310);
    }
  }

  public final long a(Date paramDate)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.clear();
    localCalendar.set(1900 + paramDate.getYear(), paramDate.getMonth(), 1);
    int i1 = Math.min(Math.max(1, this.e), localCalendar.getActualMaximum(5));
    localCalendar.clear();
    if (i1 <= paramDate.getDate())
      localCalendar.set(1900 + paramDate.getYear(), paramDate.getMonth(), i1);
    while (true)
    {
      return localCalendar.getTimeInMillis();
      localCalendar.set(1900 + paramDate.getYear(), paramDate.getMonth(), 1);
      localCalendar.add(5, -1);
      localCalendar.set(5, Math.min(localCalendar.getActualMaximum(5), i1));
    }
  }

  public final void a(int paramInt)
  {
    this.e = Math.min(31, Math.max(1, paramInt));
  }

  public final void a(Context paramContext, int paramInt)
  {
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    switch (paramInt)
    {
    default:
    case 2131428288:
    case 2131428290:
    case 2131428299:
    case 2131428300:
    case 2131428286:
    case 2131428032:
    case 2131428033:
    case 2131428292:
    case 2131428079:
    case 2131428080:
    case 2131428301:
    case 2131428302:
    case 2131428289:
    case 2131428309:
    case 2131428291:
    case 2131428295:
    case 2131428304:
    case 2131428296:
    case 2131428055:
    case 2131428297:
    case 2131428307:
    case 2131428308:
    case 2131428310:
    }
    while (true)
    {
      localEditor.commit();
      return;
      localEditor.putBoolean(paramContext.getString(2131428288), this.a);
      continue;
      localEditor.putLong(paramContext.getString(2131428290), this.t);
      continue;
      localEditor.putString(paramContext.getString(2131428299), this.k);
      continue;
      localEditor.putString(paramContext.getString(2131428300), this.l);
      continue;
      localEditor.putBoolean(paramContext.getString(2131428286), this.q);
      continue;
      localEditor.putString(paramContext.getString(2131428032), this.u);
      continue;
      localEditor.putInt(paramContext.getString(2131428033), this.v);
      continue;
      localEditor.putInt(paramContext.getString(2131428292), this.w);
      continue;
      localEditor.putBoolean(paramContext.getString(2131428079), this.r);
      continue;
      localEditor.putBoolean(paramContext.getString(2131428080), this.s);
      continue;
      localEditor.putString(paramContext.getString(2131428301), this.n);
      continue;
      localEditor.putString(paramContext.getString(2131428302), this.m);
      continue;
      localEditor.putBoolean(paramContext.getString(2131428289), this.b);
      continue;
      localEditor.putBoolean(paramContext.getString(2131428309), this.c);
      continue;
      localEditor.putLong(paramContext.getString(2131428291), this.d);
      continue;
      localEditor.putInt(paramContext.getString(2131428295), this.e);
      continue;
      localEditor.putLong(paramContext.getString(2131428304), this.f);
      continue;
      localEditor.putLong(paramContext.getString(2131428296), this.i);
      continue;
      localEditor.putLong(paramContext.getString(2131428055), this.o);
      continue;
      localEditor.putString(paramContext.getString(2131428297), this.p);
      continue;
      localEditor.putLong(paramContext.getString(2131428307), this.g);
      continue;
      localEditor.putLong(paramContext.getString(2131428308), this.h);
      continue;
      localEditor.putLong(paramContext.getString(2131428310), this.j);
    }
  }

  public final long b(Date paramDate)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.clear();
    localCalendar.set(1900 + paramDate.getYear(), paramDate.getMonth(), 1);
    int i1 = Math.min(Math.max(1, this.e), localCalendar.getActualMaximum(5));
    localCalendar.clear();
    if (i1 <= paramDate.getDate())
    {
      localCalendar.set(1900 + paramDate.getYear(), 1 + paramDate.getMonth(), 1);
      localCalendar.set(5, Math.min(Math.max(1, this.e), localCalendar.getActualMaximum(5)));
    }
    while (true)
    {
      return localCalendar.getTimeInMillis();
      localCalendar.set(1900 + paramDate.getYear(), paramDate.getMonth(), i1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.y
 * JD-Core Version:    0.6.2
 */