package org.antivirus.license.qrreader.general;

import android.content.Intent;
import android.net.Uri;
import com.google.zxing.BarcodeFormat;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

final class DecodeFormatManager
{
  private static final Pattern COMMA_PATTERN = Pattern.compile(",");
  static final Collection DATA_MATRIX_FORMATS;
  static final Collection ONE_D_FORMATS;
  static final Collection PRODUCT_FORMATS;
  static final Collection QR_CODE_FORMATS = EnumSet.of(BarcodeFormat.QR_CODE);

  static
  {
    DATA_MATRIX_FORMATS = EnumSet.of(BarcodeFormat.DATA_MATRIX);
    PRODUCT_FORMATS = EnumSet.of(BarcodeFormat.UPC_A, BarcodeFormat.UPC_E, BarcodeFormat.EAN_13, BarcodeFormat.EAN_8, BarcodeFormat.RSS_14);
    EnumSet localEnumSet = EnumSet.of(BarcodeFormat.CODE_39, BarcodeFormat.CODE_93, BarcodeFormat.CODE_128, BarcodeFormat.ITF);
    ONE_D_FORMATS = localEnumSet;
    localEnumSet.addAll(PRODUCT_FORMATS);
  }

  static Collection parseDecodeFormats(Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("SCAN_FORMATS");
    List localList = null;
    if (str != null)
      localList = Arrays.asList(COMMA_PATTERN.split(str));
    return parseDecodeFormats(localList, paramIntent.getStringExtra("SCAN_MODE"));
  }

  static Collection parseDecodeFormats(Uri paramUri)
  {
    List localList = paramUri.getQueryParameters("SCAN_FORMATS");
    if ((localList != null) && (localList.size() == 1) && (localList.get(0) != null))
      localList = Arrays.asList(COMMA_PATTERN.split((CharSequence)localList.get(0)));
    return parseDecodeFormats(localList, paramUri.getQueryParameter("SCAN_MODE"));
  }

  private static Collection parseDecodeFormats(Iterable paramIterable, String paramString)
  {
    EnumSet localEnumSet;
    Object localObject;
    if (paramIterable != null)
    {
      localEnumSet = EnumSet.noneOf(BarcodeFormat.class);
      try
      {
        Iterator localIterator = paramIterable.iterator();
        while (localIterator.hasNext())
          localEnumSet.add(BarcodeFormat.valueOf((String)localIterator.next()));
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
      }
    }
    else
    {
      if (paramString == null)
        break label125;
      if (!"PRODUCT_MODE".equals(paramString))
        break label77;
      localObject = PRODUCT_FORMATS;
    }
    while (true)
    {
      return localObject;
      localObject = localEnumSet;
      continue;
      label77: if ("QR_CODE_MODE".equals(paramString))
        localObject = QR_CODE_FORMATS;
      else if ("DATA_MATRIX_MODE".equals(paramString))
        localObject = DATA_MATRIX_FORMATS;
      else if ("ONE_D_MODE".equals(paramString))
        localObject = ONE_D_FORMATS;
      else
        label125: localObject = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.general.DecodeFormatManager
 * JD-Core Version:    0.6.2
 */