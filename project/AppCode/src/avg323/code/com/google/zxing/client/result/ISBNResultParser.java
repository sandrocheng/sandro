package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;

public final class ISBNResultParser extends ResultParser
{
  public ISBNParsedResult parse(Result paramResult)
  {
    BarcodeFormat localBarcodeFormat1 = paramResult.getBarcodeFormat();
    BarcodeFormat localBarcodeFormat2 = BarcodeFormat.EAN_13;
    ISBNParsedResult localISBNParsedResult = null;
    if (localBarcodeFormat1 != localBarcodeFormat2);
    while (true)
    {
      return localISBNParsedResult;
      String str = paramResult.getText();
      int i = str.length();
      localISBNParsedResult = null;
      if (i == 13)
        if (!str.startsWith("978"))
        {
          boolean bool = str.startsWith("979");
          localISBNParsedResult = null;
          if (!bool);
        }
        else
        {
          localISBNParsedResult = new ISBNParsedResult(str);
        }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.ISBNResultParser
 * JD-Core Version:    0.6.2
 */