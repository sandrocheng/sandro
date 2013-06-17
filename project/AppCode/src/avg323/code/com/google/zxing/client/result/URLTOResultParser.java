package com.google.zxing.client.result;

import com.google.zxing.Result;

public final class URLTOResultParser extends ResultParser
{
  public URIParsedResult parse(Result paramResult)
  {
    String str1 = paramResult.getText();
    URIParsedResult localURIParsedResult;
    if (!str1.startsWith("urlto:"))
    {
      boolean bool = str1.startsWith("URLTO:");
      localURIParsedResult = null;
      if (bool);
    }
    int i;
    do
    {
      return localURIParsedResult;
      i = str1.indexOf(':', 6);
      localURIParsedResult = null;
    }
    while (i < 0);
    String str2 = null;
    if (i <= 6);
    while (true)
    {
      localURIParsedResult = new URIParsedResult(str1.substring(i + 1), str2);
      break;
      str2 = str1.substring(6, i);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.URLTOResultParser
 * JD-Core Version:    0.6.2
 */