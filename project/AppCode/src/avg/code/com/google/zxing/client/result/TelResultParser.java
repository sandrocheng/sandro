package com.google.zxing.client.result;

import com.google.zxing.Result;

public final class TelResultParser extends ResultParser
{
  public final TelParsedResult parse(Result paramResult)
  {
    String str1 = paramResult.getText();
    TelParsedResult localTelParsedResult;
    if ((!str1.startsWith("tel:")) && (!str1.startsWith("TEL:")))
    {
      localTelParsedResult = null;
      return localTelParsedResult;
    }
    String str2;
    label59: int i;
    if (str1.startsWith("TEL:"))
    {
      str2 = "tel:" + str1.substring(4);
      i = str1.indexOf('?', 4);
      if (i >= 0)
        break label101;
    }
    label101: for (String str3 = str1.substring(4); ; str3 = str1.substring(4, i))
    {
      localTelParsedResult = new TelParsedResult(str3, str2, null);
      break;
      str2 = str1;
      break label59;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.TelResultParser
 * JD-Core Version:    0.6.2
 */