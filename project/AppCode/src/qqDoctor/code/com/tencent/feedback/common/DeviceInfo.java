package com.tencent.feedback.common;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

public final class DeviceInfo
{
  public static boolean checkIsHaveCard()
  {
    if (Environment.getExternalStorageState().equals("mounted"));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static String getApiLevel()
  {
    return Build.VERSION.SDK;
  }

  public static int getApiLevelInt()
  {
    return Integer.parseInt(getApiLevel());
  }

  public static String getDeviceName()
  {
    return Build.MODEL;
  }

  public static DisplayMetrics getDisplayMetrics(Context paramContext)
  {
    Object localObject;
    if (paramContext == null)
    {
      ELog.error("getDisplayMetrics but context == null!");
      localObject = null;
    }
    while (true)
    {
      return localObject;
      try
      {
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
        localObject = localDisplayMetrics;
      }
      catch (Throwable localThrowable)
      {
        ELog.error("getDisplayMetrics error!");
        localThrowable.printStackTrace();
        localObject = null;
      }
    }
  }

  public static String getImei(Context paramContext)
  {
    String str;
    if (paramContext == null)
    {
      ELog.error("getImei but context == null!");
      str = "null";
    }
    while (true)
    {
      return str;
      try
      {
        str = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
        if (str == null)
        {
          ELog.info("can't get imei ,change to get macAdress");
          str = "macAdress:" + getMacAddress(paramContext);
        }
        ELog.info("IMEI:" + str);
      }
      catch (Throwable localThrowable)
      {
        ELog.error("getImei error!");
        localThrowable.printStackTrace();
        str = "error";
      }
    }
  }

  public static String getMacAddress(Context paramContext)
  {
    Object localObject;
    if (paramContext == null)
    {
      ELog.error("getMacAddress but context == null!");
      localObject = "null";
    }
    while (true)
    {
      return localObject;
      try
      {
        WifiInfo localWifiInfo = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
        String str = "" + localWifiInfo.getMacAddress();
        localObject = str;
      }
      catch (Throwable localThrowable)
      {
        ELog.error("getMacAddress error!");
        localThrowable.printStackTrace();
        localObject = "error";
      }
    }
  }

  public static String getPlatform()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(getDeviceName());
    localStringBuffer.append(";Android ");
    localStringBuffer.append(getVersion());
    localStringBuffer.append(",level ");
    localStringBuffer.append(getApiLevel());
    return localStringBuffer.toString();
  }

  public static String getVersion()
  {
    return Build.VERSION.RELEASE;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.common.DeviceInfo
 * JD-Core Version:    0.6.2
 */