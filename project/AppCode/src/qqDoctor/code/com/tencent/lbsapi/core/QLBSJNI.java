package com.tencent.lbsapi.core;

import java.security.MessageDigest;

public class QLBSJNI
{
  static
  {
    System.loadLibrary("lbs");
  }

  public static byte[] md5String(String paramString)
  {
    try
    {
      byte[] arrayOfByte2 = paramString.getBytes();
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(arrayOfByte2);
      byte[] arrayOfByte3 = localMessageDigest.digest();
      arrayOfByte1 = arrayOfByte3;
      return arrayOfByte1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        byte[] arrayOfByte1 = null;
      }
    }
  }

  public native byte[] decode(byte[] paramArrayOfByte, String paramString1, String paramString2);

  public native byte[] encode(byte[] paramArrayOfByte, String paramString1, String paramString2);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.lbsapi.core.QLBSJNI
 * JD-Core Version:    0.6.2
 */