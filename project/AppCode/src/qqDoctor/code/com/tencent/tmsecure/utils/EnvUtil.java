package com.tencent.tmsecure.utils;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.StatFs;
import btl;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.optimize.IMemoryHelper;
import com.tencent.tmsecure.module.optimize.OptimizeManager;
import java.io.File;

public class EnvUtil
{
  private static String[] a(Context paramContext)
  {
    String[] arrayOfString = new String[4];
    arrayOfString[0] = Build.MODEL;
    arrayOfString[1] = Build.VERSION.RELEASE;
    String str = "";
    try
    {
      str = btd.d("/proc/cpuinfo").split("\\n")[0];
      arrayOfString[2] = str;
      arrayOfString[3] = (Integer.toString(PhoneInfoUtil.getScreenWidth(paramContext)) + "*" + Integer.toString(PhoneInfoUtil.getScreenHeight(paramContext)));
      return arrayOfString;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public static String getDeviceInfoStr(Context paramContext)
  {
    String str1 = new String();
    String[] arrayOfString = a(paramContext);
    String str2 = new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(str1)).append("MODEL ").append(arrayOfString[0]).append(";").toString())).append("ANDROID ").append(arrayOfString[1]).append(";").toString())).append("CPU ").append(arrayOfString[2]).append(";").toString() + "resolution " + arrayOfString[3] + ";";
    IMemoryHelper localIMemoryHelper = ((OptimizeManager)ManagerCreator.getManager(OptimizeManager.class)).getMemoryHelper();
    if (localIMemoryHelper != null);
    for (String str3 = str2 + "ram " + localIMemoryHelper.getTotalMemery() + ";"; ; str3 = str2)
    {
      StringBuilder localStringBuilder = new StringBuilder(String.valueOf(str3)).append("rom ");
      StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
      String str4 = localStatFs.getBlockSize() * localStatFs.getBlockCount() + ";";
      String str5 = new btl("NetInterfaceManager").a("upload_config_des", null);
      if ((str5 != null) && (str5.length() != 0))
        str4 = str4 + str5;
      return str4;
    }
  }

  public static int getRootStatus()
  {
    int i;
    if (ScriptHelper.isSuExist)
      if (ScriptHelper.isRootGot())
        i = 1;
    while (true)
    {
      return i;
      i = 2;
      continue;
      i = 0;
    }
  }

  public static boolean isBuildIn(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(paramContext.getPackageName(), 8192);
      bool = false;
      if (localApplicationInfo != null)
      {
        int i = localApplicationInfo.flags;
        int j = i & 0x1;
        bool = false;
        if (j != 0)
          bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        localNameNotFoundException.printStackTrace();
        bool = false;
      }
    }
    catch (Exception localException)
    {
      while (true)
        boolean bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.utils.EnvUtil
 * JD-Core Version:    0.6.2
 */