package com.keniu.security.a;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

public final class n
{
  public static final int a(InputStream paramInputStream)
  {
    return c(paramInputStream, 4);
  }

  public static final void a(l paraml)
  {
    int i = paraml.a();
    if (i != 1835009)
      throw new IOException("Expected chunk of type 0x" + Integer.toHexString(1835009) + ", read 0x" + Integer.toHexString(i) + ".");
  }

  public static final void a(InputStream paramInputStream, int paramInt)
  {
    int i = c(paramInputStream, 4);
    if (i != paramInt)
      throw new IOException("Expected chunk of type 0x" + Integer.toHexString(paramInt) + ", read 0x" + Integer.toHexString(i) + ".");
  }

  private static int b(InputStream paramInputStream)
  {
    return c(paramInputStream, 2);
  }

  public static final int[] b(InputStream paramInputStream, int paramInt)
  {
    int[] arrayOfInt = new int[paramInt];
    for (int i = 0; i != paramInt; i++)
      arrayOfInt[i] = c(paramInputStream, 4);
    return arrayOfInt;
  }

  public static final int c(InputStream paramInputStream, int paramInt)
  {
    int i = 0;
    int j = 0;
    while (i != paramInt)
    {
      int k = paramInputStream.read();
      if (k == -1)
        throw new EOFException();
      j |= k << i * 8;
      i++;
    }
    return j;
  }

  private static String c(InputStream paramInputStream)
  {
    int i = c(paramInputStream, 2);
    StringBuilder localStringBuilder = new StringBuilder(i);
    for (int j = 0; j != i; j++)
      localStringBuilder.append((char)b(paramInputStream));
    b(paramInputStream);
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.a.n
 * JD-Core Version:    0.6.2
 */