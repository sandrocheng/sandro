package com.tencent.tmsecure.module.network;

public final class CorrectionDataInfo
{
  private String a = "";
  private String b = "";

  public CorrectionDataInfo()
  {
  }

  public CorrectionDataInfo(String paramString1, String paramString2)
  {
    setAddress(paramString1);
    setMessage(paramString2);
  }

  public final String getAddress()
  {
    return this.a;
  }

  public final String getMessage()
  {
    return this.b;
  }

  public final void setAddress(String paramString)
  {
    if (paramString != null);
    while (true)
    {
      this.a = paramString;
      return;
      paramString = "";
    }
  }

  public final void setMessage(String paramString)
  {
    if (paramString != null);
    while (true)
    {
      this.b = paramString;
      return;
      paramString = "";
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.network.CorrectionDataInfo
 * JD-Core Version:    0.6.2
 */