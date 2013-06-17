package a.a;

import java.io.IOException;

public abstract class a
  implements o
{
  public final byte[] ai()
  {
    byte[] arrayOfByte;
    try
    {
      arrayOfByte = new byte[ag()];
      e locale = e.a(arrayOfByte, arrayOfByte.length);
      a(locale);
      if (locale.a() != 0)
        throw new IllegalStateException("Did not write as much data as expected.");
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", localIOException);
    }
    return arrayOfByte;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     a.a.a
 * JD-Core Version:    0.6.2
 */