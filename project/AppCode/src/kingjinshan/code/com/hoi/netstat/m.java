package com.hoi.netstat;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import java.io.BufferedInputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import org.apache.http.util.ByteArrayBuffer;

final class m
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

  private static boolean a(Context paramContext)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    NetworkInfo.State localState1 = localConnectivityManager.getNetworkInfo(0).getState();
    NetworkInfo.State localState2 = localConnectivityManager.getNetworkInfo(1).getState();
    int i;
    int j;
    label87: boolean bool;
    if ((localState1 == NetworkInfo.State.CONNECTED) || (localState1 == NetworkInfo.State.CONNECTING))
    {
      i = 1;
      if (i == 0)
        break label136;
      NetworkInfo.State localState3 = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getNetworkInfo(1).getState();
      if ((localState3 != NetworkInfo.State.CONNECTED) && (localState3 != NetworkInfo.State.CONNECTING))
        break label124;
      j = 1;
      if (j == 0)
        break label130;
      bool = false;
    }
    while (true)
    {
      return bool;
      if ((localState2 == NetworkInfo.State.CONNECTED) || (localState2 == NetworkInfo.State.CONNECTING))
      {
        i = 1;
        break;
      }
      i = 0;
      break;
      label124: j = 0;
      break label87;
      label130: bool = true;
      continue;
      label136: bool = false;
    }
  }

  private static boolean b(Context paramContext)
  {
    NetworkInfo.State localState = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getNetworkInfo(1).getState();
    if ((localState == NetworkInfo.State.CONNECTED) || (localState == NetworkInfo.State.CONNECTING));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private static boolean c(Context paramContext)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    NetworkInfo.State localState1 = localConnectivityManager.getNetworkInfo(0).getState();
    NetworkInfo.State localState2 = localConnectivityManager.getNetworkInfo(1).getState();
    boolean bool;
    if ((localState1 == NetworkInfo.State.CONNECTED) || (localState1 == NetworkInfo.State.CONNECTING))
      bool = true;
    while (true)
    {
      return bool;
      if ((localState2 == NetworkInfo.State.CONNECTED) || (localState2 == NetworkInfo.State.CONNECTING))
        bool = true;
      else
        bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.netstat.m
 * JD-Core Version:    0.6.2
 */