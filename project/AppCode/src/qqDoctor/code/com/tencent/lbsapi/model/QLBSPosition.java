package com.tencent.lbsapi.model;

public class QLBSPosition
{
  private String a = "";
  private String b = "";
  private String c = "";
  private String d = "";
  private String e = "";
  private String f = "";
  private QLBSGPSInfo g = null;
  private int h = 0;

  public String getCity()
  {
    return this.b;
  }

  public String getDistrict()
  {
    return this.c;
  }

  public QLBSGPSInfo getGps()
  {
    return this.g;
  }

  public String getPremises()
  {
    return this.f;
  }

  public String getProvince()
  {
    return this.a;
  }

  public int getRange()
  {
    return this.h;
  }

  public String getRoad()
  {
    return this.e;
  }

  public String getTown()
  {
    return this.d;
  }

  public void setCity(String paramString)
  {
    this.b = paramString;
  }

  public void setDistrict(String paramString)
  {
    this.c = paramString;
  }

  public void setGps(QLBSGPSInfo paramQLBSGPSInfo)
  {
    this.g = paramQLBSGPSInfo;
  }

  public void setPremises(String paramString)
  {
    this.f = paramString;
  }

  public void setProvince(String paramString)
  {
    this.a = paramString;
  }

  public void setRange(int paramInt)
  {
    this.h = paramInt;
  }

  public void setRoad(String paramString)
  {
    this.e = paramString;
  }

  public void setTown(String paramString)
  {
    this.d = paramString;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.lbsapi.model.QLBSPosition
 * JD-Core Version:    0.6.2
 */