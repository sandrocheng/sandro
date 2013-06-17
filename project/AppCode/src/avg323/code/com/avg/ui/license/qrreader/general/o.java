package com.avg.ui.license.qrreader.general;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import com.google.zxing.LuminanceSource;

public final class o extends LuminanceSource
{
  private final byte[] a;
  private final int b;
  private final int c;
  private final int d;
  private final int e;

  public o(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, boolean paramBoolean)
  {
    super(paramInt5, paramInt6);
    if ((paramInt3 + paramInt5 > paramInt1) || (paramInt4 + paramInt6 > paramInt2))
      throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
    this.a = paramArrayOfByte;
    this.b = paramInt1;
    this.c = paramInt2;
    this.d = paramInt3;
    this.e = paramInt4;
    if (paramBoolean)
      a(paramInt5, paramInt6);
  }

  private void a(int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = this.a;
    int i = this.e * this.b + this.d;
    int i1;
    for (int j = 0; j < paramInt2; j = i1)
    {
      int k = i + paramInt1 / 2;
      int m = -1 + (i + paramInt1);
      int n = i;
      while (n < k)
      {
        int i2 = arrayOfByte[n];
        arrayOfByte[n] = arrayOfByte[m];
        arrayOfByte[m] = i2;
        n++;
        m--;
      }
      i1 = j + 1;
      i += this.b;
    }
  }

  public Bitmap a()
  {
    int i = getWidth();
    int j = getHeight();
    int[] arrayOfInt = new int[i * j];
    byte[] arrayOfByte = this.a;
    int k = this.e * this.b + this.d;
    int m = 0;
    int n = k;
    while (m < j)
    {
      int i1 = m * i;
      for (int i2 = 0; i2 < i; i2++)
      {
        int i3 = 0xFF & arrayOfByte[(n + i2)];
        arrayOfInt[(i1 + i2)] = (0xFF000000 | i3 * 65793);
      }
      n += this.b;
      m++;
    }
    Bitmap localBitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    localBitmap.setPixels(arrayOfInt, 0, i, 0, 0, i, j);
    return localBitmap;
  }

  public byte[] getMatrix()
  {
    int i = 0;
    int j = getWidth();
    int k = getHeight();
    byte[] arrayOfByte1;
    if ((j == this.b) && (k == this.c))
      arrayOfByte1 = this.a;
    while (true)
    {
      return arrayOfByte1;
      int m = j * k;
      arrayOfByte1 = new byte[m];
      int n = this.e * this.b + this.d;
      if (j == this.b)
      {
        System.arraycopy(this.a, n, arrayOfByte1, 0, m);
      }
      else
      {
        byte[] arrayOfByte2 = this.a;
        while (i < k)
        {
          System.arraycopy(arrayOfByte2, n, arrayOfByte1, i * j, j);
          n += this.b;
          i++;
        }
      }
    }
  }

  public byte[] getRow(int paramInt, byte[] paramArrayOfByte)
  {
    if ((paramInt < 0) || (paramInt >= getHeight()))
      throw new IllegalArgumentException("Requested row is outside the image: " + paramInt);
    int i = getWidth();
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length < i))
      paramArrayOfByte = new byte[i];
    int j = (paramInt + this.e) * this.b + this.d;
    System.arraycopy(this.a, j, paramArrayOfByte, 0, i);
    return paramArrayOfByte;
  }

  public boolean isCropSupported()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.qrreader.general.o
 * JD-Core Version:    0.6.2
 */