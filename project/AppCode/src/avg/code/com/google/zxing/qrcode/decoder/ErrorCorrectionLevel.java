package com.google.zxing.qrcode.decoder;

public enum ErrorCorrectionLevel
{
  private static final ErrorCorrectionLevel[] FOR_BITS = arrayOfErrorCorrectionLevel2;
  private final int bits;

  static
  {
    H = new ErrorCorrectionLevel("H", 3, 2);
    ErrorCorrectionLevel[] arrayOfErrorCorrectionLevel1 = new ErrorCorrectionLevel[4];
    arrayOfErrorCorrectionLevel1[0] = L;
    arrayOfErrorCorrectionLevel1[1] = M;
    arrayOfErrorCorrectionLevel1[2] = Q;
    arrayOfErrorCorrectionLevel1[3] = H;
    ENUM$VALUES = arrayOfErrorCorrectionLevel1;
    ErrorCorrectionLevel[] arrayOfErrorCorrectionLevel2 = new ErrorCorrectionLevel[4];
    arrayOfErrorCorrectionLevel2[0] = M;
    arrayOfErrorCorrectionLevel2[1] = L;
    arrayOfErrorCorrectionLevel2[2] = H;
    arrayOfErrorCorrectionLevel2[3] = Q;
  }

  private ErrorCorrectionLevel(int arg3)
  {
    int j;
    this.bits = j;
  }

  public static ErrorCorrectionLevel forBits(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= FOR_BITS.length))
      throw new IllegalArgumentException();
    return FOR_BITS[paramInt];
  }

  public final int getBits()
  {
    return this.bits;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.ErrorCorrectionLevel
 * JD-Core Version:    0.6.2
 */