package com.tencent.feedback.common;

import android.content.Context;

public class CommonInfo
{
  private static CommonInfo k = null;
  private String a = "";
  private byte b = -1;
  private String c = "";
  private String d = "";
  private String e = "";
  private String f = "";
  private String g = "";
  private String h = "";
  private long i = 0L;
  private String j = "";

  public static void createCommonInfo(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      c.c("CommonInfo.createCommonInfo() start");
      if (paramContext != null)
        if (k == null)
          k = new CommonInfo();
      synchronized (k)
      {
        k.setHardware_os(b.a());
        k.setPlatformId((byte)1);
        k.setProductId(AppInfo.getPackageName(paramContext));
        k.setProductVersion(AppInfo.getVersionName(paramContext));
        k.setSdkId("com.tencent.feedback");
        k.setSdkVersion("539-45_v1.2.5_fixedListCuncurrent");
        k.setUserid(paramString1);
        k.setGateIP(paramString2);
        k.setUUId(AppInfo.getUUID(paramContext));
        c.c("CommonInfo.createCommonInfo() end");
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
      CommonInfo localCommonInfo = k;
      return localCommonInfo;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getGateIP()
  {
    return this.h;
  }

  public String getHardware_os()
  {
    return this.a;
  }

  public byte getPlatformId()
  {
    return this.b;
  }

  public String getProductId()
  {
    return this.c;
  }

  public String getProductVersion()
  {
    return this.d;
  }

  public String getSdkId()
  {
    return this.e;
  }

  public String getSdkVersion()
  {
    return this.f;
  }

  public long getServerTimeGap()
  {
    return this.i;
  }

  public String getUUId()
  {
    return this.j;
  }

  public String getUserid()
  {
    return this.g;
  }

  public void setGateIP(String paramString)
  {
    this.h = paramString;
  }

  public void setHardware_os(String paramString)
  {
    this.a = paramString;
  }

  public void setPlatformId(byte paramByte)
  {
    this.b = paramByte;
  }

  public void setProductId(String paramString)
  {
    this.c = paramString;
  }

  public void setProductVersion(String paramString)
  {
    this.d = paramString;
  }

  public void setSdkId(String paramString)
  {
    this.e = paramString;
  }

  public void setSdkVersion(String paramString)
  {
    this.f = paramString;
  }

  public void setServerTimeGap(long paramLong)
  {
    this.i = paramLong;
  }

  public void setUUId(String paramString)
  {
    this.j = paramString;
  }

  public void setUserid(String paramString)
  {
    this.g = paramString;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.common.CommonInfo
 * JD-Core Version:    0.6.2
 */