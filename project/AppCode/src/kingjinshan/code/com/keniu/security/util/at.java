package com.keniu.security.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import java.io.BufferedInputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import org.apache.http.util.ByteArrayBuffer;

public final class at
{
  private static String a(String paramString)
  {
    HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(paramString).openConnection();
    localHttpURLConnection.setConnectTimeout(10000);
    localHttpURLConnection.connect();
    BufferedInputStream localBufferedInputStream = new BufferedInputStream(localHttpURLConnection.getInputStream());
    ByteArrayBuffer localByteArrayBuffer = new ByteArrayBuffer(1024);
    while (true)
    {
      int i = localBufferedInputStream.read();
      if (i == -1)
        break;
      localByteArrayBuffer.append((byte)i);
    }
    return new String(localByteArrayBuffer.toByteArray()).trim();
  }

  public static boolean a(Context paramContext)
  {
    boolean bool;
    if (c(paramContext))
      if (b(paramContext))
        bool = false;
    while (true)
    {
      return bool;
      bool = true;
      continue;
      bool = false;
    }
  }

  public static boolean b(Context paramContext)
  {
    NetworkInfo.State localState = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getNetworkInfo(1).getState();
    if ((localState == NetworkInfo.State.CONNECTED) || (localState == NetworkInfo.State.CONNECTING));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean c(Context paramContext)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    boolean bool;
    if (localConnectivityManager == null)
      bool = false;
    while (true)
    {
      return bool;
      NetworkInfo localNetworkInfo1 = localConnectivityManager.getNetworkInfo(0);
      if (localNetworkInfo1 != null)
      {
        NetworkInfo.State localState2 = localNetworkInfo1.getState();
        if ((localState2 == NetworkInfo.State.CONNECTED) || (localState2 == NetworkInfo.State.CONNECTING))
          bool = true;
      }
      else
      {
        NetworkInfo localNetworkInfo2 = localConnectivityManager.getNetworkInfo(1);
        if (localNetworkInfo2 != null)
        {
          NetworkInfo.State localState1 = localNetworkInfo2.getState();
          if ((localState1 == NetworkInfo.State.CONNECTED) || (localState1 == NetworkInfo.State.CONNECTING))
            bool = true;
        }
        else
        {
          bool = false;
        }
      }
    }
  }

  private static boolean d(Context paramContext)
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo != null) && (localNetworkInfo.isRoaming()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.at
 * JD-Core Version:    0.6.2
 */