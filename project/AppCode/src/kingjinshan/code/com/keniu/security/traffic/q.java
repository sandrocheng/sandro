package com.keniu.security.traffic;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class q
{
  private static Context a;
  private static final String b = "DroidWallPrefs";
  private static final String c = "AllowedUids3G";
  private static final String d = "AllowedUidsWifi";
  private static final String e = "white_list";
  private static final String f = "FirstAccessFireWall";
  private static final String g = "PopButtonClose";
  private static final String h = "HasRootAccess";
  private static final String i = "Any3GSwitch";
  private static final String j = "AnyWifiSwitch";
  private static final String k = "IsWifiClick";
  private static final String l = "Is3GClick";
  private static final String m = "IsFireWallOperateList";
  private static final String n = "IsAutoCloseList";

  public static String a()
  {
    return a.getSharedPreferences("DroidWallPrefs", 0).getString("white_list", "");
  }

  public static void a(int paramInt, boolean paramBoolean)
  {
    String str = b();
    SharedPreferences.Editor localEditor = a.getSharedPreferences("DroidWallPrefs", 0).edit();
    if (paramBoolean)
      if (str.contains(String.valueOf(paramInt)))
        str = str.replaceAll(String.valueOf(paramInt) + "#", "");
    while (true)
    {
      localEditor.putString("IsFireWallOperateList", str);
      localEditor.commit();
      return;
      if (!str.contains(String.valueOf(paramInt)))
        str = str + String.valueOf(paramInt) + "#";
    }
  }

  public static void a(Context paramContext)
  {
    a = paramContext.getApplicationContext();
  }

  public static void a(String paramString)
  {
    SharedPreferences.Editor localEditor = a.getSharedPreferences("DroidWallPrefs", 0).edit();
    localEditor.putString("AllowedUidsWifi", paramString);
    localEditor.commit();
  }

  public static void a(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = a.getSharedPreferences("DroidWallPrefs", 0).edit();
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
  }

  public static void a(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = a.getSharedPreferences("DroidWallPrefs", 0).edit();
    localEditor.putBoolean("Any3GSwitch", paramBoolean);
    localEditor.commit();
  }

  public static String b()
  {
    return a.getSharedPreferences("DroidWallPrefs", 0).getString("IsFireWallOperateList", "");
  }

  public static void b(int paramInt, boolean paramBoolean)
  {
    String str = c();
    SharedPreferences.Editor localEditor = a.getSharedPreferences("DroidWallPrefs", 0).edit();
    if (paramBoolean)
      if (str.contains(String.valueOf(paramInt)))
        str = str.replaceAll(String.valueOf(paramInt) + "#", "");
    while (true)
    {
      localEditor.putString("IsAutoCloseList", str);
      localEditor.commit();
      return;
      if (!str.contains(String.valueOf(paramInt)))
        str = str + String.valueOf(paramInt) + "#";
    }
  }

  public static void b(String paramString)
  {
    SharedPreferences.Editor localEditor = a.getSharedPreferences("DroidWallPrefs", 0).edit();
    localEditor.putString("AllowedUids3G", paramString);
    localEditor.commit();
  }

  public static void b(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = a.getSharedPreferences("DroidWallPrefs", 0).edit();
    localEditor.putBoolean("AnyWifiSwitch", paramBoolean);
    localEditor.commit();
  }

  public static String c()
  {
    return a.getSharedPreferences("DroidWallPrefs", 0).getString("IsAutoCloseList", "");
  }

  public static String c(String paramString)
  {
    return a.getSharedPreferences("DroidWallPrefs", 0).getString(paramString, "");
  }

  public static void c(int paramInt, boolean paramBoolean)
  {
    String str = a();
    SharedPreferences.Editor localEditor = a.getSharedPreferences("DroidWallPrefs", 0).edit();
    if (paramBoolean)
      if (str.contains(String.valueOf(paramInt)))
        str = str.replaceAll(String.valueOf(paramInt) + ",", "");
    while (true)
    {
      localEditor.putString("white_list", str);
      localEditor.commit();
      return;
      if (!str.contains(String.valueOf(paramInt)))
        str = str + String.valueOf(paramInt) + ",";
    }
  }

  public static void c(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = a.getSharedPreferences("DroidWallPrefs", 0).edit();
    localEditor.putBoolean("IsWifiClick", paramBoolean);
    localEditor.commit();
  }

  public static String d()
  {
    return a.getSharedPreferences("DroidWallPrefs", 0).getString("AllowedUidsWifi", "");
  }

  public static void d(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = a.getSharedPreferences("DroidWallPrefs", 0).edit();
    localEditor.putBoolean("Is3GClick", paramBoolean);
    localEditor.commit();
  }

  public static String e()
  {
    return a.getSharedPreferences("DroidWallPrefs", 0).getString("AllowedUids3G", "");
  }

  private static void e(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = a.getSharedPreferences("DroidWallPrefs", 0).edit();
    localEditor.putBoolean("HasRootAccess", paramBoolean);
    localEditor.commit();
  }

  public static void f()
  {
    SharedPreferences.Editor localEditor = a.getSharedPreferences("DroidWallPrefs", 0).edit();
    localEditor.putBoolean("FirstAccessFireWall", false);
    localEditor.commit();
  }

  public static boolean g()
  {
    return a.getSharedPreferences("DroidWallPrefs", 0).getBoolean("FirstAccessFireWall", true);
  }

  public static void h()
  {
    SharedPreferences.Editor localEditor = a.getSharedPreferences("DroidWallPrefs", 0).edit();
    localEditor.putBoolean("PopButtonClose", true);
    localEditor.commit();
  }

  public static boolean i()
  {
    return a.getSharedPreferences("DroidWallPrefs", 0).getBoolean("PopButtonClose", false);
  }

  public static boolean j()
  {
    return a.getSharedPreferences("DroidWallPrefs", 0).getBoolean("Any3GSwitch", false);
  }

  public static boolean k()
  {
    return a.getSharedPreferences("DroidWallPrefs", 0).getBoolean("AnyWifiSwitch", false);
  }

  private static boolean l()
  {
    return a.getSharedPreferences("DroidWallPrefs", 0).getBoolean("HasRootAccess", false);
  }

  private static boolean m()
  {
    return a.getSharedPreferences("DroidWallPrefs", 0).getBoolean("IsWifiClick", false);
  }

  private static boolean n()
  {
    return a.getSharedPreferences("DroidWallPrefs", 0).getBoolean("Is3GClick", false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.q
 * JD-Core Version:    0.6.2
 */