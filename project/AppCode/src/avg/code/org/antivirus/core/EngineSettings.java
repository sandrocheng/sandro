package org.antivirus.core;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.provider.Settings.System;
import android.text.TextUtils;
import org.a.a.a.a.a;

public class EngineSettings
{
  public static final String APP_NAME = "Antivirus Pro";
  public static final String APP_VERSION = "3.0.3";
  public static final String APP_VERSION_REVISION = "174757";
  public static final String AWS_DOMAIN = "aws.droidsecurity.com";
  public static final String AWS_URI = "https://aws.droidsecurity.com";
  public static final String AWS_XMLRPC_URI = "https://aws.droidsecurity.com/xmlrpc";
  public static final String HOTFIX_URI = "https://droidsecurity.appspot.com/openrest/dsfs/antivirus/jars/hotfixes28.apk";
  public static final boolean IS_IGNORE_NON_MARKET_CHECK = false;
  public static final boolean IS_SECURE_COMMS = true;
  public static final String KEY_UNIQUE_IDENTIFIER = "droidsecurity.uniqueid";
  public static final String WEBSERVICE_SERVER_URI = "https://droidsecurity.appspot.com";
  public static final String WWW_SERVER_DOMAIN_NAME = "www.avgmobilation.com";
  public static final String XMLRPC_SERVER_URI = "https://droidsecurity.appspot.com/secure/xmlrpc";
  public SharedPreferences mPref;

  public EngineSettings(Context paramContext)
  {
    this.mPref = paramContext.getApplicationContext().getSharedPreferences("av", 0);
  }

