package com.google.zxing.client.result;

import com.google.zxing.Result;

public final class SMSTOMMSTOResultParser extends ResultParser
{
  public final SMSParsedResult parse(Result paramResult)
  {
    String str1 = paramResult.getText();
    SMSParsedResult localSMSParsedResult;
    if ((!str1.startsWith("smsto:")) && (!str1.startsWith("SMSTO:")) && (!str1.startsWith("mmsto:")))
    {
      boolean bool = str1.startsWith("MMSTO:");
      localSMSParsedResult = null;
      if (!bool)
        return localSMSParsedResult;
    }
    String str2 = str1.substring(6);
    int i = str2.indexOf(':');
    String str3;
    if (i >= 0)
    {
      str3 = str2.substring(i + 1);
      str2 = str2.substring(0, i);
    }
    while (true)
    {
      localSMSParsedResult = new SMSParsedResult(str2, null, null, str3);
      break;
      str3 = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.SMSTOMMSTOResultParser
 * JD-Core Version:    0.6.2
 */