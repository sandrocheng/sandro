package com.jxphone.a.a;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public final class i
{
  private static boolean a(Context paramContext)
  {
    NetworkInfo[] arrayOfNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getAllNetworkInfo();
    int i = arrayOfNetworkInfo.length;
    int j = 0;
    if (j < i)
      if (!arrayOfNetworkInfo[j].isAvailable());
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      j++;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.a.a.i
 * JD-Core Version:    0.6.2
 */