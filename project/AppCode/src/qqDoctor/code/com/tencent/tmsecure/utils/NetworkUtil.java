package com.tencent.tmsecure.utils;

import QQPIM.ConnectType;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import com.tencent.tmsecure.common.TMSApplication;

public class NetworkUtil
{
  private static int a;

  public static boolean canNetworkOnMainThread()
  {
    boolean bool = true;
    if (SDKUtil.getSDKVersion() < 11);
    while (true)
    {
      return bool;
      if (a <= 0)
        a = TMSApplication.getApplicaionContext().getApplicationInfo().targetSdkVersion;
      if (a >= 10)
        bool = false;
    }
  }

  public static String getNetworkName()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)TMSApplication.getApplicaionContext().getSystemService("connectivity")).getActiveNetworkInfo();
    String str;
    if (localNetworkInfo == null)
      str = "";
    label52: 
    while (true)
    {
      return str;
      if (localNetworkInfo.getType() == 1);
      for (str = WifiUtil.getSSID(); ; str = localNetworkInfo.getExtraInfo())
      {
        if (str != null)
          break label52;
        str = "";
        break;
      }
    }
  }

  public static ConnectType getNetworkType()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)TMSApplication.getApplicaionContext().getSystemService("connectivity")).getActiveNetworkInfo();
    ConnectType localConnectType;
    if (localNetworkInfo == null)
      localConnectType = ConnectType.CT_NONE;
    while (true)
    {
      return localConnectType;
      if (localNetworkInfo.getType() == 1)
      {
        localConnectType = ConnectType.CT_WIFI;
      }
      else if (localNetworkInfo.getType() == 0)
      {
        String str = getProxyHost();
        if ((str != null) && (str.length() > 0) && (getProxyPort() > 0))
          localConnectType = ConnectType.CT_GPRS_WAP;
        else
          localConnectType = ConnectType.CT_GPRS_NET;
      }
      else
      {
        localConnectType = ConnectType.CT_GPRS_NET;
      }
    }
  }

  public static String getProxyHost()
  {
    String str = Proxy.getHost(TMSApplication.getApplicaionContext());
    if ((str == null) || (str.length() == 0))
      str = Proxy.getDefaultHost();
    return str;
  }

  public static int getProxyPort()
  {
    int i = Proxy.getPort(TMSApplication.getApplicaionContext());
    if (i <= 0)
      i = Proxy.getDefaultPort();
    return i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.utils.NetworkUtil
 * JD-Core Version:    0.6.2
 */