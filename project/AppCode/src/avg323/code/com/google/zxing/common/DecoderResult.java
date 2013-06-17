package com.google.zxing.common;

import java.util.List;

public final class DecoderResult
{
  private final List byteSegments;
  private final String ecLevel;
  private final byte[] rawBytes;
  private final String text;

  public DecoderResult(byte[] paramArrayOfByte, String paramString1, List paramList, String paramString2)
  {
    this.rawBytes = paramArrayOfByte;
    this.text = paramString1;
    this.byteSegments = paramList;
    this.ecLevel = paramString2;
  }

  public List getByteSegments()
  {
    return this.byteSegments;
  }

  public String getECLevel()
  {
    return this.ecLevel;
  }

  public byte[] getRawBytes()
  {
    return this.rawBytes;
  }

  public String getText()
  {
    return this.text;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.common.DecoderResult
 * JD-Core Version:    0.6.2
 */