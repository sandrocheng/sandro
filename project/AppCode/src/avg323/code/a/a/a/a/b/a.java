package a.a.a.a.b;

import a.a.a.a.a.b;
import a.a.a.a.a.c;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class a
{
  private static MessageDigest a()
  {
    return a("MD5");
  }

  static MessageDigest a(String paramString)
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

  public static byte[] a(InputStream paramInputStream)
  {
    return a(c(), paramInputStream);
  }

  private static byte[] a(MessageDigest paramMessageDigest, InputStream paramInputStream)
  {
    byte[] arrayOfByte = new byte[1024];
    for (int i = paramInputStream.read(arrayOfByte, 0, 1024); ; i = paramInputStream.read(arrayOfByte, 0, 1024))
    {
      if (i <= -1)
        return paramMessageDigest.digest();
      paramMessageDigest.update(arrayOfByte, 0, i);
    }
  }

  public static byte[] a(byte[] paramArrayOfByte)
  {
    return a().digest(paramArrayOfByte);
  }

  public static String b(InputStream paramInputStream)
  {
    return b.b(a(paramInputStream));
  }

  public static String b(byte[] paramArrayOfByte)
  {
    return b.b(a(paramArrayOfByte));
  }

  private static MessageDigest b()
  {
    return a("SHA-256");
  }

  public static byte[] b(String paramString)
  {
    return a(d(paramString));
  }

  public static String c(String paramString)
  {
    return b.b(b(paramString));
  }

  private static MessageDigest c()
  {
    return a("SHA");
  }

  public static byte[] c(byte[] paramArrayOfByte)
  {
    return c().digest(paramArrayOfByte);
  }

  private static byte[] d(String paramString)
  {
    return c.a(paramString);
  }

  public static byte[] d(byte[] paramArrayOfByte)
  {
    return b().digest(paramArrayOfByte);
  }

  public static String e(byte[] paramArrayOfByte)
  {
    return b.b(d(paramArrayOfByte));
  }

  public static String f(byte[] paramArrayOfByte)
  {
    return b.b(c(paramArrayOfByte));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.a
 * JD-Core Version:    0.6.2
 */