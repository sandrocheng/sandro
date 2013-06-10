package org.a.a.a.b;

import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.a.a.a.a.b;
import org.a.a.a.a.c;

public final class a
{
  public static String a(byte[] paramArrayOfByte)
  {
    return b.a(d(paramArrayOfByte));
  }

  public static byte[] a(InputStream paramInputStream)
  {
    MessageDigest localMessageDigest = c("SHA");
    byte[] arrayOfByte = new byte[1024];
    for (int i = paramInputStream.read(arrayOfByte, 0, 1024); ; i = paramInputStream.read(arrayOfByte, 0, 1024))
    {
      if (i < 0)
        return localMessageDigest.digest();
      localMessageDigest.update(arrayOfByte, 0, i);
    }
  }

  public static byte[] a(String paramString)
  {
    return d(c.a(paramString, "UTF-8"));
  }

  public static String b(InputStream paramInputStream)
  {
    return b.a(a(paramInputStream));
  }

  public static String b(String paramString)
  {
    return b.a(a(paramString));
  }

  public static String b(byte[] paramArrayOfByte)
  {
    return b.a(c("SHA-256").digest(paramArrayOfByte));
  }

  public static String c(byte[] paramArrayOfByte)
  {
    return b.a(c("SHA").digest(paramArrayOfByte));
  }

  private static MessageDigest c(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance(paramString);
      return localMessageDigest;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new RuntimeException(localNoSuchAlgorithmException.getMessage());
    }
  }

  private static byte[] d(byte[] paramArrayOfByte)
  {
    return c("MD5").digest(paramArrayOfByte);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.a.a.a.b.a
 * JD-Core Version:    0.6.2
 */