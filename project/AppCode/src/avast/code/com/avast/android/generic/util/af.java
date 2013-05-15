package com.avast.android.generic.util;

import java.io.Closeable;
import java.net.HttpURLConnection;

public class af
{
  public static void a(Closeable[] paramArrayOfCloseable)
  {
    if (paramArrayOfCloseable == null)
      return;
    int i = paramArrayOfCloseable.length;
    int j = 0;
    while (j < i)
    {
      Closeable localCloseable = paramArrayOfCloseable[j];
      if (localCloseable != null);
      try
      {
        localCloseable.close();
        label29: j++;
      }
      catch (Exception localException)
      {
        break label29;
      }
    }
  }

  public static void a(HttpURLConnection[] paramArrayOfHttpURLConnection)
  {
    if (paramArrayOfHttpURLConnection == null)
      return;
    int i = paramArrayOfHttpURLConnection.length;
    int j = 0;
    while (j < i)
    {
      HttpURLConnection localHttpURLConnection = paramArrayOfHttpURLConnection[j];
      if (localHttpURLConnection != null);
      try
      {
        localHttpURLConnection.disconnect();
        label27: j++;
      }
      catch (Exception localException)
      {
        break label27;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.af
 * JD-Core Version:    0.6.2
 */