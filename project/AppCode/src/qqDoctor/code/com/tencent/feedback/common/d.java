package com.tencent.feedback.common;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public final class d
{
  private static ConnectivityManager a = null;
  private static boolean b = false;
  private static boolean c = false;

  public static boolean a(Context paramContext)
  {
    int i = 1;
    NetworkInfo localNetworkInfo = c(paramContext);
    if ((localNetworkInfo != null) && (localNetworkInfo.getType() == i));
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  public static String b(Context paramContext)
  {
    NetworkInfo localNetworkInfo = c(paramContext);
    String str;
    if (localNetworkInfo == null)
      str = "null";
    while (true)
    {
      return str;
      if (localNetworkInfo.getType() == 1)
        str = "wifi";
      else
        str = "" + localNetworkInfo.getExtraInfo();
    }
  }

  private static NetworkInfo c(Context paramContext)
  {
    Object localObject;
    try
    {
      if ((a == null) && (paramContext != null))
        a = (ConnectivityManager)paramContext.getSystemService("connectivity");
      ConnectivityManager localConnectivityManager = a;
      if (localConnectivityManager == null)
      {
        localObject = null;
      }
      else
      {
        NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
        localObject = localNetworkInfo;
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
      localObject = null;
    }
    return localObject;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.common.d
 * JD-Core Version:    0.6.2
 */