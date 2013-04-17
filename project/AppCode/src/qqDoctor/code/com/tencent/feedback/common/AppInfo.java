package com.tencent.feedback.common;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.io.UnsupportedEncodingException;
import java.util.List;

public class AppInfo
{
  private static final String UUID_META_NAME = "com.tencent.rdm.uuid";
  private static Boolean isReadLog = null;
  private static Boolean isWriteSdcard = null;
  private static String mAppVersion = null;

  public static String getApkFilePath(Context paramContext, String paramString)
  {
    String str = null;
    if (paramContext != null)
    {
      str = null;
      if (paramString != null)
        break label14;
    }
    while (true)
    {
      return str;
      try
      {
        label14: ApplicationInfo localApplicationInfo = paramContext.getPackageManager().getApplicationInfo(paramString, 0);
        str = null;
        if (localApplicationInfo != null)
          str = localApplicationInfo.sourceDir;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
      }
    }
  }

  public static ActivityManager.RunningTaskInfo getFrontRunningTaskInfo(Context paramContext)
  {
    ELog.debug("getFrontTaskId start");
    ActivityManager.RunningTaskInfo localRunningTaskInfo;
    if (paramContext == null)
    {
      ELog.error("isAppForntground ,context == null! return false");
      localRunningTaskInfo = null;
    }
    while (true)
    {
      return localRunningTaskInfo;
      try
      {
        List localList = ((ActivityManager)paramContext.getSystemService("activity")).getRunningTasks(1);
        if ((localList != null) && (!localList.isEmpty()))
          localRunningTaskInfo = (ActivityManager.RunningTaskInfo)localList.get(0);
      }
      catch (Throwable localThrowable)
      {
        ELog.error("isAppForntground error");
        localThrowable.printStackTrace();
        localRunningTaskInfo = null;
      }
    }
  }

  public static String getPackageName(Context paramContext)
  {
    if (paramContext == null);
    for (String str = null; ; str = paramContext.getPackageName())
      return str;
  }

  // ERROR //
  public static String getUUID(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: ldc 96
    //   5: invokestatic 57	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   8: aload_0
    //   9: ifnonnull +13 -> 22
    //   12: ldc 98
    //   14: astore 4
    //   16: ldc 2
    //   18: monitorexit
    //   19: aload 4
    //   21: areturn
    //   22: aload_0
    //   23: invokevirtual 33	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   26: aload_0
    //   27: invokevirtual 93	android/content/Context:getPackageName	()Ljava/lang/String;
    //   30: sipush 128
    //   33: invokevirtual 39	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   36: getfield 102	android/content/pm/ApplicationInfo:metaData	Landroid/os/Bundle;
    //   39: ldc 8
    //   41: invokevirtual 106	android/os/Bundle:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   44: astore 5
    //   46: aload 5
    //   48: ifnull +28 -> 76
    //   51: aload 5
    //   53: invokevirtual 109	java/lang/Object:toString	()Ljava/lang/String;
    //   56: astore 6
    //   58: aload 6
    //   60: astore 4
    //   62: ldc 111
    //   64: invokestatic 57	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   67: goto -51 -> 16
    //   70: astore_1
    //   71: ldc 2
    //   73: monitorexit
    //   74: aload_1
    //   75: athrow
    //   76: ldc 111
    //   78: invokestatic 57	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   81: ldc 98
    //   83: astore 4
    //   85: goto -69 -> 16
    //   88: astore_3
    //   89: aload_3
    //   90: invokevirtual 47	java/lang/Throwable:printStackTrace	()V
    //   93: ldc 111
    //   95: invokestatic 57	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   98: goto -17 -> 81
    //   101: astore_2
    //   102: ldc 111
    //   104: invokestatic 57	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   107: aload_2
    //   108: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   3	16	70	finally
    //   62	67	70	finally
    //   76	85	70	finally
    //   93	109	70	finally
    //   22	58	88	java/lang/Throwable
    //   22	58	101	finally
    //   89	93	101	finally
  }

  public static String getUidFromAPKFile(Context paramContext)
  {
    Object localObject = null;
    if (paramContext == null);
    while (true)
    {
      return localObject;
      String str1 = getApkFilePath(paramContext, paramContext.getPackageName());
      if (str1 == null)
      {
        ELog.error("no apk file in device ? pls check!");
        localObject = null;
      }
      else
      {
        byte[] arrayOfByte = g.a(str1, 10000, "sha-1");
        localObject = null;
        if (arrayOfByte != null)
          try
          {
            String str2 = new String(arrayOfByte, "utf8");
            localObject = str2;
          }
          catch (UnsupportedEncodingException localUnsupportedEncodingException)
          {
            localUnsupportedEncodingException.printStackTrace();
            localObject = null;
          }
      }
    }
  }

