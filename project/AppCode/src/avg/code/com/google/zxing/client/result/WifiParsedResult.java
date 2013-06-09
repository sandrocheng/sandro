package com.google.zxing.client.result;

public final class WifiParsedResult extends ParsedResult
{
  private final String networkEncryption;
  private final String password;
  private final String ssid;

  public WifiParsedResult(String paramString1, String paramString2, String paramString3)
  {
    super(ParsedResultType.WIFI);
    this.ssid = paramString2;
    this.networkEncryption = paramString1;
    this.password = paramString3;
  }

  public final String getDisplayResult()
  {
    StringBuilder localStringBuilder = new StringBuilder(80);
    maybeAppend(this.ssid, localStringBuilder);
    maybeAppend(this.networkEncryption, localStringBuilder);
    maybeAppend(this.password, localStringBuilder);
    return localStringBuilder.toString();
  }

  public final String getNetworkEncryption()
  {
    return this.networkEncryption;
  }

  public final String getPassword()
  {
    return this.password;
  }

  public final String getSsid()
  {
    return this.ssid;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.WifiParsedResult
 * JD-Core Version:    0.6.2
 */