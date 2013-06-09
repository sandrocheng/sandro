package com.google.zxing.client.result;

import com.google.zxing.Result;

public final class BookmarkDoCoMoResultParser extends AbstractDoCoMoResultParser
{
  public final URIParsedResult parse(Result paramResult)
  {
    String str1 = paramResult.getText();
    boolean bool1 = str1.startsWith("MEBKM:");
    URIParsedResult localURIParsedResult = null;
    if (!bool1);
    while (true)
    {
      return localURIParsedResult;
      String str2 = matchSingleDoCoMoPrefixedField("TITLE:", str1, true);
      String[] arrayOfString = matchDoCoMoPrefixedField("URL:", str1, true);
      localURIParsedResult = null;
      if (arrayOfString != null)
      {
        String str3 = arrayOfString[0];
        boolean bool2 = URIResultParser.isBasicallyValidURI(str3);
        localURIParsedResult = null;
        if (bool2)
          localURIParsedResult = new URIParsedResult(str3, str2);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.BookmarkDoCoMoResultParser
 * JD-Core Version:    0.6.2
 */