  public static String getVersionName(Context paramContext)
  {
    int i = 0;
    while (true)
    {
      String str2;
      int k;
      try
      {
        if (mAppVersion != null)
        {
          localObject2 = mAppVersion;
          return localObject2;
        }
        String str1 = getPackageName(paramContext);
        try
        {
          PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(str1, 0);
          str2 = localPackageInfo.versionName;
          int j = localPackageInfo.versionCode;
          if ((str2 == null) || (str2.length() <= 0))
            break label217;
          char[] arrayOfChar = str2.toCharArray();
          k = 0;
          if (k < arrayOfChar.length)
          {
            if (arrayOfChar[k] != '.')
              break label224;
            i++;
            break label224;
          }
          if (i >= 3)
            break label210;
          ELog.info("add versionCode " + j);
          localObject2 = str2 + "." + j;
          ELog.info("version:" + (String)localObject2);
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          ELog.error(localException.toString());
          localObject2 = null;
        }
        continue;
      }
      finally
      {
      }
      label210: Object localObject2 = str2;
      continue;
      label217: localObject2 = "";
      continue;
      label224: k++;
    }
  }

  public static boolean isAppForntground(Context paramContext)
  {
    ELog.debug("isAppForntground start");
    boolean bool1;
    if (paramContext == null)
    {
      ELog.error("isAppForntground ,context == null! return false");
      bool1 = false;
    }
    while (true)
    {
      return bool1;
      try
      {
        List localList = ((ActivityManager)paramContext.getSystemService("activity")).getRunningTasks(1);
        if ((localList != null) && (!localList.isEmpty()))
        {
          boolean bool2 = paramContext.getPackageName().equals(((ActivityManager.RunningTaskInfo)localList.get(0)).topActivity.getPackageName());
          if (bool2)
            bool1 = true;
        }
      }
      catch (Throwable localThrowable)
      {
        ELog.error("isAppForntground error");
        localThrowable.printStackTrace();
        bool1 = false;
      }
    }
  }

  public static boolean isContainPermission(Context paramContext, String paramString)
  {
    ELog.debug("AppInfo.isContainReadLogPermission() start");
    boolean bool1 = false;
    if (paramContext != null)
    {
      bool1 = false;
      if (paramString != null)
      {
        int i = paramString.trim().length();
        bool1 = false;
        if (i > 0)
          break label33;
      }
    }
    while (true)
    {
      return bool1;
      try
      {
        label33: String[] arrayOfString = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 4096).requestedPermissions;
        if (arrayOfString != null)
        {
          int j = arrayOfString.length;
          for (int k = 0; ; k++)
          {
            if (k >= j)
              break label104;
            boolean bool2 = paramString.equals(arrayOfString[k]);
            if (bool2)
            {
              ELog.debug("AppInfo.isContainReadLogPermission() end");
              bool1 = true;
              break;
            }
          }
        }
        label104: ELog.debug("AppInfo.isContainReadLogPermission() end");
        bool1 = false;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        ELog.debug("AppInfo.isContainReadLogPermission() end");
        bool1 = false;
      }
      finally
      {
        ELog.debug("AppInfo.isContainReadLogPermission() end");
      }
    }
  }

  public static boolean isContainReadLogPermission(Context paramContext)
  {
    try
    {
      ELog.debug("Read Log Permittion! start");
      if (paramContext == null);
      boolean bool1;
      for (boolean bool2 = false; ; bool2 = bool1)
      {
        return bool2;
        if (isReadLog == null)
          isReadLog = Boolean.valueOf(isContainPermission(paramContext, "android.permission.READ_LOGS"));
        bool1 = isReadLog.booleanValue();
      }
    }
    finally
    {
    }
  }

  public static boolean isContainWriteSdcardPermission(Context paramContext)
  {
    try
    {
      ELog.debug("Read write Permittion! start");
      if (paramContext == null);
      boolean bool1;
      for (boolean bool2 = false; ; bool2 = bool1)
      {
        return bool2;
        if (isWriteSdcard == null)
          isWriteSdcard = Boolean.valueOf(isContainPermission(paramContext, "android.permission.WRITE_EXTERNAL_STORAGE"));
        bool1 = isWriteSdcard.booleanValue();
      }
    }
    finally
    {
    }
  }

  public static void setAPPVersion(String paramString)
  {
    try
    {
      mAppVersion = paramString;
      CommonInfo localCommonInfo = CommonInfo.getCommonInfo();
      if (localCommonInfo != null);
      try
      {
        localCommonInfo.setProductVersion(mAppVersion);
        return;
      }
      finally
      {
        localObject2 = finally;
        throw localObject2;
      }
    }
    finally
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.common.AppInfo
 * JD-Core Version:    0.6.2
 */