package com.ijinshan.kinghelper.firewall.core;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import king.org.apache.commons.codec.binary.StringUtils;

final class j extends Thread
{
  j(String paramString)
  {
  }

  public final void run()
  {
    InputStream localInputStream;
    ByteArrayOutputStream localByteArrayOutputStream;
    try
    {
      localInputStream = ((HttpURLConnection)new URL(this.a).openConnection()).getInputStream();
      localByteArrayOutputStream = new ByteArrayOutputStream();
      byte[] arrayOfByte1 = new byte[512];
      while (true)
      {
        int i = localInputStream.read(arrayOfByte1);
        if (i == -1)
          break;
        localByteArrayOutputStream.write(arrayOfByte1, 0, i);
      }
    }
    catch (Exception localException)
    {
      Log.e("FirewallReport", localException.getMessage(), localException);
    }
    while (true)
    {
      return;
      localByteArrayOutputStream.flush();
      byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
      localByteArrayOutputStream.close();
      localInputStream.close();
      Log.e("FirewallReport", "report result:" + StringUtils.newStringUtf8(arrayOfByte2));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.core.j
 * JD-Core Version:    0.6.2
 */