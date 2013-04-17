package com.tencent.lbsapi.model;

public class QLBSGPSInfo
{
  public static final int GPS_MARS = 1;
  public static final int GPS_WGS84 = 0;
  public static final int GPS_WGS_REAL = 2;
  private int a = 900000000;
  private int b = 900000000;
  private int c = 900000000;
  private int d = 0;

  public QLBSGPSInfo()
  {
  }

  public QLBSGPSInfo(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    setLat(paramInt1);
    setLon(paramInt2);
    setAlt(paramInt3);
    setType(paramInt4);
  }

  public double getAlt()
  {
    return this.c / 1000000.0D;
  }

  public double getLat()
  {
    return this.a / 1000000.0D;
  }

  public double getLon()
  {
    return this.b / 1000000.0D;
  }

  public int getType()
  {
    return this.d;
  }

  public void setAlt(int paramInt)
  {
    this.c = paramInt;
  }

  public void setLat(int paramInt)
  {
    this.a = paramInt;
  }

  public void setLon(int paramInt)
  {
    this.b = paramInt;
  }

  public void setType(int paramInt)
  {
    this.d = paramInt;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.lbsapi.model.QLBSGPSInfo
 * JD-Core Version:    0.6.2
 */