package com.tencent.tmsecure.common;

import QQPIM.EProduct;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import e.b;
import ek;
import em;
import ex;
import gl;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public final class TMSApplication
{
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
    return ek.a().e();
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

  // ERROR //
  public static String getStrFromEnvMap(String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 21	com/tencent/tmsecure/common/TMSApplication:a	Ljava/util/Map;
    //   6: aload_0
    //   7: invokeinterface 141 2 0
    //   12: checkcast 143	java/lang/String
    //   15: astore_2
    //   16: aload_0
    //   17: ldc 71
    //   19: invokevirtual 169	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   22: ifeq +40 -> 62
    //   25: aload_2
    //   26: ifnull +12 -> 38
    //   29: aload_2
    //   30: ldc 171
    //   32: invokevirtual 174	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   35: ifeq +27 -> 62
    //   38: invokestatic 176	com/tencent/tmsecure/common/TMSApplication:getApplicaionContext	()Landroid/content/Context;
    //   41: astore_3
    //   42: aload_3
    //   43: invokevirtual 180	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   46: astore 4
    //   48: aload 4
    //   50: aload_3
    //   51: invokevirtual 184	android/content/Context:getPackageName	()Ljava/lang/String;
    //   54: iconst_0
    //   55: invokevirtual 190	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   58: getfield 196	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   61: astore_2
    //   62: ldc 2
    //   64: monitorexit
    //   65: aload_2
    //   66: areturn
    //   67: astore 6
    //   69: aload 6
    //   71: invokevirtual 199	android/content/pm/PackageManager$NameNotFoundException:printStackTrace	()V
    //   74: goto -12 -> 62
    //   77: astore_1
    //   78: ldc 2
    //   80: monitorexit
    //   81: aload_1
    //   82: athrow
    //   83: astore 5
    //   85: aload 5
    //   87: invokevirtual 200	java/lang/Exception:printStackTrace	()V
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

  public static <T extends TMSService> void init(Context paramContext, Class<T> paramClass, ITMSApplicaionConfig paramITMSApplicaionConfig)
  {
    init$4ae1371d(paramContext, paramClass, paramITMSApplicaionConfig, null, null);
  }

  public static <T extends TMSService> void init$4ae1371d(Context paramContext, Class<T> paramClass, ITMSApplicaionConfig paramITMSApplicaionConfig, e.b paramb, Runnable paramRunnable)
  {
    b = paramContext.getApplicationContext();
    if (paramRunnable != null)
      paramRunnable.run();
    try
    {
      String str = ek.a().b();
      Map localMap = a;
      if (str == null)
        str = "null";
      localMap.put("channel", str);
      int i = EProduct.convert(ek.a().c()).value();
      a.put("product", String.valueOf(i));
      if (paramITMSApplicaionConfig != null)
        a = paramITMSApplicaionConfig.config(new HashMap(a));
      if (paramClass != null)
      {
        c = paramClass;
        Intent localIntent = new Intent(b, c);
        b.startService(localIntent);
      }
      if (paramb != null)
        gl.c();
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
    em.a();
  }

  private static void saveFirstStartupTime()
  {
    ex localex = new ex("tms");
    PackageManager localPackageManager;
    if (localex.c.getLong(localex.a + "." + "first_startup_time", -1L) == -1L)
      localPackageManager = getApplicaionContext().getPackageManager();
    try
    {
      long l = new File(localPackageManager.getApplicationInfo(getApplicaionContext().getPackageName(), 0).sourceDir).lastModified();
      localex.c.getLong(localex.a + "." + "first_startup_time", l);
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        localNameNotFoundException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.tmsecure.common.TMSApplication
 * JD-Core Version:    0.6.2
 */