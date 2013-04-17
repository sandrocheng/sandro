package com.qq.taf.jce;

import java.io.PrintStream;

public class HexUtil
{
  private static final char[] digits = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  public static final byte[] emptybytes = new byte[0];

  public static String byte2HexStr(byte paramByte)
  {
    char[] arrayOfChar = new char[2];
    arrayOfChar[1] = digits[(paramByte & 0xF)];
    int i = (byte)(paramByte >>> 4);
    arrayOfChar[0] = digits[(i & 0xF)];
    return new String(arrayOfChar);
  }

  public static String bytes2HexStr(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0));
    char[] arrayOfChar;
    for (String str = null; ; str = new String(arrayOfChar))
    {
      return str;
      arrayOfChar = new char[2 * paramArrayOfByte.length];
      for (int i = 0; i < paramArrayOfByte.length; i++)
      {
        int j = paramArrayOfByte[i];
        arrayOfChar[(1 + i * 2)] = digits[(j & 0xF)];
        int k = (byte)(j >>> 4);
        arrayOfChar[(0 + i * 2)] = digits[(k & 0xF)];
      }
    }
  }

  public static byte char2Byte(char paramChar)
  {
    byte b;
    if ((paramChar >= '0') && (paramChar <= '9'))
      b = (byte)(paramChar - '0');
    while (true)
    {
      return b;
      if ((paramChar >= 'a') && (paramChar <= 'f'))
        b = (byte)(10 + (paramChar - 'a'));
      else if ((paramChar >= 'A') && (paramChar <= 'F'))
        b = (byte)(10 + (paramChar - 'A'));
      else
        b = 0;
    }
  }

  public static byte hexStr2Byte(String paramString)
  {
    byte b = 0;
    if (paramString != null)
    {
      int i = paramString.length();
      b = 0;
      if (i == 1)
        b = char2Byte(paramString.charAt(0));
    }
    return b;
  }

  public static byte[] hexStr2Bytes(String paramString)
  {
    byte[] arrayOfByte;
    if ((paramString == null) || (paramString.equals("")))
      arrayOfByte = emptybytes;
    while (true)
    {
      return arrayOfByte;
      arrayOfByte = new byte[paramString.length() / 2];
      for (int i = 0; i < arrayOfByte.length; i++)
      {
        char c1 = paramString.charAt(i * 2);
        char c2 = paramString.charAt(1 + i * 2);
        arrayOfByte[i] = ((byte)(16 * char2Byte(c1) + char2Byte(c2)));
      }
    }
  }

  public static void main(String[] paramArrayOfString)
  {
    long l = System.currentTimeMillis();
    for (int i = 0; i < 1000000; i++)
    {
      String str = "234" + i;
      if (!new String(hexStr2Bytes(bytes2HexStr(str.getBytes()))).equals(str))
        System.out.println("error:" + str);
    }
    System.out.println("use:" + (System.currentTimeMillis() - l));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.qq.taf.jce.HexUtil
 * JD-Core Version:    0.6.2
 */