package com.google.zxing.multi;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import java.util.Map;

public final class ByQuadrantReader
  implements Reader
{
  private final Reader delegate;

  public ByQuadrantReader(Reader paramReader)
  {
    this.delegate = paramReader;
  }

  public final Result decode(BinaryBitmap paramBinaryBitmap)
  {
    return decode(paramBinaryBitmap, null);
  }

  public final Result decode(BinaryBitmap paramBinaryBitmap, Map paramMap)
  {
    int i = paramBinaryBitmap.getWidth();
    int j = paramBinaryBitmap.getHeight();
    int k = i / 2;
    int m = j / 2;
    BinaryBitmap localBinaryBitmap1 = paramBinaryBitmap.crop(0, 0, k, m);
    try
    {
      Result localResult4 = this.delegate.decode(localBinaryBitmap1, paramMap);
      localObject = localResult4;
      return localObject;
    }
    catch (NotFoundException localNotFoundException1)
    {
      while (true)
      {
        Object localObject;
        BinaryBitmap localBinaryBitmap2 = paramBinaryBitmap.crop(k, 0, k, m);
        try
        {
          Result localResult3 = this.delegate.decode(localBinaryBitmap2, paramMap);
          localObject = localResult3;
        }
        catch (NotFoundException localNotFoundException2)
        {
          BinaryBitmap localBinaryBitmap3 = paramBinaryBitmap.crop(0, m, k, m);
          try
          {
            Result localResult2 = this.delegate.decode(localBinaryBitmap3, paramMap);
            localObject = localResult2;
          }
          catch (NotFoundException localNotFoundException3)
          {
            BinaryBitmap localBinaryBitmap4 = paramBinaryBitmap.crop(k, m, k, m);
            try
            {
              Result localResult1 = this.delegate.decode(localBinaryBitmap4, paramMap);
              localObject = localResult1;
            }
            catch (NotFoundException localNotFoundException4)
            {
              BinaryBitmap localBinaryBitmap5 = paramBinaryBitmap.crop(k / 2, m / 2, k, m);
              localObject = this.delegate.decode(localBinaryBitmap5, paramMap);
            }
          }
        }
      }
    }
  }

  public final void reset()
  {
    this.delegate.reset();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.multi.ByQuadrantReader
 * JD-Core Version:    0.6.2
 */