package com.tencent.tmsecure.module.phoneservice;

import java.io.Serializable;

public final class IpDialProvinceCity
  implements Serializable
{
  String a;
  String b;

  public IpDialProvinceCity()
  {
    this.a = "";
    this.b = "";
  }

  public IpDialProvinceCity(IpDialProvinceCity paramIpDialProvinceCity)
  {
    this(paramIpDialProvinceCity.a, paramIpDialProvinceCity.b);
  }

  public IpDialProvinceCity(String paramString1, String paramString2)
  {
    if (paramString1 != null)
    {
      this.a = paramString1;
      if (paramString2 == null)
        break label29;
    }
    while (true)
    {
      this.b = paramString2;
      return;
      paramString1 = "";
      break;
      label29: paramString2 = "";
    }
  }

  public final String getCity()
  {
    return this.b;
  }

  public final String getProvince()
  {
    return this.a;
  }

  public final void setCity(String paramString)
  {
    if (paramString != null)
      this.b = paramString;
  }

  public final void setProvince(String paramString)
  {
    if (paramString != null)
      this.a = paramString;
  }

  public final void setProvinceCity(IpDialProvinceCity paramIpDialProvinceCity)
  {
    if (paramIpDialProvinceCity != null)
    {
      String str1 = paramIpDialProvinceCity.a;
      if (str1 != null)
        this.a = str1;
      String str2 = paramIpDialProvinceCity.b;
      if (str2 != null)
        this.b = str2;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.phoneservice.IpDialProvinceCity
 * JD-Core Version:    0.6.2
 */