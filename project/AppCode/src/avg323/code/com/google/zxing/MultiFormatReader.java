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

  public Result decode(BinaryBitmap paramBinaryBitmap)
  {
    setHints(null);
    return decodeInternal(paramBinaryBitmap);
  }

  public Result decode(BinaryBitmap paramBinaryBitmap, Map paramMap)
  {
    setHints(paramMap);
    return decodeInternal(paramBinaryBitmap);
  }

  public Result decodeWithState(BinaryBitmap paramBinaryBitmap)
  {
    if (this.readers == null)
      setHints(null);
    return decodeInternal(paramBinaryBitmap);
  }

  public void reset()
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

  public void setHints(Map paramMap)
  {
    this.hints = paramMap;
    Collection localCollection;
    ArrayList localArrayList;
    if (((paramMap == null) || (!paramMap.containsKey(DecodeHintType.TRY_HARDER))) || (paramMap == null))
    {
      localCollection = null;
      localArrayList = new ArrayList();
      if (localCollection != null)
        if ((localCollection.contains(BarcodeFormat.UPC_A)) || (localCollection.contains(BarcodeFormat.UPC_E)) || (localCollection.contains(BarcodeFormat.EAN_13)) || (localCollection.contains(BarcodeFormat.EAN_8)) || (localCollection.contains(BarcodeFormat.CODE_39)) || (localCollection.contains(BarcodeFormat.CODE_93)) || (localCollection.contains(BarcodeFormat.CODE_128)) || (localCollection.contains(BarcodeFormat.ITF)) || (localCollection.contains(BarcodeFormat.RSS_14)) || (localCollection.contains(BarcodeFormat.RSS_EXPANDED)))
          break label260;
    }
    label260: for (int i = 0; ; i = 1)
    {
      if ((i == 0) || (localCollection.contains(BarcodeFormat.QR_CODE)))
        localArrayList.add(new QRCodeReader());
      if (i != 0);
      if (localArrayList.isEmpty())
        localArrayList.add(new QRCodeReader());
      this.readers = ((Reader[])localArrayList.toArray(new Reader[localArrayList.size()]));
      return;
      localCollection = (Collection)paramMap.get(DecodeHintType.POSSIBLE_FORMATS);
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.MultiFormatReader
 * JD-Core Version:    0.6.2
 */