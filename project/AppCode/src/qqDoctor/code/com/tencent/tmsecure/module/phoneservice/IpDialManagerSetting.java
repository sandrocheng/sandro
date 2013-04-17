package com.tencent.tmsecure.module.phoneservice;

import java.io.Serializable;

public final class IpDialManagerSetting
  implements Serializable
{
  String a = "";
  private int b = 2;
  private IpDialProvinceCity c = new IpDialProvinceCity();
  private IpDialProvinceCityList d = new IpDialProvinceCityList();
  private IpDialPhoneNumberList e = new IpDialPhoneNumberList();

  public IpDialManagerSetting()
  {
  }

  public IpDialManagerSetting(IpDialManagerSetting paramIpDialManagerSetting)
  {
    this();
    copyFrom(paramIpDialManagerSetting);
  }

  public final void copyFrom(IpDialManagerSetting paramIpDialManagerSetting)
  {
    if (paramIpDialManagerSetting != null)
    {
      this.b = paramIpDialManagerSetting.b;
      String str = paramIpDialManagerSetting.a;
      if (str != null)
        this.a = str;
      IpDialProvinceCity localIpDialProvinceCity = paramIpDialManagerSetting.c;
      this.c.setProvinceCity(localIpDialProvinceCity);
      IpDialProvinceCityList localIpDialProvinceCityList = paramIpDialManagerSetting.d;
      this.d.copyFrom(localIpDialProvinceCityList);
      IpDialPhoneNumberList localIpDialPhoneNumberList = paramIpDialManagerSetting.e;
      this.e.copyFrom(localIpDialPhoneNumberList);
    }
  }

  public final IpDialProvinceCityList getExcludedAreaList()
  {
    return new IpDialProvinceCityList(this.d);
  }

  public final IpDialPhoneNumberList getExcludedPhoneNumberList()
  {
    return new IpDialPhoneNumberList(this.e);
  }

  public final int getIpDialMode()
  {
    return this.b;
  }

  public final String getIpHeader()
  {
    return this.a;
  }

  public final IpDialProvinceCity getLocalPhoneLocation()
  {
    return new IpDialProvinceCity(this.c);
  }

  public final void setExcludedAreaList(IpDialProvinceCityList paramIpDialProvinceCityList)
  {
    this.d.copyFrom(paramIpDialProvinceCityList);
  }

  public final void setExcludedPhoneNumberList(IpDialPhoneNumberList paramIpDialPhoneNumberList)
  {
    this.e.copyFrom(paramIpDialPhoneNumberList);
  }

  public final void setIpDialMode(int paramInt)
  {
    this.b = paramInt;
  }

  public final void setIpHeader(String paramString)
  {
    if (paramString != null)
      this.a = paramString;
  }

  public final void setLocalPhoneLocation(IpDialProvinceCity paramIpDialProvinceCity)
  {
    this.c.setProvinceCity(paramIpDialProvinceCity);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.phoneservice.IpDialManagerSetting
 * JD-Core Version:    0.6.2
 */