  public String decryptit(String paramString)
  {
    if (paramString == null)
    {
      Logger.error("got null");
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
          byte[] arrayOfByte = a.a(paramString.substring(5));
          for (int k = 0; k < arrayOfByte.length; k++)
            arrayOfByte[k] = ((byte)(0xB ^ arrayOfByte[k]));
          paramString = new String(arrayOfByte);
        }
      }
    }
  }

  public String encryptit(String paramString)
  {
    if (paramString == null)
    {
      Logger.error("got null");
      paramString = "";
    }
    byte[] arrayOfByte = paramString.getBytes();
    for (int i = 0; i < arrayOfByte.length; i++)
      arrayOfByte[i] = ((byte)(0xB ^ arrayOfByte[i]));
    String str = "";
    for (int j = 0; j < 5; j++)
      str = str + '_';
    return str + new String(a.a(arrayOfByte, false));
  }

  public boolean getAWSserver()
  {
    return this.mPref.getBoolean("use_aws_server", false);
  }

  public String getAppUpdateAggregate(boolean paramBoolean)
  {
    String str = this.mPref.getString("app_update_agregate", "");
    if ("".equals(str))
      str = "";
    while (true)
    {
      return str;
      if (paramBoolean)
        str = str + "|";
    }
  }

  public long getAutoScanInterval()
  {
    return this.mPref.getLong("auto_scan_interval", -1L);
  }

  public long getAutoScanLastTime()
  {
    return this.mPref.getLong("auto_scan_last_time", 0L);
  }

  public long getCloudServicesNextUpdate()
  {
    return this.mPref.getLong("cloud_services_next_update", 0L);
  }

  public long getCloudServicesUpdateTime()
  {
    return this.mPref.getLong("cloud_services_update_time", 0L);
  }

  public String getDeviceRegisterLastParams()
  {
    return decryptit(this.mPref.getString("device_control_last_params", ""));
  }

  public boolean getGpsInDevice()
  {
    try
    {
      boolean bool2 = this.mPref.getBoolean("gps_in_device_sp", false);
      bool1 = bool2;
      return bool1;
    }
    catch (Exception localException)
    {
      while (true)
        boolean bool1 = false;
    }
  }

  public String getHiddenUniqueId(Context paramContext)
  {
    return Settings.System.getString(paramContext.getContentResolver(), "droidsecurity.uniqueid");
  }

  public String getIgnoreFiles()
  {
    return this.mPref.getString("ignore_files", "");
  }

  public String getIgnorePackages()
  {
    return this.mPref.getString("ignore_packages", "");
  }

  public int getIgnoreSettings()
  {
    try
    {
      int j = this.mPref.getInt("ignore_settings", 0);
      i = j;
      return i;
    }
    catch (Exception localException)
    {
      while (true)
        int i = 0;
    }
  }

  public long getLastSecurityUpdate()
  {
    return this.mPref.getLong("last_update_long", 0L);
  }

  public String getLine1Number()
  {
    return this.mPref.getString("line1number", "");
  }

  public long getNextSecurityUpdate()
  {
    return this.mPref.getLong("next_update_long", 0L);
  }

  public boolean getReferrerReceived()
  {
    return this.mPref.getBoolean("referrer_received", false);
  }

  public String getSecDbVersion()
  {
    return this.mPref.getString("secbd_firewall", "55050121");
  }

  public String getSecurityThreats1()
  {
    return this.mPref.getString("security_threats_1", "");
  }

  public String getSecurityThreats2()
  {
    return this.mPref.getString("security_threats_2", "");
  }

  public int getSecurityThreatsCount1()
  {
    return this.mPref.getInt("security_threats_count_1", 0);
  }

  public int getSecurityThreatsCount2()
  {
    return this.mPref.getInt("security_threats_count_2", 0);
  }

  public int getSecurityThreatsCurrentLog()
  {
    return this.mPref.getInt("security_threats_current_log", 0);
  }

  public String getSimID()
  {
    return this.mPref.getString("sim_id", "");
  }

  public String getUniqueId()
  {
    return this.mPref.getString("droidsecurity.uniqueid", "");
  }

  public long getUpdateInterval()
  {
    return this.mPref.getLong("update_interval", 86400000L);
  }

  public boolean isAutoScanSMS()
  {
    return this.mPref.getBoolean("auto_scan_sms", false);
  }

  public boolean isPUPEnabled()
  {
    return this.mPref.getBoolean("enable_pup", true);
  }

  public boolean isSDScanEnabled()
  {
    SharedPreferences localSharedPreferences = this.mPref;
    boolean bool = false;
    if (localSharedPreferences == null);
    while (true)
    {
      return bool;
      bool = this.mPref.getBoolean("do_sd_Scan", false);
    }
  }

  public void removeIgnoreFile(String paramString)
  {
    String str = this.mPref.getString("ignore_files", "").replaceAll("," + paramString, "");
    this.mPref.edit().putString("ignore_files", str).commit();
  }

  public void removeIgnorePackages(String paramString)
  {
    String str = this.mPref.getString("ignore_packages", "").replaceAll(paramString + ",", "").replaceAll(paramString, "");
    this.mPref.edit().putString("ignore_packages", str).commit();
  }

  public void setAWSserver()
  {
    setAndCommit("use_aws_server", true);
  }

  public void setAndCommit(String paramString, int paramInt)
  {
    SharedPreferences.Editor localEditor = this.mPref.edit();
    localEditor.putInt(paramString, paramInt);
    localEditor.commit();
  }

  public void setAndCommit(String paramString, long paramLong)
  {
    SharedPreferences.Editor localEditor = this.mPref.edit();
    localEditor.putLong(paramString, paramLong);
    localEditor.commit();
  }

  public void setAndCommit(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = this.mPref.edit();
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
  }

  public void setAndCommit(String paramString, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.mPref.edit();
    localEditor.putBoolean(paramString, paramBoolean);
    localEditor.commit();
  }

  public void setAppUpdateAggregate(String paramString)
  {
    setAndCommit("app_update_agregate", paramString);
  }

  public void setAutoScanInterval(long paramLong)
  {
    setAndCommit("auto_scan_interval", paramLong);
  }

  public void setAutoScanLastTime(long paramLong)
  {
    setAndCommit("auto_scan_last_time", paramLong);
  }

  public void setAutoScanSMS(boolean paramBoolean)
  {
    setAndCommit("auto_scan_sms", paramBoolean);
  }

  public void setCloudServicesNextUpdate(long paramLong)
  {
    setAndCommit("cloud_services_next_update", paramLong);
  }

  public void setCloudServicesUpdateTime(long paramLong)
  {
    setAndCommit("cloud_services_update_time", paramLong);
  }

  public void setDefaultValuesIfNeeded(Context paramContext)
  {
    if (!this.mPref.getBoolean("first_use_sdk", true));
    while (true)
    {
      return;
      SharedPreferences.Editor localEditor = this.mPref.edit();
      localEditor.putInt("ignore_settings", 0);
      localEditor.putString("sim_id", "");
      localEditor.putString("line1number", "");
      localEditor.putLong("last_update_long", 1255919352L);
      localEditor.putBoolean("auto_scan_sms", false);
      localEditor.putBoolean("first_use_sdk", false);
      localEditor.commit();
    }
  }

  public void setDeviceRegisterLastParams(String paramString, SharedPreferences.Editor paramEditor, Boolean paramBoolean)
  {
    if (!paramBoolean.booleanValue())
      paramString = encryptit(paramString);
    paramEditor.putString("device_control_last_params", paramString);
  }

  public void setGpsInDevice(boolean paramBoolean)
  {
    setAndCommit("gps_in_device_sp", paramBoolean);
  }

  public void setHiddenUniqueId(String paramString, Context paramContext)
  {
    try
    {
      Settings.System.putString(paramContext.getContentResolver(), "droidsecurity.uniqueid", paramString);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public void setIgnoreFile(String paramString)
  {
    String str = this.mPref.getString("ignore_files", "");
    this.mPref.edit().putString("ignore_files", str + "," + paramString).commit();
  }

  public void setIgnorePackages(String paramString)
  {
    String str = this.mPref.getString("ignore_packages", "");
    if (!TextUtils.isEmpty(str))
      paramString = str + "," + paramString;
    this.mPref.edit().putString("ignore_packages", paramString).commit();
  }

  public void setIgnoreSettings(int paramInt)
  {
    setAndCommit("ignore_settings", paramInt);
  }

  public void setLastSecurityUpdate(long paramLong)
  {
    setAndCommit("last_update_long", paramLong);
  }

  public void setLine1Number(String paramString)
  {
    setAndCommit("line1number", paramString);
  }

  public void setNextSecurityUpdate(long paramLong)
  {
    setAndCommit("next_update_long", paramLong);
  }

  public void setPUPEnabled(boolean paramBoolean)
  {
    setAndCommit("enable_pup", paramBoolean);
  }

  public void setReferrerReceived(boolean paramBoolean)
  {
    setAndCommit("referrer_received", paramBoolean);
  }

  public void setSDScanEnabled(boolean paramBoolean)
  {
    setAndCommit("do_sd_Scan", paramBoolean);
  }

  public void setSecDbVersion(String paramString)
  {
    setAndCommit("secbd_firewall", paramString);
  }

  public void setSecurityThreats1(String paramString)
  {
    setAndCommit("security_threats_1", paramString);
  }

  public void setSecurityThreats2(String paramString)
  {
    setAndCommit("security_threats_2", paramString);
  }

  public void setSecurityThreatsCount1(int paramInt)
  {
    setAndCommit("security_threats_count_1", paramInt);
  }

  public void setSecurityThreatsCount2(int paramInt)
  {
    setAndCommit("security_threats_count_2", paramInt);
  }

  public void setSecurityThreatsCurrentLog(int paramInt)
  {
    setAndCommit("security_threats_current_log", paramInt);
  }

  public void setSimID(String paramString)
  {
    setAndCommit("sim_id", paramString);
  }

  public void setUniqueId(String paramString, Context paramContext)
  {
    setAndCommit("droidsecurity.uniqueid", paramString);
    setHiddenUniqueId(paramString, paramContext);
  }

  public void setUpdateInterval(long paramLong)
  {
    setAndCommit("update_interval", paramLong);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.EngineSettings
 * JD-Core Version:    0.6.2
 */