package com.tencent.tmsecure.module.network;

public final class TrafficCorrectionConfig
{
  public String mBrandId;
  public String mCarryId;
  public String mCityId;
  public String mProvinceId;

  public TrafficCorrectionConfig()
  {
    this.mProvinceId = "";
    this.mCityId = "";
    this.mCarryId = "";
    this.mBrandId = "";
  }

  public TrafficCorrectionConfig(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.mProvinceId = paramString1;
    this.mCityId = paramString2;
    this.mCarryId = paramString3;
    this.mBrandId = paramString4;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.network.TrafficCorrectionConfig
 * JD-Core Version:    0.6.2
 */