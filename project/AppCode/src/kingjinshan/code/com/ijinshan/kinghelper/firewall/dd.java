package com.ijinshan.kinghelper.firewall;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.ijinshan.kpref.t;

public final class dd
{
  private static Context a;
  private static final boolean b = true;
  private static final dg c = dg.e;
  private static boolean d = false;
  private static final df e = df.a;
  private static boolean f = false;
  private static final String g = "pre_firewall_user_keyword";
  private static final de h = de.a;
  private static final boolean i = false;
  private static boolean j = false;
  private static final String k = "com.ijinshan.kinghelper.firewall.FirewallLogDetailActivity.show.report.dialog";
  private static final String l = "com.ijinshan.kinghelper.firewall.FirewallLogDetailActivity.auto.report";
  private static final String m = "mose_lastcrashtime";

  private static String E()
  {
    String str = a.getString(2131427749);
    return t.b(a).getString(str, null);
  }

  private static void F()
  {
    a(2131427763, 1320);
    a(2131427764, 420);
  }

  private static boolean G()
  {
    return a(2131427780, true);
  }

  private static void H()
  {
    a(2131427364, "2");
  }

  private static void I()
  {
    a(2131427788, "2");
  }

  private static boolean J()
  {
    return a("ScannedRubbishSMSDlgShow", false);
  }

  private static boolean K()
  {
    return a("com.ijinshan.kinghelper.firewall.FirewallLogDetailActivity.auto.report", false);
  }

  private static boolean L()
  {
    return a("com.ijinshan.kinghelper.firewall.FirewallLogDetailActivity.show.report.dialog", true);
  }

  private static String a(String paramString1, String paramString2)
  {
    return t.b(a).getString(paramString1, paramString2);
  }

  public static void a()
  {
    b(2131427745, a(2131427745, true));
    b(2131427761, a(2131427761, false));
    a(g());
    a(i());
    c();
  }

  public static void a(int paramInt)
  {
    a(2131427763, paramInt);
  }

  private static void a(int paramInt1, int paramInt2)
  {
    String str = a.getString(paramInt1);
    SharedPreferences.Editor localEditor = t.b(a).edit();
    localEditor.putInt(str, paramInt2);
    localEditor.commit();
  }

  private static void a(int paramInt, String paramString)
  {
    b(a.getString(paramInt), paramString);
  }

  public static void a(long paramLong)
  {
    SharedPreferences.Editor localEditor = t.b(a).edit();
    localEditor.putLong("mose_lastcrashtime", paramLong);
    localEditor.commit();
  }

  public static void a(Context paramContext)
  {
    a = paramContext.getApplicationContext();
  }

  public static void a(de paramde)
  {
    int n = paramde.e;
    b(a.getString(2131427749), a.getString(n));
  }

  private static void a(df paramdf)
  {
    df[] arrayOfdf = df.values();
    int n = arrayOfdf.length;
    for (int i1 = 0; i1 < n; i1++)
      b(arrayOfdf[i1].i, false);
    b(paramdf.i, true);
  }

  private static void a(dg paramdg)
  {
    dg[] arrayOfdg = dg.values();
    int n = arrayOfdg.length;
    for (int i1 = 0; i1 < n; i1++)
      b(arrayOfdg[i1].i, false);
    b(paramdg.i, true);
  }

  public static void a(String paramString)
  {
    a(dg.a(paramString));
  }

  private static void a(String paramString, int paramInt)
  {
    SharedPreferences.Editor localEditor = t.b(a).edit();
    localEditor.putInt(paramString, paramInt);
    localEditor.commit();
  }

  private static void a(String paramString, long paramLong)
  {
    SharedPreferences.Editor localEditor = t.b(a).edit();
    localEditor.putLong(paramString, paramLong);
    localEditor.commit();
  }

  public static void a(boolean paramBoolean)
  {
    b(2131427745, paramBoolean);
  }

