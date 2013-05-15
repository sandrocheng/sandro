package com.avast.android.mobilesecurity.engine.internal;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;

public class f
{
  public static String a(g paramg, File paramFile, int paramInt)
  {
    byte[] arrayOfByte = a(paramg, paramFile);
    if (arrayOfByte == null);
    for (String str = null; ; str = a(a(arrayOfByte), paramInt))
      return str;
  }

  public static String a(g paramg, InputStream paramInputStream, int paramInt)
  {
    byte[] arrayOfByte = a(paramg, paramInputStream);
    if (arrayOfByte == null);
    for (String str = null; ; str = a(a(arrayOfByte), paramInt))
      return str;
  }

  public static String a(g paramg, String paramString, int paramInt)
  {
    byte[] arrayOfByte = a(paramg, paramString);
    if (arrayOfByte == null);
    for (String str = null; ; str = a(a(arrayOfByte), paramInt))
      return str;
  }

  private static String a(String paramString, int paramInt)
  {
    if (paramString == null)
      paramString = null;
    while (true)
    {
      return paramString;
      while (paramString.length() < paramInt)
        paramString = "0" + paramString;
    }
  }

  public static String a(byte[] paramArrayOfByte)
  {
    String str;
    if (paramArrayOfByte == null)
      str = null;
    while (true)
    {
      return str;
      str = "";
      for (int i = 0; i < paramArrayOfByte.length; i++)
        str = str + Integer.toString(256 + (0xFF & paramArrayOfByte[i]), 16).substring(1);
    }
  }

  public static byte[] a(g paramg, File paramFile)
  {
    Object localObject = null;
    if (paramFile == null);
    while (true)
    {
      return localObject;
      try
      {
        MessageDigest localMessageDigest = MessageDigest.getInstance(paramg.toString());
        FileInputStream localFileInputStream = new FileInputStream(paramFile);
        byte[] arrayOfByte1 = new byte[1024];
        while (true)
        {
          int i = localFileInputStream.read(arrayOfByte1);
          if (i == -1)
            break;
          localMessageDigest.update(arrayOfByte1, 0, i);
        }
        byte[] arrayOfByte2 = localMessageDigest.digest();
        localObject = arrayOfByte2;
      }
      catch (IOException localIOException)
      {
        localObject = null;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        localObject = null;
      }
    }
  }

  public static byte[] a(g paramg, InputStream paramInputStream)
  {
    Object localObject = null;
    if (paramInputStream == null);
    while (true)
    {
      return localObject;
      try
      {
        MessageDigest localMessageDigest = MessageDigest.getInstance(paramg.toString());
        byte[] arrayOfByte1 = new byte[1024];
        while (true)
        {
          int i = paramInputStream.read(arrayOfByte1);
          if (i == -1)
            break;
          localMessageDigest.update(arrayOfByte1, 0, i);
        }
        byte[] arrayOfByte2 = localMessageDigest.digest();
        localObject = arrayOfByte2;
      }
      catch (IOException localIOException)
      {
        localObject = null;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        localObject = null;
      }
    }
  }

  public static byte[] a(g paramg, String paramString)
  {
    if (paramString == null);
    MessageDigest localMessageDigest;
    for (byte[] arrayOfByte = null; ; arrayOfByte = localMessageDigest.digest())
    {
      return arrayOfByte;
      localMessageDigest = MessageDigest.getInstance(paramg.toString());
      localMessageDigest.update(paramString.getBytes());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.f
 * JD-Core Version:    0.6.2
 */