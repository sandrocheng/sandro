package com.hoi.a;

import java.io.UnsupportedEncodingException;

public class a
{
  public static final int a = 0;
  public static final int b = 1;
  public static final int c = 2;
  public static final int d = 4;
  public static final int e = 8;
  public static final int f = 16;

  static
  {
    if (!a.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      g = bool;
      return;
    }
  }

  public static String a(byte[] paramArrayOfByte, int paramInt)
  {
    try
    {
      String str = new String(b(paramArrayOfByte, paramArrayOfByte.length, paramInt), "US-ASCII");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError(localUnsupportedEncodingException);
    }
  }

  public static byte[] a(String paramString, int paramInt)
  {
    byte[] arrayOfByte1 = paramString.getBytes();
    int i = arrayOfByte1.length;
    c localc = new c(paramInt, new byte[i * 3 / 4]);
    if (!localc.a(arrayOfByte1, 0, i, true))
      throw new IllegalArgumentException("bad base-64");
    byte[] arrayOfByte2;
    if (localc.b == localc.a.length)
      arrayOfByte2 = localc.a;
    while (true)
    {
      return arrayOfByte2;
      arrayOfByte2 = new byte[localc.b];
      System.arraycopy(localc.a, 0, arrayOfByte2, 0, localc.b);
    }
  }

  private static byte[] a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    c localc = new c(paramInt2, new byte[paramInt1 * 3 / 4]);
    if (!localc.a(paramArrayOfByte, 0, paramInt1, true))
      throw new IllegalArgumentException("bad base-64");
    if (localc.b == localc.a.length);
    byte[] arrayOfByte;
    for (Object localObject = localc.a; ; localObject = arrayOfByte)
    {
      return localObject;
      arrayOfByte = new byte[localc.b];
      System.arraycopy(localc.a, 0, arrayOfByte, 0, localc.b);
    }
  }

  public static String b(byte[] paramArrayOfByte, int paramInt)
  {
    try
    {
      String str = new String(b(paramArrayOfByte, paramInt, 8), "US-ASCII");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError(localUnsupportedEncodingException);
    }
  }

  private static byte[] b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    d locald = new d(paramInt2, null);
    int i = 4 * (paramInt1 / 3);
    int j;
    if (locald.e)
    {
      if (paramInt1 % 3 > 0)
        i += 4;
      if ((locald.f) && (paramInt1 > 0))
      {
        j = 1 + (paramInt1 - 1) / 57;
        if (!locald.g)
          break label159;
      }
    }
    label159: for (int k = 2; ; k = 1)
    {
      i += j * k;
      locald.a = new byte[i];
      locald.a(paramArrayOfByte, 0, paramInt1, true);
      if ((g) || (locald.b == i))
        break label165;
      throw new AssertionError();
      switch (paramInt1 % 3)
      {
      case 0:
      default:
        break;
      case 1:
        i += 2;
        break;
      case 2:
        i += 3;
        break;
      }
    }
    label165: return locald.a;
  }

  public static byte[] c(byte[] paramArrayOfByte, int paramInt)
  {
    return b(paramArrayOfByte, paramArrayOfByte.length, paramInt);
  }

  private static byte[] d(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramArrayOfByte.length;
    c localc = new c(paramInt, new byte[i * 3 / 4]);
    if (!localc.a(paramArrayOfByte, 0, i, true))
      throw new IllegalArgumentException("bad base-64");
    byte[] arrayOfByte;
    if (localc.b == localc.a.length)
      arrayOfByte = localc.a;
    while (true)
    {
      return arrayOfByte;
      arrayOfByte = new byte[localc.b];
      System.arraycopy(localc.a, 0, arrayOfByte, 0, localc.b);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.a.a
 * JD-Core Version:    0.6.2
 */