  public static void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!paramBoolean1)
      b(2131427760, paramBoolean2);
    while (true)
    {
      return;
      b(2131427779, paramBoolean2);
    }
  }

  private static boolean a(int paramInt, boolean paramBoolean)
  {
    return a(a.getString(paramInt), paramBoolean);
  }

  private static boolean a(String paramString, boolean paramBoolean)
  {
    return t.b(a).getBoolean(paramString, paramBoolean);
  }

  private static int b(int paramInt1, int paramInt2)
  {
    String str = a.getString(paramInt1);
    return t.b(a).getInt(str, paramInt2);
  }

  private static int b(String paramString, int paramInt)
  {
    return t.b(a).getInt(paramString, paramInt);
  }

  public static void b()
  {
    b(2131427745, true);
    b(2131427761, false);
    a(df.a);
    a(dg.e);
    l(true);
    m(true);
    n(true);
    o(true);
    p(true);
    q(true);
    r(true);
    a(true, false);
    l(false);
    m(false);
    n(false);
    o(false);
    p(false);
    q(false);
    r(false);
    a(false, false);
    a(2131427364, "2");
    a(2131427788, "2");
    a(2131427763, 1320);
    a(2131427764, 420);
  }

  public static void b(int paramInt)
  {
    a(2131427764, paramInt);
  }

  private static void b(int paramInt, boolean paramBoolean)
  {
    b(a.getString(paramInt), paramBoolean);
  }

  public static void b(String paramString)
  {
    a(df.a(paramString));
  }

  private static void b(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = t.b(a).edit();
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
  }

  private static void b(String paramString, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = t.b(a).edit();
    localEditor.putBoolean(paramString, paramBoolean);
    localEditor.commit();
  }

  public static void b(boolean paramBoolean)
  {
    b(2131427761, paramBoolean);
  }

  public static void c()
  {
    b(2131427833, a(2131427833, false));
  }

  private static void c(int paramInt)
  {
    b(a.getString(2131427749), a.getString(paramInt));
  }

  public static boolean c(String paramString)
  {
    SharedPreferences.Editor localEditor = t.b(a).edit();
    localEditor.putString("pre_firewall_user_keyword", paramString);
    localEditor.commit();
    return true;
  }

  public static boolean c(boolean paramBoolean)
  {
    if (!paramBoolean);
    for (boolean bool = a(2131427782, true); ; bool = a(2131427771, true))
      return bool;
  }

  private static long d(String paramString)
  {
    return t.b(a).getLong(paramString, 0L);
  }

  public static boolean d()
  {
    return a(2131427745, true);
  }

  public static boolean d(boolean paramBoolean)
  {
    if (!paramBoolean);
    for (boolean bool = a(2131427783, true); ; bool = a(2131427768, true))
      return bool;
  }

  private static void e(String paramString)
  {
    a(de.a(paramString));
  }

  public static boolean e()
  {
    return a(2131427761, false);
  }

  public static boolean e(boolean paramBoolean)
  {
    if (!paramBoolean);
    for (boolean bool = a(2131427784, f); ; bool = a(2131427767, d))
      return bool;
  }

  public static dg f()
  {
    dg[] arrayOfdg = dg.values();
    int n = arrayOfdg.length;
    int i1 = 0;
    dg localdg2;
    if (i1 < n)
    {
      localdg2 = arrayOfdg[i1];
      if (!a(localdg2.i, false));
    }
    for (dg localdg1 = localdg2; ; localdg1 = c)
    {
      return localdg1;
      i1++;
      break;
    }
  }

  public static boolean f(boolean paramBoolean)
  {
    if (!paramBoolean);
    for (boolean bool = a(2131427785, f); ; bool = a(2131427766, d))
      return bool;
  }

  public static df g()
  {
    df[] arrayOfdf = df.values();
    int n = arrayOfdf.length;
    int i1 = 0;
    df localdf2;
    if (i1 < n)
    {
      localdf2 = arrayOfdf[i1];
      if (!a(localdf2.i, false));
    }
    for (df localdf1 = localdf2; ; localdf1 = e)
    {
      return localdf1;
      i1++;
      break;
    }
  }

  public static boolean g(boolean paramBoolean)
  {
    if (!paramBoolean);
    for (boolean bool = a(2131427786, f); ; bool = a(2131427765, d))
      return bool;
  }

  public static String h()
  {
    String str = t.b(a).getString("pre_firewall_user_keyword", null);
    if (str == null)
      str = null;
    while (true)
    {
      return str;
      if (str.length() == 0)
        str = null;
    }
  }

  public static boolean h(boolean paramBoolean)
  {
    if (paramBoolean);
    for (boolean bool = a(2131427778, true); ; bool = a(2131427759, true))
      return bool;
  }

  public static de i()
  {
    String str = a.getString(2131427749);
    return de.a(t.b(a).getString(str, null));
  }

  public static boolean i(boolean paramBoolean)
  {
    if (paramBoolean);
    for (boolean bool = a(2131427779, false); ; bool = a(2131427760, false))
      return bool;
  }

  public static boolean j()
  {
    return a(2131427746, false);
  }

  public static boolean j(boolean paramBoolean)
  {
    if (paramBoolean);
    for (boolean bool = a(2131427777, true); ; bool = a(2131427758, true))
      return bool;
  }

  public static void k(boolean paramBoolean)
  {
    b(2131427746, paramBoolean);
  }

  public static boolean k()
  {
    return a(2131427789, j);
  }

  public static void l()
  {
    b(2131427791, true);
  }

  private static void l(boolean paramBoolean)
  {
    if (!paramBoolean)
      b(2131427782, true);
    while (true)
    {
      return;
      b(2131427771, true);
    }
  }

  private static void m(boolean paramBoolean)
  {
    if (!paramBoolean)
      b(2131427783, true);
    while (true)
    {
      return;
      b(2131427768, true);
    }
  }

  public static boolean m()
  {
    return a(2131427791, false);
  }

  public static int n()
  {
    return b(2131427763, 1320);
  }

  private static void n(boolean paramBoolean)
  {
    if (!paramBoolean)
      b(2131427784, false);
    while (true)
    {
      return;
      b(2131427767, false);
    }
  }

  public static int o()
  {
    return b(2131427764, 420);
  }

  private static void o(boolean paramBoolean)
  {
    if (!paramBoolean)
      b(2131427785, false);
    while (true)
    {
      return;
      b(2131427766, false);
    }
  }

  private static void p(boolean paramBoolean)
  {
    if (!paramBoolean)
      b(2131427786, false);
    while (true)
    {
      return;
      b(2131427765, false);
    }
  }

  public static boolean p()
  {
    return a(2131427833, false);
  }

  private static void q(boolean paramBoolean)
  {
    if (!paramBoolean)
      b(2131427759, true);
    while (true)
    {
      return;
      b(2131427778, true);
    }
  }

  public static boolean q()
  {
    return a(2131427835, true);
  }

  public static String r()
  {
    return t.b(a).getString(a.getString(2131427364), "2");
  }

  private static void r(boolean paramBoolean)
  {
    if (!paramBoolean)
      b(2131427758, true);
    while (true)
    {
      return;
      b(2131427777, true);
    }
  }

  public static String s()
  {
    return t.b(a).getString(a.getString(2131427788), "2");
  }

  private static void s(boolean paramBoolean)
  {
    b(2131427789, paramBoolean);
  }

  public static void t()
  {
    b(2131427781, true);
  }

  private static void t(boolean paramBoolean)
  {
    b(2131427780, paramBoolean);
  }

  private static void u(boolean paramBoolean)
  {
    b(2131427833, paramBoolean);
  }

  public static boolean u()
  {
    return a(2131427781, false);
  }

  private static void v(boolean paramBoolean)
  {
    b(2131427835, paramBoolean);
  }

  public static boolean v()
  {
    return a("ScannedRubbishSMS2", false);
  }

  public static void w()
  {
    b("ScannedRubbishSMS2", true);
  }

  private static void w(boolean paramBoolean)
  {
    b(2131427747, paramBoolean);
  }

  public static void x()
  {
    b("ScannedRubbishSMSDlgShow", true);
  }

  private static void x(boolean paramBoolean)
  {
    b("com.ijinshan.kinghelper.firewall.FirewallLogDetailActivity.auto.report", paramBoolean);
  }

  public static long y()
  {
    return t.b(a).getLong("mose_lastcrashtime", 0L);
  }

  private static void y(boolean paramBoolean)
  {
    b("com.ijinshan.kinghelper.firewall.FirewallLogDetailActivity.show.report.dialog", paramBoolean);
  }

  public static boolean z()
  {
    return a(2131427358, true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.dd
 * JD-Core Version:    0.6.2
 */