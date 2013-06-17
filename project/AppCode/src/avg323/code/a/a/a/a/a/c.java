package a.a.a.a.a;

import java.io.UnsupportedEncodingException;

public class c
{
  private static IllegalStateException a(String paramString, UnsupportedEncodingException paramUnsupportedEncodingException)
  {
    return new IllegalStateException(paramString + ": " + paramUnsupportedEncodingException);
  }

  public static String a(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, "UTF-8");
  }

  public static String a(byte[] paramArrayOfByte, String paramString)
  {
    String str;
    if (paramArrayOfByte == null)
      str = null;
    while (true)
    {
      return str;
      try
      {
        str = new String(paramArrayOfByte, paramString);
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw a(paramString, localUnsupportedEncodingException);
      }
    }
  }

  public static byte[] a(String paramString)
  {
    return a(paramString, "UTF-8");
  }

  public static byte[] a(String paramString1, String paramString2)
  {
    Object localObject;
    if (paramString1 == null)
      localObject = null;
    while (true)
    {
      return localObject;
      try
      {
        byte[] arrayOfByte = paramString1.getBytes(paramString2);
        localObject = arrayOfByte;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw a(paramString2, localUnsupportedEncodingException);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.a.c
 * JD-Core Version:    0.6.2
 */