package com.antivirus.core;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;

public class b
{
  public SharedPreferences a;

  public b(Context paramContext)
  {
    this.a = paramContext.getApplicationContext().getSharedPreferences("av", 0);
  }

  private boolean w()
  {
    return this.a.getBoolean("first_use_sdk", true);
  }

  public String a()
  {
    return this.a.getString("ignore_packages", "");
  }

  public String a(String paramString)
  {
    if (paramString == null)
    {
      com.avg.toolkit.f.a.a("got null");
      paramString = "";
    }
    byte[] arrayOfByte = paramString.getBytes();
    for (int i = 0; i < arrayOfByte.length; i++)
      arrayOfByte[i] = ((byte)(0xB ^ arrayOfByte[i]));
    String str = "";
    for (int j = 0; j < 5; j++)
      str = str + '_';
    return str + new String(a.a.a.a.a.a.a(arrayOfByte, false));
  }

  public void a(int paramInt)
  {
    a("ignore_settings", paramInt);
  }

  public void a(long paramLong)
  {
    a("last_update_long", paramLong);
  }

  @Deprecated
  public void a(Context paramContext)
  {
    if (!w());
    while (true)
    {
      return;
      SharedPreferences.Editor localEditor = this.a.edit();
      localEditor.putInt("ignore_settings", 0);
      localEditor.putString("sim_id", "");
      localEditor.putString("line1number", "");
      localEditor.putLong("last_update_long", 1255919352L);
      localEditor.putBoolean("auto_scan_sms", false);
      localEditor.putBoolean("first_use_sdk", false);
      localEditor.commit();
    }
  }

  public void a(String paramString, int paramInt)
  {
    SharedPreferences.Editor localEditor = this.a.edit();
    localEditor.putInt(paramString, paramInt);
    localEditor.commit();
  }

  public void a(String paramString, long paramLong)
  {
    SharedPreferences.Editor localEditor = this.a.edit();
    localEditor.putLong(paramString, paramLong);
    localEditor.commit();
  }

  public void a(String paramString, SharedPreferences.Editor paramEditor, Boolean paramBoolean)
  {
    if (!paramBoolean.booleanValue())
      paramString = a(paramString);
    paramEditor.putString("device_control_last_params", paramString);
  }

  public void a(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = this.a.edit();
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
  }

  public void a(String paramString, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.a.edit();
    localEditor.putBoolean(paramString, paramBoolean);
    localEditor.commit();
  }

  public void a(boolean paramBoolean)
  {
    a("do_sd_Scan", paramBoolean);
  }

  public String b()
  {
    return this.a.getString("ignore_files", "");
  }

  public String b(String paramString)
  {
    if (paramString == null)
    {
      com.avg.toolkit.f.a.a("got null");
      paramString = null;
    }
    while (true)
    {
      return paramString;
      if (paramString.length() > 5)
      {
        int i = 0;
        int j = 0;
        while (i < 5)
        {
          if (paramString.charAt(i) != '_')
            j = 1;
          i++;
        }
        if (j == 0)
        {
          byte[] arrayOfByte = a.a.a.a.a.a.b(paramString.substring(5));
          for (int k = 0; k < arrayOfByte.length; k++)
            arrayOfByte[k] = ((byte)(0xB ^ arrayOfByte[k]));
          paramString = new String(arrayOfByte);
        }
      }
    }
  }

  public void b(int paramInt)
  {
    a("security_threats_count_1", paramInt);
  }

  public void b(long paramLong)
  {
    a("next_update_long", paramLong);
  }

  @Deprecated
  public void b(boolean paramBoolean)
  {
    a("gps_in_device_sp", paramBoolean);
  }

  public long c()
  {
    return this.a.getLong("last_update_long", 0L);
  }

  public void c(int paramInt)
  {
    a("security_threats_count_2", paramInt);
  }

  public void c(long paramLong)
  {
    a("last_scheduled_update_long", paramLong);
  }

