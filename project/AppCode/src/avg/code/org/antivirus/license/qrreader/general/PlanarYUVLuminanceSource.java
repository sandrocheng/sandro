package org.antivirus.license.qrreader.general;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import com.google.zxing.LuminanceSource;

public final class PlanarYUVLuminanceSource extends LuminanceSource
{
  private final int dataHeight;
  private final int dataWidth;
  private final int left;
  private final int top;
  private final byte[] yuvData;

  public PlanarYUVLuminanceSource(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, boolean paramBoolean)
  {
    super(paramInt5, paramInt6);
    if ((paramInt3 + paramInt5 > paramInt1) || (paramInt4 + paramInt6 > paramInt2))
      throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
    this.yuvData = paramArrayOfByte;
    this.dataWidth = paramInt1;
    this.dataHeight = paramInt2;
    this.left = paramInt3;
    this.top = paramInt4;
    if (paramBoolean)
      reverseHorizontal(paramInt5, paramInt6);
  }

  private void reverseHorizontal(int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = this.yuvData;
    int i = this.top * this.dataWidth + this.left;
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
      i += this.dataWidth;
    }
  }

  public final byte[] getMatrix()
  {
    int i = 0;
    int j = getWidth();
    int k = getHeight();
    byte[] arrayOfByte1;
    if ((j == this.dataWidth) && (k == this.dataHeight))
      arrayOfByte1 = this.yuvData;
    while (true)
    {
      return arrayOfByte1;
      int m = j * k;
      arrayOfByte1 = new byte[m];
      int n = this.top * this.dataWidth + this.left;
      if (j == this.dataWidth)
      {
        System.arraycopy(this.yuvData, n, arrayOfByte1, 0, m);
      }
      else
      {
        byte[] arrayOfByte2 = this.yuvData;
        while (i < k)
        {
          System.arraycopy(arrayOfByte2, n, arrayOfByte1, i * j, j);
          n += this.dataWidth;
          i++;
        }
      }
    }
  }

  public final byte[] getRow(int paramInt, byte[] paramArrayOfByte)
  {
    if ((paramInt < 0) || (paramInt >= getHeight()))
      throw new IllegalArgumentException("Requested row is outside the image: " + paramInt);
    int i = getWidth();
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length < i))
      paramArrayOfByte = new byte[i];
    int j = (paramInt + this.top) * this.dataWidth + this.left;
    System.arraycopy(this.yuvData, j, paramArrayOfByte, 0, i);
    return paramArrayOfByte;
  }

  public final boolean isCropSupported()
  {
    return true;
  }

  public final Bitmap renderCroppedGreyscaleBitmap()
  {
    int i = getWidth();
    int j = getHeight();
    int[] arrayOfInt = new int[i * j];
    byte[] arrayOfByte = this.yuvData;
    int k = this.top * this.dataWidth + this.left;
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
      n += this.dataWidth;
      m++;
    }
    Bitmap localBitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    localBitmap.setPixels(arrayOfInt, 0, i, 0, 0, i, j);
    return localBitmap;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.general.PlanarYUVLuminanceSource
 * JD-Core Version:    0.6.2
 */