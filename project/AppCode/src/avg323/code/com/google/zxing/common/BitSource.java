package com.google.zxing.common;

public final class BitSource
{
  private int bitOffset;
  private int byteOffset;
  private final byte[] bytes;

  public BitSource(byte[] paramArrayOfByte)
  {
    this.bytes = paramArrayOfByte;
  }

  public int available()
  {
    return 8 * (this.bytes.length - this.byteOffset) - this.bitOffset;
  }

  public int getByteOffset()
  {
    return this.byteOffset;
  }

  public int readBits(int paramInt)
  {
    if ((paramInt < 1) || (paramInt > 32))
      throw new IllegalArgumentException();
    int n;
    int i1;
    int j;
    int i;
    if (this.bitOffset > 0)
    {
      n = 8 - this.bitOffset;
      if (paramInt < n)
      {
        i1 = paramInt;
        int i2 = n - i1;
        int i3 = (255 >> 8 - i1 << i2 & this.bytes[this.byteOffset]) >> i2;
        int i4 = paramInt - i1;
        this.bitOffset = (i1 + this.bitOffset);
        if (this.bitOffset == 8)
        {
          this.bitOffset = 0;
          this.byteOffset = (1 + this.byteOffset);
        }
        j = i3;
        i = i4;
      }
    }
    while (true)
    {
      if (i > 0);
      while (true)
      {
        if (i < 8)
        {
          if (i > 0)
          {
            int k = 8 - i;
            int m = 255 >> k << k;
            j = j << i | (m & this.bytes[this.byteOffset]) >> k;
            this.bitOffset = (i + this.bitOffset);
          }
          return j;
          i1 = n;
          break;
        }
        j = j << 8 | 0xFF & this.bytes[this.byteOffset];
        this.byteOffset = (1 + this.byteOffset);
        i -= 8;
      }
      i = paramInt;
      j = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.common.BitSource
 * JD-Core Version:    0.6.2
 */