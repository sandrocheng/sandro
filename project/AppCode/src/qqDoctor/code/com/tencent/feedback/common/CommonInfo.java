package com.tencent.feedback.common;

import android.content.Context;

public class CommonInfo
{
  private static CommonInfo mComInfo = null;
  private String APPId = "";
  private String UUId = "";
  private String gateIP = "";
  private String hardware_os = "";
  private String imei = "";
  private byte platformId = -1;
  private String productId = "";
  private String productVersion = "";
  private String sdkId = "";
  private String sdkVersion = "";
  private long serverTimeGap = 0L;
  private String userid = "";

  public static void createCommonInfo(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      ELog.debug("CommonInfo.createCommonInfo() start");
      if (paramContext != null)
        if (mComInfo == null)
          mComInfo = new CommonInfo();
      synchronized (mComInfo)
      {
        mComInfo.setHardware_os(DeviceInfo.getPlatform());
        mComInfo.setPlatformId((byte)1);
        mComInfo.setProductId(AppInfo.getPackageName(paramContext));
        mComInfo.setProductVersion(AppInfo.getVersionName(paramContext));
        mComInfo.setSdkId("com.tencent.feedback");
        mComInfo.setSdkVersion("rqd_1.3.9_mergeBugFixed");
        mComInfo.setUserid(paramString1);
        mComInfo.setGateIP(paramString2);
        mComInfo.setUUId(AppInfo.getUUID(paramContext));
        mComInfo.setImei(DeviceInfo.getImei(paramContext));
        ELog.debug("CommonInfo.createCommonInfo() end");
        return;
      }
    }
    finally
    {
    }
  }

  public static CommonInfo getCommonInfo()
  {
    try
    {
      CommonInfo localCommonInfo = mComInfo;
      return localCommonInfo;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void setCommonInfoInstance(CommonInfo paramCommonInfo)
  {
    try
    {
      mComInfo = paramCommonInfo;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getAPPId()
  {
    try
    {
      String str = this.APPId;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getGateIP()
  {
    try
    {
      String str = this.gateIP;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getHardware_os()
  {
    try
    {
      String str = this.hardware_os;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getImei()
  {
    try
    {
      String str = this.imei;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public byte getPlatformId()
  {
    try
    {
      byte b = this.platformId;
      return b;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getProductId()
  {
    try
    {
      String str = this.productId;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getProductVersion()
  {
    try
    {
      String str = this.productVersion;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getSdkId()
  {
    try
    {
      String str = this.sdkId;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getSdkVersion()
  {
    try
    {
      String str = this.sdkVersion;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public long getServerTimeGap()
  {
    try
    {
      long l = this.serverTimeGap;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getUUId()
  {
    try
    {
      String str = this.UUId;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getUserid()
  {
    try
    {
      String str = this.userid;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setAPPId(String paramString)
  {
    try
    {
      this.APPId = ("" + paramString);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setGateIP(String paramString)
  {
    try
    {
      this.gateIP = ("" + paramString);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setHardware_os(String paramString)
  {
    try
    {
      this.hardware_os = ("" + paramString);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setImei(String paramString)
  {
    try
    {
      this.imei = paramString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setPlatformId(byte paramByte)
  {
    try
    {
      this.platformId = paramByte;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setProductId(String paramString)
  {
    try
    {
      this.productId = ("" + paramString);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setProductVersion(String paramString)
  {
    try
    {
      this.productVersion = ("" + paramString);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setSdkId(String paramString)
  {
    try
    {
      this.sdkId = ("" + paramString);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setSdkVersion(String paramString)
  {
    try
    {
      this.sdkVersion = ("" + paramString);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setServerTimeGap(long paramLong)
  {
    try
    {
      this.serverTimeGap = paramLong;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setUUId(String paramString)
  {
    try
    {
      this.UUId = paramString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setUserid(String paramString)
  {
    if (paramString == null);
    try
    {
      paramString = "1000";
      this.userid = ("" + paramString);
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
 * Qualified Name:     com.tencent.feedback.common.CommonInfo
 * JD-Core Version:    0.6.2
 */