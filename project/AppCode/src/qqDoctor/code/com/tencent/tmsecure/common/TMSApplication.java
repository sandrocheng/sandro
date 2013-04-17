package com.tencent.tmsecure.common;

import QQPIM.EProduct;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import ay;
import bsv;
import bsx;
import btl;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public final class TMSApplication
{
  public static final String CON_ACCOUNT_LOGIN_LIBNAME = "account_login_libname";
  public static final String CON_APOLLO_LIBNAME = "apollo_libname";
  public static final String CON_ARESENGINE_LIBNAME = "aresengine_libname";
  public static final String CON_AUTO_REPORT = "auto_report";
  public static final String CON_BUILD = "build";
  public static final String CON_CHANNEL = "channel";
  public static final String CON_CRYPTOR_LIBNAME = "cryptor_libname";
  public static final String CON_CVERSION = "cversion";
  public static final String CON_HOST_URL = "host_url";
  public static final String CON_HOTFIX = "hotfix";
  public static final String CON_LC = "lc";
  public static final String CON_LOCATION_LIBNAME = "location_libname";
  public static final String CON_LOGIN_HOST_URL = "login_host_url";
  public static final String CON_PLATFORM = "platform";
  public static final String CON_PLUGIN_DIR = "plugin_dir";
  public static final String CON_PRE_LIB_PATH = "pre_lib_path";
  public static final String CON_PRODUCT = "product";
  public static final String CON_PVERSION = "pversion";
  public static final String CON_SMS_PARSER_LIBNAME = "sms_parser_libname";
  public static final String CON_SOFTVERSION = "softversion";
  public static final String CON_SUB_PLATFORM = "sub_platform";
  public static final String CON_SU_CMD = "su_cmd";
  public static final String CON_VIRUS_SCAN_LIBNAME = "virus_scan_libname";
  public static final String SDK_VERSION = "1.1.3";
  private static Map<String, String> a;
  private static Context b;
  private static Class<? extends TMSService> c;

  static
  {
    HashMap localHashMap = new HashMap();
    a = localHashMap;
    localHashMap.put("virus_scan_libname", "ams-1.1.0");
    a.put("cryptor_libname", "cryptor-1.0.0");
    a.put("aresengine_libname", "smschecker-1.0.2");
    a.put("location_libname", "location-1.0.0");
    a.put("apollo_libname", "apollo-1.1.6");
    a.put("sms_parser_libname", "smsparser-1.0.0");
    a.put("account_login_libname", "liblogin-1.0.0");
    a.put("host_url", "http://pmir.3g.qq.com");
    a.put("pre_lib_path", null);
    a.put("login_host_url", "sync.3g.qq.com");
    a.put("su_cmd", "su");
    a.put("softversion", "1.1.3");
    a.put("build", "100");
    a.put("lc", "CBF59E5CC1B83B40");
    a.put("channel", "null");
    a.put("platform", "default");
    a.put("pversion", "1");
    a.put("cversion", "0");
    a.put("hotfix", "0");
    a.put("auto_report", "true");
    a.put("plugin_dir", "/sdcard/qqpimsecure_plugins");
    a.put("sub_platform", "201");
    a.put("product", "13");
  }

  private static boolean checkLisence()
  {
    return bsv.a().f();
  }

  public static Context getApplicaionContext()
  {
    return b.getApplicationContext();
  }

  public static int getIntFromEnvMap(String paramString)
  {
    try
    {
      String str = (String)a.get(paramString);
      if (!TextUtils.isEmpty(str))
      {
        i = Integer.valueOf(str).intValue();
        return i;
      }
      int i = 0;
    }
    finally
    {
    }
  }

  public static Class<? extends Service> getSecureServiceClass()
  {
    return c;
  }

  // ERROR //
  public static String getStrFromEnvMap(String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 94	com/tencent/tmsecure/common/TMSApplication:a	Ljava/util/Map;
    //   6: aload_0
    //   7: invokeinterface 166 2 0
    //   12: checkcast 168	java/lang/String
    //   15: astore_2
    //   16: aload_0
    //   17: ldc 65
    //   19: invokevirtual 198	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   22: ifeq +40 -> 62
    //   25: aload_2
    //   26: ifnull +12 -> 38
    //   29: aload_2
    //   30: ldc 200
    //   32: invokevirtual 203	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   35: ifeq +27 -> 62
    //   38: invokestatic 205	com/tencent/tmsecure/common/TMSApplication:getApplicaionContext	()Landroid/content/Context;
    //   41: astore_3
    //   42: aload_3
    //   43: invokevirtual 209	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   46: astore 4
    //   48: aload 4
    //   50: aload_3
    //   51: invokevirtual 213	android/content/Context:getPackageName	()Ljava/lang/String;
    //   54: iconst_0
    //   55: invokevirtual 219	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   58: getfield 224	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   61: astore_2
    //   62: ldc 2
    //   64: monitorexit
    //   65: aload_2
    //   66: areturn
    //   67: astore 6
    //   69: aload 6
    //   71: invokevirtual 227	android/content/pm/PackageManager$NameNotFoundException:printStackTrace	()V
    //   74: goto -12 -> 62
    //   77: astore_1
    //   78: ldc 2
    //   80: monitorexit
    //   81: aload_1
    //   82: athrow
    //   83: astore 5
    //   85: aload 5
    //   87: invokevirtual 228	java/lang/Exception:printStackTrace	()V
    //   90: goto -28 -> 62
    //
    // Exception table:
    //   from	to	target	type
    //   48	62	67	android/content/pm/PackageManager$NameNotFoundException
    //   3	48	77	finally
    //   48	62	77	finally
    //   62	74	77	finally
    //   85	90	77	finally
    //   48	62	83	java/lang/Exception
  }

  public static <T extends TMSService> void init(Context paramContext, Class<T> paramClass)
  {
    init$4ae1371d(paramContext, paramClass, null, null, null);
  }

  public static <T extends TMSService> void init(Context paramContext, Class<T> paramClass, ITMSApplicaionConfig paramITMSApplicaionConfig)
  {
    init$4ae1371d(paramContext, paramClass, paramITMSApplicaionConfig, null, null);
  }

  public static <T extends TMSService> void init(Context paramContext, Class<T> paramClass, ITMSApplicaionConfig paramITMSApplicaionConfig, Runnable paramRunnable)
  {
    init$4ae1371d(paramContext, paramClass, paramITMSApplicaionConfig, null, paramRunnable);
  }

  public static <T extends TMSService> void init$3f6e5d94(Context paramContext, Class<T> paramClass, ay paramay)
  {
    init$4ae1371d(paramContext, paramClass, null, paramay, null);
  }

  public static <T extends TMSService> void init$4ae1371d(Context paramContext, Class<T> paramClass, ITMSApplicaionConfig paramITMSApplicaionConfig, ay paramay, Runnable paramRunnable)
  {
    b = paramContext.getApplicationContext();
    if (paramRunnable != null)
      paramRunnable.run();
    try
    {
      String str = bsv.a().c();
      Map localMap = a;
      if (str == null)
        str = "null";
      localMap.put("channel", str);
      int i = EProduct.convert(bsv.a().d()).value();
      a.put("product", String.valueOf(i));
      if (paramITMSApplicaionConfig != null)
        a = paramITMSApplicaionConfig.config(new HashMap(a));
      if (paramClass != null)
      {
        c = paramClass;
        Intent localIntent = new Intent(b, c);
        b.startService(localIntent);
      }
      if (paramay != null)
        ScriptHelper.setProvider$42efb889(paramay);
      if (getStrFromEnvMap("auto_report").equals("true"))
        reportChannelInfo();
      saveFirstStartupTime();
      return;
    }
    finally
    {
    }
  }

  public static void reportChannelInfo()
  {
    bsx.a();
  }

  private static void saveFirstStartupTime()
  {
    btl localbtl = new btl("tms");
    PackageManager localPackageManager;
    if (localbtl.c.getLong(localbtl.a + "." + "first_startup_time", -1L) == -1L)
      localPackageManager = getApplicaionContext().getPackageManager();
    try
    {
      long l = new File(localPackageManager.getApplicationInfo(getApplicaionContext().getPackageName(), 0).sourceDir).lastModified();
      localbtl.c.getLong(localbtl.a + "." + "first_startup_time", l);
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        localNameNotFoundException.printStackTrace();
    }
  }

  public static void setIntToEnvMap(String paramString, int paramInt)
  {
    try
    {
      a.put(paramString, String.valueOf(paramInt));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void setStrToEnvMap(String paramString1, String paramString2)
  {
    try
    {
      a.put(paramString1, paramString2);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.common.TMSApplication
 * JD-Core Version:    0.6.2
 */