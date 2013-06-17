package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public final class SMSMMSResultParser extends ResultParser
{
  private static void addNumberVia(Collection paramCollection1, Collection paramCollection2, String paramString)
  {
    int i = paramString.indexOf(';');
    if (i < 0)
    {
      paramCollection1.add(paramString);
      paramCollection2.add(null);
    }
    while (true)
    {
      return;
      paramCollection1.add(paramString.substring(0, i));
      String str1 = paramString.substring(i + 1);
      boolean bool = str1.startsWith("via=");
      String str2 = null;
      if (bool)
        str2 = str1.substring(4);
      paramCollection2.add(str2);
    }
  }

  public SMSParsedResult parse(Result paramResult)
  {
    String str1 = paramResult.getText();
    SMSParsedResult localSMSParsedResult;
    if ((!str1.startsWith("sms:")) && (!str1.startsWith("SMS:")) && (!str1.startsWith("mms:")))
    {
      boolean bool = str1.startsWith("MMS:");
      localSMSParsedResult = null;
      if (!bool)
        return localSMSParsedResult;
    }
    Map localMap = parseNameValuePairs(str1);
    String str2;
    String str3;
    int i;
    if ((localMap != null) && (!localMap.isEmpty()))
    {
      String str5 = (String)localMap.get("subject");
      str2 = (String)localMap.get("body");
      str3 = str5;
      i = 1;
    }
    while (true)
    {
      int j = str1.indexOf('?', 4);
      String str4;
      label128: int k;
      ArrayList localArrayList1;
      ArrayList localArrayList2;
      if ((j < 0) || (i == 0))
      {
        str4 = str1.substring(4);
        k = -1;
        localArrayList1 = new ArrayList(1);
        localArrayList2 = new ArrayList(1);
      }
      while (true)
      {
        int m = str4.indexOf(',', k + 1);
        if (m <= k)
        {
          addNumberVia(localArrayList1, localArrayList2, str4.substring(k + 1));
          localSMSParsedResult = new SMSParsedResult((String[])localArrayList1.toArray(new String[localArrayList1.size()]), (String[])localArrayList2.toArray(new String[localArrayList2.size()]), str3, str2);
          break;
          str4 = str1.substring(4, j);
          break label128;
        }
        addNumberVia(localArrayList1, localArrayList2, str4.substring(k + 1, m));
        k = m;
      }
      i = 0;
      str2 = null;
      str3 = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.SMSMMSResultParser
 * JD-Core Version:    0.6.2
 */