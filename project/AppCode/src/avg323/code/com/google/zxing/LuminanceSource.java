package com.google.zxing;

public abstract class LuminanceSource
{
  private final int height;
  private final int width;

  protected LuminanceSource(int paramInt1, int paramInt2)
  {
    this.width = paramInt1;
    this.height = paramInt2;
  }

  public LuminanceSource crop(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    throw new UnsupportedOperationException("This luminance source does not support cropping.");
  }

  public final int getHeight()
  {
    return this.height;
  }

  public abstract byte[] getMatrix();

  public abstract byte[] getRow(int paramInt, byte[] paramArrayOfByte);

  public final int getWidth()
  {
    return this.width;
  }

  public boolean isCropSupported()
  {
    return false;
  }

  public boolean isRotateSupported()
  {
    return false;
  }

  public LuminanceSource rotateCounterClockwise()
  {
    throw new UnsupportedOperationException("This luminance source does not support rotation.");
  }

  public String toString()
  {
    byte[] arrayOfByte1 = new byte[this.width];
    StringBuilder localStringBuilder = new StringBuilder(this.height * (1 + this.width));
    byte[] arrayOfByte2 = arrayOfByte1;
    int j;
    for (int i = 0; ; i++)
    {
      if (i >= this.height)
        return localStringBuilder.toString();
      arrayOfByte2 = getRow(i, arrayOfByte2);
      j = 0;
      if (j < this.width)
        break;
      localStringBuilder.append('\n');
    }
    int k = 0xFF & arrayOfByte2[j];
    char c;
    if (k < 64)
      c = '#';
    while (true)
    {
      localStringBuilder.append(c);
      j++;
      break;
      if (k < 128)
        c = '+';
      else if (k < 192)
        c = '.';
      else
        c = ' ';
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.LuminanceSource
 * JD-Core Version:    0.6.2
 */