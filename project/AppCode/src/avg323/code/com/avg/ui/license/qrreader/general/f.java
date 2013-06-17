package com.avg.ui.license.qrreader.general;

import android.content.Intent;
import com.google.zxing.BarcodeFormat;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

final class f
{
  static final Collection a;
  static final Collection b;
  static final Collection c;
  static final Collection d;
  private static final Pattern e = Pattern.compile(",");

  static
  {
    c = EnumSet.of(BarcodeFormat.QR_CODE);
    d = EnumSet.of(BarcodeFormat.DATA_MATRIX);
    a = EnumSet.of(BarcodeFormat.UPC_A, BarcodeFormat.UPC_E, BarcodeFormat.EAN_13, BarcodeFormat.EAN_8, BarcodeFormat.RSS_14);
    b = EnumSet.of(BarcodeFormat.CODE_39, BarcodeFormat.CODE_93, BarcodeFormat.CODE_128, BarcodeFormat.ITF);
    b.addAll(a);
  }

  static Collection a(Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("SCAN_FORMATS");
    List localList = null;
    if (str != null)
      localList = Arrays.asList(e.split(str));
    return a(localList, paramIntent.getStringExtra("SCAN_MODE"));
  }

  private static Collection a(Iterable paramIterable, String paramString)
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
      localObject = a;
    }
    while (true)
    {
      return localObject;
      localObject = localEnumSet;
      continue;
      label77: if ("QR_CODE_MODE".equals(paramString))
        localObject = c;
      else if ("DATA_MATRIX_MODE".equals(paramString))
        localObject = d;
      else if ("ONE_D_MODE".equals(paramString))
        localObject = b;
      else
        label125: localObject = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.qrreader.general.f
 * JD-Core Version:    0.6.2
 */