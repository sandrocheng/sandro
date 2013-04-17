package com.tencent.lbsapi.model;

public class QLBSPoiInfo
{
  private String a = null;
  private int b = 0;
  private String c = null;
  private String d = null;
  private long e = 0L;
  private int f = 0;
  private QLBSGPSInfo g = null;
  private int h = 0;
  private int i = 0;

  public QLBSPoiInfo(String paramString1, int paramInt1, String paramString2, String paramString3, long paramLong, int paramInt2, int paramInt3, int paramInt4)
  {
    this.a = paramString1;
    this.b = paramInt1;
    this.c = paramString2;
    this.d = paramString3;
    this.e = paramLong;
    this.f = paramInt2;
    this.h = paramInt3;
    this.i = paramInt4;
  }

  public String getAddress()
  {
    return this.d;
  }

  public int getDistance()
  {
    return this.h;
  }

  public int getDistrictCode()
  {
    return this.f;
  }

  public int getHotValue()
  {
    return this.i;
  }

  public QLBSGPSInfo getMarsGps()
  {
    return this.g;
  }

  public String getName()
  {
    return this.a;
  }

  public long getPoiId()
  {
    return this.e;
  }

  public int getType()
  {
    return this.b;
  }

  public String getTypeName()
  {
    return this.c;
  }

  public void setAddress(String paramString)
  {
    this.d = paramString;
  }

  public void setDistance(int paramInt)
  {
    this.h = paramInt;
  }

  public void setDistrictCode(int paramInt)
  {
    this.f = paramInt;
  }

  public void setHotValue(int paramInt)
  {
    this.i = paramInt;
  }

  public void setMarsGps(QLBSGPSInfo paramQLBSGPSInfo)
  {
    this.g = paramQLBSGPSInfo;
  }

  public void setName(String paramString)
  {
    this.a = paramString;
  }

  public void setPoiID(long paramLong)
  {
    this.e = paramLong;
  }

  public void setType(int paramInt)
  {
    this.b = paramInt;
  }

  public void setTypeName(String paramString)
  {
    this.c = paramString;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.lbsapi.model.QLBSPoiInfo
 * JD-Core Version:    0.6.2
 */