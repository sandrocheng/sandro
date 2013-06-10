package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.ArrayList;
import java.util.List;

public final class BizcardResultParser extends AbstractDoCoMoResultParser
{
  private static String buildName(String paramString1, String paramString2)
  {
    if (paramString1 == null);
    while (true)
    {
      return paramString2;
      if (paramString2 == null)
        paramString2 = paramString1;
      else
        paramString2 = paramString1 + ' ' + paramString2;
    }
  }

  private static String[] buildPhoneNumbers(String paramString1, String paramString2, String paramString3)
  {
    ArrayList localArrayList = new ArrayList(3);
    if (paramString1 != null)
      localArrayList.add(paramString1);
    if (paramString2 != null)
      localArrayList.add(paramString2);
    if (paramString3 != null)
      localArrayList.add(paramString3);
    int i = localArrayList.size();
    if (i == 0);
    for (String[] arrayOfString = null; ; arrayOfString = (String[])localArrayList.toArray(new String[i]))
      return arrayOfString;
  }

  public final AddressBookParsedResult parse(Result paramResult)
  {
    String str1 = paramResult.getText();
    if (!str1.startsWith("BIZCARD:"));
    String str2;
    String str3;
    String str4;
    String[] arrayOfString;
    String str5;
    String str6;
    String str7;
    String str8;
    for (AddressBookParsedResult localAddressBookParsedResult = null; ; localAddressBookParsedResult = new AddressBookParsedResult(maybeWrap(str2), null, buildPhoneNumbers(str5, str6, str7), null, maybeWrap(str8), null, null, null, arrayOfString, null, str4, null, str3, null))
    {
      return localAddressBookParsedResult;
      str2 = buildName(matchSingleDoCoMoPrefixedField("N:", str1, true), matchSingleDoCoMoPrefixedField("X:", str1, true));
      str3 = matchSingleDoCoMoPrefixedField("T:", str1, true);
      str4 = matchSingleDoCoMoPrefixedField("C:", str1, true);
      arrayOfString = matchDoCoMoPrefixedField("A:", str1, true);
      str5 = matchSingleDoCoMoPrefixedField("B:", str1, true);
      str6 = matchSingleDoCoMoPrefixedField("M:", str1, true);
      str7 = matchSingleDoCoMoPrefixedField("F:", str1, true);
      str8 = matchSingleDoCoMoPrefixedField("E:", str1, true);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.BizcardResultParser
 * JD-Core Version:    0.6.2
 */