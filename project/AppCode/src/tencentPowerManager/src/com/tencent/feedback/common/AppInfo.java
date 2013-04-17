package com.tencent.feedback.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

public class AppInfo
{
  private static String a = null;
  private static Boolean b = null;

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
    //   3: ldc 29
    //   5: invokestatic 35	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   8: aload_0
    //   9: ifnonnull +13 -> 22
    //   12: ldc 37
    //   14: astore 4
    //   16: ldc 2
    //   18: monitorexit
    //   19: aload 4
    //   21: areturn
    //   22: aload_0
    //   23: invokevirtual 41	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   26: aload_0
    //   27: invokevirtual 24	android/content/Context:getPackageName	()Ljava/lang/String;
    //   30: sipush 128
    //   33: invokevirtual 47	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   36: getfield 53	android/content/pm/ApplicationInfo:metaData	Landroid/os/Bundle;
    //   39: ldc 55
    //   41: invokevirtual 61	android/os/Bundle:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   44: astore 5
    //   46: aload 5
    //   48: ifnull +28 -> 76
    //   51: aload 5
    //   53: invokevirtual 64	java/lang/Object:toString	()Ljava/lang/String;
    //   56: astore 6
    //   58: aload 6
    //   60: astore 4
    //   62: ldc 66
    //   64: invokestatic 35	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   67: goto -51 -> 16
    //   70: astore_1
    //   71: ldc 2
    //   73: monitorexit
    //   74: aload_1
    //   75: athrow
    //   76: ldc 66
    //   78: invokestatic 35	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   81: ldc 37
    //   83: astore 4
    //   85: goto -69 -> 16
    //   88: astore_3
    //   89: aload_3
    //   90: invokevirtual 69	java/lang/Throwable:printStackTrace	()V
    //   93: ldc 66
    //   95: invokestatic 35	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   98: goto -17 -> 81
    //   101: astore_2
    //   102: ldc 66
    //   104: invokestatic 35	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
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

  public static String getVersionName(Context paramContext)
  {
    int i = 0;
    while (true)
    {
      String str2;
      int k;
      try
      {
        if (a != null)
        {
          localObject2 = a;
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
          c.a("add versionCode " + j);
          localObject2 = str2 + "." + j;
          c.a("version:" + (String)localObject2);
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          c.b(localException.toString());
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

  // ERROR //
  public static boolean isContainReadLogPermission(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: ldc 124
    //   5: invokestatic 35	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   8: iconst_0
    //   9: istore_2
    //   10: aload_0
    //   11: ifnonnull +8 -> 19
    //   14: ldc 2
    //   16: monitorexit
    //   17: iload_2
    //   18: ireturn
    //   19: getstatic 14	com/tencent/feedback/common/AppInfo:b	Ljava/lang/Boolean;
    //   22: ifnull +17 -> 39
    //   25: getstatic 14	com/tencent/feedback/common/AppInfo:b	Ljava/lang/Boolean;
    //   28: invokevirtual 130	java/lang/Boolean:booleanValue	()Z
    //   31: istore 8
    //   33: iload 8
    //   35: istore_2
    //   36: goto -22 -> 14
    //   39: aload_0
    //   40: invokevirtual 41	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   43: aload_0
    //   44: invokevirtual 24	android/content/Context:getPackageName	()Ljava/lang/String;
    //   47: sipush 4096
    //   50: invokevirtual 78	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   53: getfield 134	android/content/pm/PackageInfo:requestedPermissions	[Ljava/lang/String;
    //   56: astore 5
    //   58: aload 5
    //   60: ifnull +48 -> 108
    //   63: aload 5
    //   65: arraylength
    //   66: istore 6
    //   68: iconst_0
    //   69: istore 7
    //   71: iload 7
    //   73: iload 6
    //   75: if_icmpge +33 -> 108
    //   78: ldc 136
    //   80: aload 5
    //   82: iload 7
    //   84: aaload
    //   85: invokevirtual 140	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   88: ifeq +66 -> 154
    //   91: iconst_1
    //   92: invokestatic 144	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   95: putstatic 14	com/tencent/feedback/common/AppInfo:b	Ljava/lang/Boolean;
    //   98: ldc 146
    //   100: invokestatic 35	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   103: iconst_1
    //   104: istore_2
    //   105: goto -91 -> 14
    //   108: ldc 146
    //   110: invokestatic 35	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   113: iconst_0
    //   114: invokestatic 144	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   117: putstatic 14	com/tencent/feedback/common/AppInfo:b	Ljava/lang/Boolean;
    //   120: iconst_0
    //   121: istore_2
    //   122: goto -108 -> 14
    //   125: astore_1
    //   126: ldc 2
    //   128: monitorexit
    //   129: aload_1
    //   130: athrow
    //   131: astore 4
    //   133: aload 4
    //   135: invokevirtual 69	java/lang/Throwable:printStackTrace	()V
    //   138: ldc 146
    //   140: invokestatic 35	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   143: goto -30 -> 113
    //   146: astore_3
    //   147: ldc 146
    //   149: invokestatic 35	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   152: aload_3
    //   153: athrow
    //   154: iinc 7 1
    //   157: goto -86 -> 71
    //
    // Exception table:
    //   from	to	target	type
    //   3	8	125	finally
    //   19	33	125	finally
    //   98	120	125	finally
    //   138	154	125	finally
    //   39	98	131	java/lang/Throwable
    //   39	98	146	finally
    //   133	138	146	finally
  }

  public static void setAPPVersion(String paramString)
  {
    try
    {
      a = paramString;
      CommonInfo localCommonInfo = CommonInfo.getCommonInfo();
      if (localCommonInfo != null);
      try
      {
        localCommonInfo.setProductVersion(a);
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

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.common.AppInfo
 * JD-Core Version:    0.6.2
 */