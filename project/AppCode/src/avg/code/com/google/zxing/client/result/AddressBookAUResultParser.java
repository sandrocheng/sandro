package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.ArrayList;
import java.util.List;

public final class AddressBookAUResultParser extends ResultParser
{
  private static String[] matchMultipleValuePrefix(String paramString1, int paramInt, String paramString2, boolean paramBoolean)
  {
    int i = 1;
    ArrayList localArrayList = null;
    if (i > paramInt)
      label12: if (localArrayList != null)
        break label92;
    label92: for (String[] arrayOfString = null; ; arrayOfString = (String[])localArrayList.toArray(new String[localArrayList.size()]))
    {
      return arrayOfString;
      String str = matchSinglePrefixedField(paramString1 + i + ':', paramString2, '\r', paramBoolean);
      if (str == null)
        break label12;
      if (localArrayList == null)
        localArrayList = new ArrayList(paramInt);
      localArrayList.add(str);
      i++;
      break;
    }
  }

  public final AddressBookParsedResult parse(Result paramResult)
  {
    String str1 = paramResult.getText();
    AddressBookParsedResult localAddressBookParsedResult;
    if ((!str1.contains("MEMORY")) || (!str1.contains("\r\n")))
    {
      localAddressBookParsedResult = null;
      return localAddressBookParsedResult;
    }
    String str2 = matchSinglePrefixedField("NAME1:", str1, '\r', true);
    String str3 = matchSinglePrefixedField("NAME2:", str1, '\r', true);
    String[] arrayOfString1 = matchMultipleValuePrefix("TEL", 3, str1, true);
    String[] arrayOfString2 = matchMultipleValuePrefix("MAIL", 3, str1, true);
    String str4 = matchSinglePrefixedField("MEMORY:", str1, '\r', false);
    String str5 = matchSinglePrefixedField("ADD:", str1, '\r', true);
    if (str5 == null);
    for (String[] arrayOfString3 = null; ; arrayOfString3 = new String[] { str5 })
    {
      localAddressBookParsedResult = new AddressBookParsedResult(maybeWrap(str2), str3, arrayOfString1, null, arrayOfString2, null, null, str4, arrayOfString3, null, null, null, null, null);
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.AddressBookAUResultParser
 * JD-Core Version:    0.6.2
 */