package com.avast.android.generic.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.avast.android.generic.f.b.a;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class u
{
  private static final String[] a = { "rmnet", "pdp", "ppp", "uwbr", "wimax", "vsnet", "ccmni", "usb" };
  private static Boolean b = null;

  public static boolean a(Context paramContext)
  {
    try
    {
      boolean bool3;
      if (b != null)
        bool3 = b.booleanValue();
      boolean bool1;
      for (boolean bool2 = bool3; ; bool2 = bool1)
      {
        return bool2;
        m.c("NetworkUtils: Checking for mobile interface.");
        b = Boolean.valueOf(d(paramContext));
        m.c("NetworkUtils: Mobile interface present: " + b);
        bool1 = b.booleanValue();
      }
    }
    finally
    {
    }
  }

  public static boolean a(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean);
    try
    {
      b = null;
      boolean bool = a(paramContext);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static boolean b(Context paramContext)
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    boolean bool;
    if (localNetworkInfo != null)
    {
      int i = localNetworkInfo.getType();
      if ((localNetworkInfo.isConnectedOrConnecting()) && ((i == 1) || (i == 6)))
        bool = true;
    }
    while (true)
    {
      return bool;
      bool = false;
      continue;
      bool = false;
    }
  }

  public static boolean c(Context paramContext)
  {
    WifiManager localWifiManager = (WifiManager)paramContext.getSystemService("wifi");
    boolean bool1 = false;
    List localList;
    if (localWifiManager != null)
    {
      localList = localWifiManager.getConfiguredNetworks();
      bool1 = false;
      if (localList != null);
    }
    else
    {
      return bool1;
    }
    Iterator localIterator = localList.iterator();
    WifiConfiguration localWifiConfiguration;
    do
    {
      boolean bool2 = localIterator.hasNext();
      bool1 = false;
      if (!bool2)
        break;
      localWifiConfiguration = (WifiConfiguration)localIterator.next();
    }
    while (localWifiConfiguration.status != 0);
    if ((localWifiConfiguration.allowedKeyManagement.get(0)) && ((localWifiConfiguration.wepKeys.length == 0) || (localWifiConfiguration.wepKeys[0] == null)));
    for (boolean bool3 = true; ; bool3 = false)
    {
      bool1 = bool3;
      break;
    }
  }

  private static boolean d(Context paramContext)
  {
    boolean bool1;
    if (a.g(paramContext))
      bool1 = true;
    while (true)
    {
      return bool1;
      m.c("NetworkUtils: FEATURE_TELEPHONY not present.");
      if (e(paramContext))
      {
        bool1 = true;
      }
      else
      {
        m.c("NetworkUtils: ConnectivityManager has no available TYPE_MOBILE_* interface.");
        if (!TextUtils.isEmpty(((TelephonyManager)paramContext.getSystemService("phone")).getSubscriberId()))
          bool1 = true;
        else
          try
          {
            Iterator localIterator = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
            label176: 
            while (true)
            {
              if (!localIterator.hasNext())
                break label186;
              NetworkInterface localNetworkInterface = (NetworkInterface)localIterator.next();
              m.c("NetworkUtils: NetworkInterface, checking interface: " + localNetworkInterface.getName());
              String[] arrayOfString = a;
              int i = arrayOfString.length;
              for (int j = 0; ; j++)
              {
                if (j >= i)
                  break label176;
                String str = arrayOfString[j];
                boolean bool2 = localNetworkInterface.getName().startsWith(str);
                if (bool2)
                {
                  bool1 = true;
                  break;
                }
              }
            }
          }
          catch (SocketException localSocketException)
          {
            m.b("Error while enumerating network interfaces.", localSocketException);
            label186: m.c("NetworkUtils: NetworkInterface doesn't know about any mobile-like interface.");
            bool1 = false;
          }
      }
    }
  }

  private static boolean e(Context paramContext)
  {
    NetworkInfo[] arrayOfNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getAllNetworkInfo();
    int i = arrayOfNetworkInfo.length;
    int j = 0;
    NetworkInfo localNetworkInfo;
    if (j < i)
    {
      localNetworkInfo = arrayOfNetworkInfo[j];
      m.c("NetworkUtils: ConnectivityManager, checking network: " + localNetworkInfo.getTypeName());
      int k = localNetworkInfo.getType();
      if ((k == 0) || (k == 4) || (k == 5) || (k == 2) || (k == 3))
        m.c("NetworkUtils: ConnectivityManager, mobile network found, available: " + localNetworkInfo.isAvailable());
    }
    for (boolean bool = localNetworkInfo.isAvailable(); ; bool = false)
    {
      return bool;
      j++;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.u
 * JD-Core Version:    0.6.2
 */