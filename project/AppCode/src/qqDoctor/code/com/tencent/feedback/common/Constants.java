package com.tencent.feedback.common;

import android.os.Build;
import android.os.Build.VERSION;

public class Constants
{
  protected static boolean AllFunctionPowerOff = false;
  protected static String[] DevicesToPowerOff;
  public static final long EupLogSdcardSize = 5000L;
  public static boolean IS_CORE_DEBUG = false;
  public static boolean IS_DEBUG = false;
  public static boolean IS_HUIDUTEST = false;
  public static boolean IS_USETESTSERVER = false;
  public static boolean IS_ZHUANTEST = false;
  public static boolean Is_AutoCheckOpen = false;
  public static final String LOG_TAG = "eup";
  protected static int[] SDKLevelToPowerOff;
  public static final String Test_TAG = "test";
  public static boolean isStoreEupLogSdcard;

  static
  {
    IS_CORE_DEBUG = false;
    IS_USETESTSERVER = false;
    IS_ZHUANTEST = false;
    IS_HUIDUTEST = false;
    Is_AutoCheckOpen = false;
    isStoreEupLogSdcard = false;
    AllFunctionPowerOff = false;
    DevicesToPowerOff = null;
    SDKLevelToPowerOff = null;
    checkBackList();
  }

  public static void checkBackList()
  {
    if ((!AllFunctionPowerOff) && (SDKLevelToPowerOff != null));
    while ((AllFunctionPowerOff) || (DevicesToPowerOff == null))
      try
      {
        int j = Integer.parseInt(Build.VERSION.SDK);
        for (int k = 0; k < SDKLevelToPowerOff.length; k++)
          if (SDKLevelToPowerOff[k] == j)
          {
            AllFunctionPowerOff = true;
            ELog.debug("sdk in backList " + j);
            return;
          }
      }
      catch (Throwable localThrowable2)
      {
        ELog.debug("error in check sdk in black list");
        localThrowable2.printStackTrace();
      }
    while (true)
    {
      int i;
      try
      {
        String str = Build.MODEL;
        i = 0;
        if (i >= DevicesToPowerOff.length)
          break;
        if (!str.contains(DevicesToPowerOff[i]))
          break label167;
        AllFunctionPowerOff = true;
        ELog.debug("device name in backList " + str);
      }
      catch (Throwable localThrowable1)
      {
        ELog.debug("error in check device in black list");
        localThrowable1.printStackTrace();
      }
      break;
      label167: i++;
    }
  }

  public static String[] getDevicesToPowerOff()
  {
    try
    {
      String[] arrayOfString = DevicesToPowerOff;
      return arrayOfString;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static int[] getSDKLevelToPowerOff()
  {
    try
    {
      int[] arrayOfInt = SDKLevelToPowerOff;
      return arrayOfInt;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static boolean isAllFunctionPowerOff()
  {
    try
    {
      boolean bool = AllFunctionPowerOff;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void setAllFunctionPowerOff(boolean paramBoolean)
  {
    try
    {
      ELog.info("setAllFunctionPowerOff");
      AllFunctionPowerOff = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void setDevicesToPowerOff(String[] paramArrayOfString)
  {
    try
    {
      DevicesToPowerOff = paramArrayOfString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void setSDKLevelToPowerOff(int[] paramArrayOfInt)
  {
    try
    {
      SDKLevelToPowerOff = paramArrayOfInt;
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
 * Qualified Name:     com.tencent.feedback.common.Constants
 * JD-Core Version:    0.6.2
 */