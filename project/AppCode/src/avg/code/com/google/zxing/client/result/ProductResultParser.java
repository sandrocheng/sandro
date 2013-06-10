package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;

public final class ProductResultParser extends ResultParser
{
  public final ProductParsedResult parse(Result paramResult)
  {
    BarcodeFormat localBarcodeFormat1 = paramResult.getBarcodeFormat();
    ProductParsedResult localProductParsedResult;
    if ((localBarcodeFormat1 != BarcodeFormat.UPC_A) && (localBarcodeFormat1 != BarcodeFormat.UPC_E) && (localBarcodeFormat1 != BarcodeFormat.EAN_8))
    {
      BarcodeFormat localBarcodeFormat2 = BarcodeFormat.EAN_13;
      localProductParsedResult = null;
      if (localBarcodeFormat1 != localBarcodeFormat2)
        return localProductParsedResult;
    }
    String str = paramResult.getText();
    int i = str.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
      {
        localProductParsedResult = new ProductParsedResult(str, str);
        break;
      }
      int k = str.charAt(j);
      localProductParsedResult = null;
      if (k < 48)
        break;
      localProductParsedResult = null;
      if (k > 57)
        break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.ProductResultParser
 * JD-Core Version:    0.6.2
 */