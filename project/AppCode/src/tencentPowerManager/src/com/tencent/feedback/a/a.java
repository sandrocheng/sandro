package com.tencent.feedback.a;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public final class a
{
  private static ConnectivityManager a = null;

  public static String a(Context paramContext)
  {
    if ((a == null) && (paramContext != null))
      a = (ConnectivityManager)paramContext.getSystemService("connectivity");
    ConnectivityManager localConnectivityManager = a;
    NetworkInfo localNetworkInfo;
    String str;
    if (localConnectivityManager == null)
    {
      localNetworkInfo = null;
      if (localNetworkInfo != null)
        break label49;
      str = "";
    }
    while (true)
    {
      return str;
      localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
      break;
      label49: if (localNetworkInfo.getType() == 1)
        str = "wifi";
      else
        str = "" + localNetworkInfo.getExtraInfo();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.a.a
 * JD-Core Version:    0.6.2
 */