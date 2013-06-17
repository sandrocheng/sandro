package com.google.zxing.qrcode.encoder;

import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;

public final class QRCode
{
  public static final int NUM_MASK_PATTERNS = 8;
  private ErrorCorrectionLevel ecLevel = null;
  private int maskPattern = -1;
  private ByteMatrix matrix = null;
  private int matrixWidth = -1;
  private Mode mode = null;
  private int numDataBytes = -1;
  private int numECBytes = -1;
  private int numRSBlocks = -1;
  private int numTotalBytes = -1;
  private int version = -1;

  public static boolean isValidMaskPattern(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < 8));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int at(int paramInt1, int paramInt2)
  {
    int i = this.matrix.get(paramInt1, paramInt2);
    if ((i != 0) && (i != 1))
      throw new IllegalStateException("Bad value");
    return i;
  }

  public ErrorCorrectionLevel getECLevel()
  {
    return this.ecLevel;
  }

  public int getMaskPattern()
  {
    return this.maskPattern;
  }

  public ByteMatrix getMatrix()
  {
    return this.matrix;
  }

  public int getMatrixWidth()
  {
    return this.matrixWidth;
  }

  public Mode getMode()
  {
    return this.mode;
  }

  public int getNumDataBytes()
  {
    return this.numDataBytes;
  }

  public int getNumECBytes()
  {
    return this.numECBytes;
  }

  public int getNumRSBlocks()
  {
    return this.numRSBlocks;
  }

  public int getNumTotalBytes()
  {
    return this.numTotalBytes;
  }

  public int getVersion()
  {
    return this.version;
  }

  public boolean isValid()
  {
    if ((this.mode != null) && (this.ecLevel != null) && (this.version != -1) && (this.matrixWidth != -1) && (this.maskPattern != -1) && (this.numTotalBytes != -1) && (this.numDataBytes != -1) && (this.numECBytes != -1) && (this.numRSBlocks != -1) && (isValidMaskPattern(this.maskPattern)) && (this.numTotalBytes == this.numDataBytes + this.numECBytes) && (this.matrix != null) && (this.matrixWidth == this.matrix.getWidth()) && (this.matrix.getWidth() == this.matrix.getHeight()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public void setECLevel(ErrorCorrectionLevel paramErrorCorrectionLevel)
  {
    this.ecLevel = paramErrorCorrectionLevel;
  }

  public void setMaskPattern(int paramInt)
  {
    this.maskPattern = paramInt;
  }

  public void setMatrix(ByteMatrix paramByteMatrix)
  {
    this.matrix = paramByteMatrix;
  }

  public void setMatrixWidth(int paramInt)
  {
    this.matrixWidth = paramInt;
  }

  public void setMode(Mode paramMode)
  {
    this.mode = paramMode;
  }

  public void setNumDataBytes(int paramInt)
  {
    this.numDataBytes = paramInt;
  }

  public void setNumECBytes(int paramInt)
  {
    this.numECBytes = paramInt;
  }

  public void setNumRSBlocks(int paramInt)
  {
    this.numRSBlocks = paramInt;
  }

  public void setNumTotalBytes(int paramInt)
  {
    this.numTotalBytes = paramInt;
  }

  public void setVersion(int paramInt)
  {
    this.version = paramInt;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(200);
    localStringBuilder.append("<<\n");
    localStringBuilder.append(" mode: ");
    localStringBuilder.append(this.mode);
    localStringBuilder.append("\n ecLevel: ");
    localStringBuilder.append(this.ecLevel);
    localStringBuilder.append("\n version: ");
    localStringBuilder.append(this.version);
    localStringBuilder.append("\n matrixWidth: ");
    localStringBuilder.append(this.matrixWidth);
    localStringBuilder.append("\n maskPattern: ");
    localStringBuilder.append(this.maskPattern);
    localStringBuilder.append("\n numTotalBytes: ");
    localStringBuilder.append(this.numTotalBytes);
    localStringBuilder.append("\n numDataBytes: ");
    localStringBuilder.append(this.numDataBytes);
    localStringBuilder.append("\n numECBytes: ");
    localStringBuilder.append(this.numECBytes);
    localStringBuilder.append("\n numRSBlocks: ");
    localStringBuilder.append(this.numRSBlocks);
    if (this.matrix == null)
      localStringBuilder.append("\n matrix: null\n");
    while (true)
    {
      localStringBuilder.append(">>\n");
      return localStringBuilder.toString();
      localStringBuilder.append("\n matrix:\n");
      localStringBuilder.append(this.matrix.toString());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.encoder.QRCode
 * JD-Core Version:    0.6.2
 */