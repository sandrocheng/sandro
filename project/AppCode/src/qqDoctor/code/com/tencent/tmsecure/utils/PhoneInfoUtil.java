package com.tencent.tmsecure.utils;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import btd;
import bzh;
import java.io.File;

public final class PhoneInfoUtil
{
  public static final int CHINA_MOBILE = 0;
  public static final int CHINA_TELECOM = 2;
  public static final int CHINA_UNICOM = 1;
  public static final int NO_NETOP = -2;
  public static final int OTHER = -1;

  public static void Call(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + paramString));
    localIntent.setFlags(268435456);
    paramContext.startActivity(localIntent);
  }

  public static int dip2px(Context paramContext, float paramFloat)
  {
    return (int)(0.5F + paramFloat * paramContext.getResources().getDisplayMetrics().density);
  }

  public static String getAndoidId()
  {
    return "android_id";
  }

  public static void getCPUscale(CPUScaleListener paramCPUScaleListener)
  {
    try
    {
      new Thread(new bzh(paramCPUScaleListener)).start();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static String getICCID(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getSimSerialNumber();
  }

  public static String getIMEI(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
  }

  public static String getIMSI(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getSubscriberId();
  }

  public static String getMAC(Context paramContext)
  {
    WifiInfo localWifiInfo = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
    String str = null;
    if (localWifiInfo != null)
      str = localWifiInfo.getMacAddress();
    return str;
  }

  public static String getMSISDN(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getLine1Number();
  }

  public static String getModelName()
  {
    return Build.MODEL;
  }

  public static int getNetworkOperatorCode(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    String str;
    int i;
    if (hasSIM(paramContext))
    {
      str = localTelephonyManager.getNetworkOperator();
      if ((str.equals("46000")) || (str.equals("46002")) || (str.equals("46007")))
        i = 0;
    }
    while (true)
    {
      return i;
      if (str.equals("46001"))
      {
        i = 1;
      }
      else if (str.equals("46003"))
      {
        i = 2;
      }
      else if (!str.equals(""))
      {
        i = -1;
      }
      else
      {
        i = -2;
        continue;
        i = -2;
      }
    }
  }

  public static void getPhoneStorageSize(SizeInfo paramSizeInfo)
  {
    getSizeInfo(Environment.getDataDirectory(), paramSizeInfo);
  }

  public static String getProductName()
  {
    return Build.PRODUCT;
  }

  public static int getScreenHeight(Context paramContext)
  {
    return paramContext.getResources().getDisplayMetrics().heightPixels;
  }

  public static int getScreenWidth(Context paramContext)
  {
    return paramContext.getResources().getDisplayMetrics().widthPixels;
  }

  public static void getSizeInfo(File paramFile, SizeInfo paramSizeInfo)
  {
    StatFs localStatFs = new StatFs(paramFile.getPath());
    long l = localStatFs.getBlockSize();
    paramSizeInfo.a = (l * localStatFs.getAvailableBlocks());
    paramSizeInfo.b = (l * localStatFs.getBlockCount());
  }

  public static void getStorageCardSize(SizeInfo paramSizeInfo)
  {
    if (btd.a())
      getSizeInfo(Environment.getExternalStorageDirectory(), paramSizeInfo);
    while (true)
    {
      return;
      paramSizeInfo.a = 0L;
      paramSizeInfo.b = 0L;
    }
  }

  public static boolean hasSIM(Context paramContext)
  {
    if (((TelephonyManager)paramContext.getSystemService("phone")).getSimState() != 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static int px2dip(Context paramContext, float paramFloat)
  {
    return (int)(0.5F + paramFloat / paramContext.getResources().getDisplayMetrics().density);
  }

  public static abstract interface CPUScaleListener
  {
    public abstract void onFinish(float paramFloat);
  }

  public static class SizeInfo
  {
    public long a;
    public long b;

    public int percent()
    {
      boolean bool = this.b < 0L;
      int i = 0;
      if (bool)
        i = (int)(100.0F * ((float)(this.b - this.a) / (float)this.b));
      return i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.utils.PhoneInfoUtil
 * JD-Core Version:    0.6.2
 */