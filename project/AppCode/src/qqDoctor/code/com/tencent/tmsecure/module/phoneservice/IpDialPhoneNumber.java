package com.tencent.tmsecure.module.phoneservice;

import java.io.Serializable;

public final class IpDialPhoneNumber
  implements Serializable
{
  private String a;
  private String b;

  public IpDialPhoneNumber()
  {
    this.a = "";
    this.b = "";
  }

  public IpDialPhoneNumber(IpDialPhoneNumber paramIpDialPhoneNumber)
  {
    this(paramIpDialPhoneNumber.a, paramIpDialPhoneNumber.b);
  }

  public IpDialPhoneNumber(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = paramString2;
  }

  public final String getName()
  {
    return this.a;
  }

  public final String getPhoneNumber()
  {
    return this.b;
  }

  public final void setName(String paramString)
  {
    this.a = paramString;
  }

  public final void setNamePhoneNumber(IpDialPhoneNumber paramIpDialPhoneNumber)
  {
    this.a = paramIpDialPhoneNumber.a;
    this.b = paramIpDialPhoneNumber.b;
  }

  public final void setPhoneNumber(String paramString)
  {
    this.b = paramString;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.phoneservice.IpDialPhoneNumber
 * JD-Core Version:    0.6.2
 */