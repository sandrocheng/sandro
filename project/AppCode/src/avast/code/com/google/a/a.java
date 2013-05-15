package com.google.a;

import java.io.IOException;

public abstract class a
  implements aa
{
  public byte[] bo()
  {
    try
    {
      byte[] arrayOfByte = new byte[w()];
      e locale = e.a(arrayOfByte);
      a(locale);
      locale.b();
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", localIOException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.a
 * JD-Core Version:    0.6.2
 */