package com.google.zxing.client.result;

import com.google.zxing.Result;

public final class SMTPResultParser extends ResultParser
{
  public final EmailAddressParsedResult parse(Result paramResult)
  {
    String str1 = paramResult.getText();
    EmailAddressParsedResult localEmailAddressParsedResult;
    if (!str1.startsWith("smtp:"))
    {
      boolean bool = str1.startsWith("SMTP:");
      localEmailAddressParsedResult = null;
      if (!bool)
        return localEmailAddressParsedResult;
    }
    String str2 = str1.substring(5);
    int i = str2.indexOf(':');
    int j;
    String str3;
    if (i >= 0)
    {
      str4 = str2.substring(i + 1);
      str2 = str2.substring(0, i);
      j = str4.indexOf(':');
      str3 = null;
      if (j >= 0)
        str3 = str4.substring(j + 1);
    }
    for (String str4 = str4.substring(0, j); ; str4 = null)
    {
      localEmailAddressParsedResult = new EmailAddressParsedResult(str2, str4, str3, "mailto:" + str2);
      break;
      str3 = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.SMTPResultParser
 * JD-Core Version:    0.6.2
 */