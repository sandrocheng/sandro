package com.tencent.tmsecure.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Looper;
import bzj;
import com.tencent.tmsecure.common.TMSApplication;

public class WifiUtil
{
  public static final String TEST_URL = "http://qqwx.qq.com/cw.html";
  public static String sRedirectLocation;

  public static int calculateSignalLevel(int paramInt)
  {
    if (!isWifiNetwork());
    for (int i = -1; ; i = WifiManager.calculateSignalLevel(((WifiManager)TMSApplication.getApplicaionContext().getSystemService("wifi")).getConnectionInfo().getRssi(), paramInt))
      return i;
  }

  public static String getSSID()
  {
    WifiManager localWifiManager = (WifiManager)TMSApplication.getApplicaionContext().getSystemService("wifi");
    WifiInfo localWifiInfo;
    if (localWifiManager != null)
    {
      localWifiInfo = localWifiManager.getConnectionInfo();
      if (localWifiInfo == null);
    }
    for (String str = localWifiInfo.getSSID(); ; str = "")
      return str;
  }

  public static boolean isWifiNetwork()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)TMSApplication.getApplicaionContext().getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (localNetworkInfo.getType() != 1));
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  public static void needWifiApprove(IWifiApproveCheckCallBack paramIWifiApproveCheckCallBack)
  {
    new bzj(Looper.getMainLooper(), paramIWifiApproveCheckCallBack).sendEmptyMessage(0);
  }

  public static abstract interface IWifiApproveCheckCallBack
  {
    public abstract void onWifiApproveCheckFinished(boolean paramBoolean1, boolean paramBoolean2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.utils.WifiUtil
 * JD-Core Version:    0.6.2
 */