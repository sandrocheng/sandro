package com.google.zxing.client.result;

import com.google.zxing.Result;

public final class AddressBookDoCoMoResultParser extends AbstractDoCoMoResultParser
{
  private static String parseName(String paramString)
  {
    int i = paramString.indexOf(',');
    if (i >= 0)
      paramString = paramString.substring(i + 1) + ' ' + paramString.substring(0, i);
    return paramString;
  }

  public final AddressBookParsedResult parse(Result paramResult)
  {
    String str1 = paramResult.getText();
    AddressBookParsedResult localAddressBookParsedResult;
    if (!str1.startsWith("MECARD:"))
      localAddressBookParsedResult = null;
    while (true)
    {
      return localAddressBookParsedResult;
      String[] arrayOfString1 = matchDoCoMoPrefixedField("N:", str1, true);
      if (arrayOfString1 == null)
      {
        localAddressBookParsedResult = null;
      }
      else
      {
        String str2 = parseName(arrayOfString1[0]);
        String str3 = matchSingleDoCoMoPrefixedField("SOUND:", str1, true);
        String[] arrayOfString2 = matchDoCoMoPrefixedField("TEL:", str1, true);
        String[] arrayOfString3 = matchDoCoMoPrefixedField("EMAIL:", str1, true);
        String str4 = matchSingleDoCoMoPrefixedField("NOTE:", str1, false);
        String[] arrayOfString4 = matchDoCoMoPrefixedField("ADR:", str1, true);
        String str5 = matchSingleDoCoMoPrefixedField("BDAY:", str1, true);
        if ((str5 != null) && (!isStringOfDigits(str5, 8)))
          str5 = null;
        String str6 = matchSingleDoCoMoPrefixedField("URL:", str1, true);
        String str7 = matchSingleDoCoMoPrefixedField("ORG:", str1, true);
        localAddressBookParsedResult = new AddressBookParsedResult(maybeWrap(str2), str3, arrayOfString2, null, arrayOfString3, null, null, str4, arrayOfString4, null, str7, str5, null, str6);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.AddressBookDoCoMoResultParser
 * JD-Core Version:    0.6.2
 */