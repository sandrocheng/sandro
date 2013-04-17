package com.tencent.tmsecure.module.networkload;

import btl;

public class NetworkloadProperties
{
  private static btl a = new btl("networkload");

  public static long getSelfMobileDownloadBytes()
  {
    try
    {
      long l = a.b("mobile_download_bytes", 0L);
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static long getSelfMobileUploadBytes()
  {
    try
    {
      long l = a.b("mobile_upload_bytes", 0L);
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void updateSelfMobileDownloadBytes(long paramLong)
  {
    try
    {
      a.a("mobile_download_bytes", paramLong);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void updateSelfMobileUploadBytes(long paramLong)
  {
    try
    {
      a.a("mobile_upload_bytes", paramLong);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.networkload.NetworkloadProperties
 * JD-Core Version:    0.6.2
 */