package com.tencent.faceverify.util;

public class FaceLib
{
  static
  {
    System.loadLibrary("FaceVerify");
  }

  public static native int faceDetect(byte[] paramArrayOfByte, int paramInt1, int paramInt2, Class<FaceLoc> paramClass, Class<EyeInfo> paramClass1, boolean paramBoolean);

  public static native int faceImgCut(int[] paramArrayOfInt, int paramInt1, int paramInt2, Class<ImageSize> paramClass, Class<FaceLoc> paramClass1, Class<EyeInfo> paramClass2);

  public static native int faceInit();

  public static native int faceRelease();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.faceverify.util.FaceLib
 * JD-Core Version:    0.6.2
 */