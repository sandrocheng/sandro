package com.avg.tuneup;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.avg.toolkit.f.a;

public class j
{
  private static SharedPreferences a;
  private static SharedPreferences.Editor b;
  private static boolean c = false;

  public j(Context paramContext)
  {
    if (a == null)
    {
      a = paramContext.getSharedPreferences("av", 0);
      if (a != null)
        break label32;
      a.a("pref is null");
    }
    while (true)
    {
      return;
      try
      {
        label32: if (a(paramContext))
          c(paramContext);
        if (!a.getBoolean("VERSION_INITIALY_UPDATED", false))
        {
          c(paramContext);
          v().putBoolean("VERSION_INITIALY_UPDATED", true);
        }
      }
      catch (Exception localException)
      {
        a.a(localException);
      }
    }
  }

  public static void a(float paramFloat)
  {
    v().putFloat("data_plan_quota", paramFloat);
    u();
  }

  public static void a(int paramInt)
  {
    v().putInt("data_plan_quota_units", paramInt);
    u();
  }

  public static void a(long paramLong)
  {
    v().putLong("data_plan_quota_bytes", paramLong);
    u();
  }

  public static void a(String paramString)
  {
    v().putString("top_performance_activity_class_name", paramString);
    u();
  }

  public static void a(boolean paramBoolean)
  {
    v().putBoolean("traffic_counter_on", paramBoolean);
    u();
  }

  public static boolean a()
  {
    return a.getBoolean("traffic_counter_on", false);
  }

  private static boolean a(Context paramContext)
  {
    boolean bool1 = c;
    boolean bool2 = false;
    if (bool1);
    while (true)
    {
      return bool2;
      try
      {
        int i = a.getInt("version", 0);
        int j = b(paramContext);
        bool2 = false;
        if (i >= j)
          c = true;
      }
      catch (Exception localException)
      {
        while (true)
        {
          a.a(localException);
          bool2 = true;
        }
      }
    }
  }

  public static float b()
  {
    return a.getFloat("data_plan_quota", 2.0F);
  }

  private static int b(Context paramContext)
  {
    return paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionCode;
  }

  public static void b(int paramInt)
  {
    v().putInt("data_plan_cycle_units", paramInt);
    u();
  }

  public static void b(long paramLong)
  {
    v().putLong("billing_date", paramLong);
    u();
  }

  public static void b(String paramString)
  {
    v().putString("service_name", paramString);
    u();
  }

  public static void b(boolean paramBoolean)
  {
    v().putBoolean("restart_data_count", paramBoolean);
    u();
  }

  public static long c()
  {
    return a.getLong("data_plan_quota_bytes", 1L);
  }

  public static void c(int paramInt)
  {
    v().putInt("data_plan_cycle_value", paramInt);
    u();
  }

  private static void c(Context paramContext)
  {
    try
    {
      a.getFloat("data_plan_quota", 2.0F);
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        int i = a.getInt("data_plan_quota", 2);
        v().remove("data_plan_quota");
        a(i);
      }
    }
  }

  public static void c(boolean paramBoolean)
  {
    v().putBoolean("notify_on_data_plan_threshold", paramBoolean);
    u();
  }

  public static int d()
  {
    return a.getInt("data_plan_quota_units", 1);
  }

  public static void d(int paramInt)
  {
    v().putInt("refresh_rate", paramInt);
    u();
  }

  public static void d(boolean paramBoolean)
  {
    v().putBoolean("quota_ongoing_notification", paramBoolean);
    u();
  }

  public static int e()
  {
    return a.getInt("data_plan_cycle_units", 2);
  }

  public static void e(int paramInt)
  {
    v().putInt("data_plan_notification_threshold", paramInt);
    u();
  }

  public static void e(boolean paramBoolean)
  {
    v().putBoolean("notify_on_low_battery", paramBoolean);
    u();
  }

  public static int f()
  {
    return a.getInt("data_plan_cycle_value", 1);
  }

  public static void f(int paramInt)
  {
    v().putInt("quota_usage_notified_warning_id", paramInt);
    u();
  }

  public static void g(int paramInt)
  {
    v().putInt("notify_on_low_battery_threshold", paramInt);
    u();
  }

  public static boolean g()
  {
    return a.getBoolean("restart_data_count", true);
  }

  public static int h()
  {
    return a.getInt("refresh_rate", 1);
  }

  public static void h(int paramInt)
  {
    v().putInt("last_battery_threshold", paramInt);
    u();
  }

  public static boolean i()
  {
    return a.getBoolean("notify_on_data_plan_threshold", false);
  }

  public static int j()
  {
    return a.getInt("data_plan_notification_threshold", 90);
  }

  public static long k()
  {
    return a.getLong("billing_date", -1L);
  }

  public static int l()
  {
    return a.getInt("quota_usage_notified_warning_id", 0);
  }

  public static boolean m()
  {
    return a.getBoolean("quota_ongoing_notification", false);
  }

  public static boolean n()
  {
    return a.getBoolean("notify_on_low_battery", false);
  }

  public static int o()
  {
    return a.getInt("notify_on_low_battery_threshold", com.avg.tuneup.battery.c.b[1]);
  }

  public static int p()
  {
    return a.getInt("last_battery_threshold", 0);
  }

  public static boolean q()
  {
    return a.getBoolean("show_close_all_confirm_dialog", true);
  }

  public static void r()
  {
    v().putBoolean("show_close_all_confirm_dialog", false);
    u();
  }

  public static String s()
  {
    return a.getString("top_performance_activity_class_name", null);
  }

  public static String t()
  {
    return a.getString("service_name", null);
  }

  public static void u()
  {
    if (b != null)
    {
      b.commit();
      b = null;
    }
  }

  private static SharedPreferences.Editor v()
  {
    if (b == null)
      b = a.edit();
    return b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.j
 * JD-Core Version:    0.6.2
 */