package com.tencent.tmsecure.utils;

import java.io.UnsupportedEncodingException;

public class StringUtil
{
  public static String assertNotNullString(String paramString)
  {
    if (paramString == null)
      paramString = "";
    return paramString;
  }

  public static final String bytesToHexString(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer(paramArrayOfByte.length);
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfByte.length)
        return localStringBuffer.toString();
      String str = Integer.toHexString(0xFF & paramArrayOfByte[i]);
      if (str.length() < 2)
        localStringBuffer.append(0);
      localStringBuffer.append(str.toUpperCase());
    }
  }

  public static byte[] getBytes(String paramString)
  {
    try
    {
      byte[] arrayOfByte2 = paramString.getBytes("iso-8859-1");
      arrayOfByte1 = arrayOfByte2;
      return arrayOfByte1;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
        byte[] arrayOfByte1 = new byte[0];
    }
  }

  public static byte[] hexStringToByte(String paramString)
  {
    int i = paramString.length() / 2;
    byte[] arrayOfByte = new byte[i];
    char[] arrayOfChar = paramString.toCharArray();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return arrayOfByte;
      int k = j << 1;
      arrayOfByte[j] = ((byte)((byte)"0123456789ABCDEF".indexOf(arrayOfChar[k]) << 4 | (byte)"0123456789ABCDEF".indexOf(arrayOfChar[(k + 1)])));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.utils.StringUtil
 * JD-Core Version:    0.6.2
 */