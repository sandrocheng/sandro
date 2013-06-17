package com.google.zxing.qrcode.decoder;

public final class Version$ECBlocks
{
  private final Version.ECB[] ecBlocks;
  private final int ecCodewordsPerBlock;

  Version$ECBlocks(int paramInt, Version.ECB[] paramArrayOfECB)
  {
    this.ecCodewordsPerBlock = paramInt;
    this.ecBlocks = paramArrayOfECB;
  }

  public Version.ECB[] getECBlocks()
  {
    return this.ecBlocks;
  }

  public int getECCodewordsPerBlock()
  {
    return this.ecCodewordsPerBlock;
  }

  public int getNumBlocks()
  {
    int i = 0;
    Version.ECB[] arrayOfECB = this.ecBlocks;
    int j = arrayOfECB.length;
    int k = 0;
    while (true)
    {
      if (i >= j)
        return k;
      k += arrayOfECB[i].getCount();
      i++;
    }
  }

  public int getTotalECCodewords()
  {
    return this.ecCodewordsPerBlock * getNumBlocks();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.Version.ECBlocks
 * JD-Core Version:    0.6.2
 */