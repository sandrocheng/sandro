package com.google.zxing;

import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import java.util.Map;

public final class MultiFormatWriter
  implements Writer
{
  public final BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2)
  {
    return encode(paramString, paramBarcodeFormat, paramInt1, paramInt2, null);
  }

  public final BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2, Map paramMap)
  {
    switch ($SWITCH_TABLE$com$google$zxing$BarcodeFormat()[paramBarcodeFormat.ordinal()])
    {
    default:
      throw new IllegalArgumentException("No encoder available for format " + paramBarcodeFormat);
    case 12:
    }
    return new QRCodeWriter().encode(paramString, paramBarcodeFormat, paramInt1, paramInt2, paramMap);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.MultiFormatWriter
 * JD-Core Version:    0.6.2
 */