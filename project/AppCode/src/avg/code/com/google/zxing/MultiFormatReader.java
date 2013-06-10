package com.google.zxing;

import com.google.zxing.qrcode.QRCodeReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

public final class MultiFormatReader
  implements Reader
{
  private Map hints;
  private Reader[] readers;

  private Result decodeInternal(BinaryBitmap paramBinaryBitmap)
  {
    Reader[] arrayOfReader;
    int i;
    int j;
    if (this.readers != null)
    {
      arrayOfReader = this.readers;
      i = arrayOfReader.length;
      j = 0;
    }
    while (true)
    {
      if (j >= i)
        throw NotFoundException.getNotFoundInstance();
      Reader localReader = arrayOfReader[j];
      try
      {
        Result localResult = localReader.decode(paramBinaryBitmap, this.hints);
        return localResult;
      }
      catch (ReaderException localReaderException)
      {
        j++;
      }
    }
  }

  public final Result decode(BinaryBitmap paramBinaryBitmap)
  {
    setHints(null);
    return decodeInternal(paramBinaryBitmap);
  }

  public final Result decode(BinaryBitmap paramBinaryBitmap, Map paramMap)
  {
    setHints(paramMap);
    return decodeInternal(paramBinaryBitmap);
  }

  public final Result decodeWithState(BinaryBitmap paramBinaryBitmap)
  {
    if (this.readers == null)
      setHints(null);
    return decodeInternal(paramBinaryBitmap);
  }

  public final void reset()
  {
    Reader[] arrayOfReader;
    int i;
    if (this.readers != null)
    {
      arrayOfReader = this.readers;
      i = arrayOfReader.length;
    }
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      arrayOfReader[j].reset();
    }
  }

  public final void setHints(Map paramMap)
  {
    this.hints = paramMap;
    if (paramMap != null)
      paramMap.containsKey(DecodeHintType.TRY_HARDER);
    if (paramMap == null);
    for (Collection localCollection = null; ; localCollection = (Collection)paramMap.get(DecodeHintType.POSSIBLE_FORMATS))
    {
      ArrayList localArrayList = new ArrayList();
      if (localCollection != null)
      {
        if ((!localCollection.contains(BarcodeFormat.UPC_A)) && (!localCollection.contains(BarcodeFormat.UPC_E)) && (!localCollection.contains(BarcodeFormat.EAN_13)) && (!localCollection.contains(BarcodeFormat.EAN_8)) && (!localCollection.contains(BarcodeFormat.CODE_39)) && (!localCollection.contains(BarcodeFormat.CODE_93)) && (!localCollection.contains(BarcodeFormat.CODE_128)) && (!localCollection.contains(BarcodeFormat.ITF)) && (!localCollection.contains(BarcodeFormat.RSS_14)))
          localCollection.contains(BarcodeFormat.RSS_EXPANDED);
        if (localCollection.contains(BarcodeFormat.QR_CODE))
          localArrayList.add(new QRCodeReader());
      }
      if (localArrayList.isEmpty())
        localArrayList.add(new QRCodeReader());
      this.readers = ((Reader[])localArrayList.toArray(new Reader[localArrayList.size()]));
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.MultiFormatReader
 * JD-Core Version:    0.6.2
 */