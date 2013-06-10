package com.google.zxing.client.result;

import com.google.zxing.Result;

public final class WifiResultParser extends ResultParser
{
  public final WifiParsedResult parse(Result paramResult)
  {
    String str1 = paramResult.getText();
    boolean bool = str1.startsWith("WIFI:");
    WifiParsedResult localWifiParsedResult = null;
    if (!bool);
    while (true)
    {
      return localWifiParsedResult;
      String str2 = matchSinglePrefixedField("S:", str1, ';', false);
      localWifiParsedResult = null;
      if (str2 != null)
      {
        int i = str2.length();
        localWifiParsedResult = null;
        if (i != 0)
        {
          String str3 = matchSinglePrefixedField("P:", str1, ';', false);
          String str4 = matchSinglePrefixedField("T:", str1, ';', false);
          if (str4 == null)
            str4 = "nopass";
          localWifiParsedResult = new WifiParsedResult(str4, str2, str3);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.WifiResultParser
 * JD-Core Version:    0.6.2
 */