  public void c(String paramString)
  {
    String str = this.a.getString("ignore_packages", "");
    if (!TextUtils.isEmpty(str))
      paramString = str + "," + paramString;
    this.a.edit().putString("ignore_packages", paramString).commit();
  }

  public void c(boolean paramBoolean)
  {
    a("auto_scan_sms", paramBoolean);
  }

  public long d()
  {
    return this.a.getLong("next_update_long", 0L);
  }

  public void d(int paramInt)
  {
    a("security_threats_current_log", paramInt);
  }

  public void d(long paramLong)
  {
    a("auto_scan_last_time", paramLong);
  }

  public void d(String paramString)
  {
    String str = this.a.getString("ignore_packages", "").replaceAll(paramString + ",", "").replaceAll(paramString, "");
    this.a.edit().putString("ignore_packages", str).commit();
  }

  public void d(boolean paramBoolean)
  {
    a("enable_pup", paramBoolean);
  }

  public long e()
  {
    return this.a.getLong("last_scheduled_update_long", 0L);
  }

  public void e(long paramLong)
  {
    a("auto_scan_interval", paramLong);
  }

  public void e(String paramString)
  {
    String str = this.a.getString("ignore_files", "");
    this.a.edit().putString("ignore_files", str + "," + paramString).commit();
  }

  public void e(boolean paramBoolean)
  {
    a("url_anti_phishing_key", paramBoolean);
  }

  public long f()
  {
    return this.a.getLong("auto_scan_last_time", 0L);
  }

  public void f(String paramString)
  {
    String str = this.a.getString("ignore_files", "").replaceAll("," + paramString, "");
    this.a.edit().putString("ignore_files", str).commit();
  }

  public long g()
  {
    return this.a.getLong("auto_scan_interval", -1L);
  }

  public void g(String paramString)
  {
    a("country_iso_code", paramString);
  }

  public String h()
  {
    return this.a.getString("country_iso_code", "");
  }

  @Deprecated
  public void h(String paramString)
  {
    a("sim_id", paramString);
  }

  public void i(String paramString)
  {
    a("line1number", paramString);
  }

  public boolean i()
  {
    SharedPreferences localSharedPreferences = this.a;
    boolean bool = false;
    if (localSharedPreferences == null);
    while (true)
    {
      return bool;
      bool = this.a.getBoolean("do_sd_Scan", false);
    }
  }

  public int j()
  {
    try
    {
      int j = this.a.getInt("ignore_settings", 0);
      i = j;
      return i;
    }
    catch (Exception localException)
    {
      while (true)
        int i = 0;
    }
  }

  public void j(String paramString)
  {
    a("security_threats_1", paramString);
  }

  public String k()
  {
    return b(this.a.getString("device_control_last_params", ""));
  }

  public void k(String paramString)
  {
    a("security_threats_2", paramString);
  }

  public void l(String paramString)
  {
    a("secbd_firewall", paramString);
  }

  @Deprecated
  public boolean l()
  {
    try
    {
      boolean bool2 = this.a.getBoolean("gps_in_device_sp", false);
      bool1 = bool2;
      return bool1;
    }
    catch (Exception localException)
    {
      while (true)
        boolean bool1 = false;
    }
  }

  @Deprecated
  public String m()
  {
    return this.a.getString("sim_id", "");
  }

  public boolean n()
  {
    return this.a.getBoolean("auto_scan_sms", false);
  }

  public boolean o()
  {
    return this.a.getBoolean("enable_pup", true);
  }

  public String p()
  {
    return this.a.getString("security_threats_1", "");
  }

  public int q()
  {
    return this.a.getInt("security_threats_count_1", 0);
  }

  public String r()
  {
    return this.a.getString("security_threats_2", "");
  }

  public int s()
  {
    return this.a.getInt("security_threats_count_2", 0);
  }

  public int t()
  {
    return this.a.getInt("security_threats_current_log", 0);
  }

  public String u()
  {
    return this.a.getString("secbd_firewall", "0");
  }

  public boolean v()
  {
    return this.a.getBoolean("url_anti_phishing_key", false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.b
 * JD-Core Version:    0.6.2
 */