package com.tencent.faceverify.util;

public class ImageInfo
{
  private byte[] data;
  private int height;
  private int imgLength;
  private int width;
  private int x1;
  private int x2;
  private int y1;
  private int y2;

  public ImageInfo(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, byte[] paramArrayOfByte)
  {
    this.x1 = paramInt1;
    this.y1 = paramInt2;
    this.x2 = paramInt3;
    this.y2 = paramInt4;
    this.width = paramInt5;
    this.height = paramInt6;
    this.imgLength = paramInt7;
    this.data = paramArrayOfByte;
  }

  public String getEncodedFaceInfo()
  {
    return this.x1 + "," + this.y1 + "," + this.x2 + "," + this.y2 + "," + this.width + "," + this.height + "," + this.imgLength;
  }

  public byte[] getEncodedImageData()
  {
    if (this.data == null);
    for (byte[] arrayOfByte = null; ; arrayOfByte = this.data)
      return arrayOfByte;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.faceverify.util.ImageInfo
 * JD-Core Version:    0.6.2
 */