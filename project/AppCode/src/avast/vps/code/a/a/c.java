package a.a;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

public final class c
{
  public static final c a = new c(new byte[0]);
  private final byte[] b;
  private volatile int c = 0;

  private c(byte[] paramArrayOfByte)
  {
    this.b = paramArrayOfByte;
  }

  public static c a(String paramString)
  {
    try
    {
      c localc = new c(paramString.getBytes("UTF-8"));
      return localc;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new RuntimeException("UTF-8 not supported?", localUnsupportedEncodingException);
    }
  }

  public static c a(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public static c a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2);
    return new c(arrayOfByte);
  }

  public final byte a(int paramInt)
  {
    return this.b[paramInt];
  }

  public final int a()
  {
    return this.b.length;
  }

  public final void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    System.arraycopy(this.b, paramInt1, paramArrayOfByte, paramInt2, paramInt3);
  }

  public final String b()
  {
    try
    {
      String str = new String(this.b, "UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new RuntimeException("UTF-8 not supported?", localUnsupportedEncodingException);
    }
  }

  public final InputStream c()
  {
    return new ByteArrayInputStream(this.b);
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (paramObject == this);
    label92: 
    while (true)
    {
      return bool;
      if (!(paramObject instanceof c))
      {
        bool = false;
      }
      else
      {
        c localc = (c)paramObject;
        int i = this.b.length;
        if (i != localc.b.length)
        {
          bool = false;
        }
        else
        {
          byte[] arrayOfByte1 = this.b;
          byte[] arrayOfByte2 = localc.b;
          for (int j = 0; ; j++)
          {
            if (j >= i)
              break label92;
            if (arrayOfByte1[j] != arrayOfByte2[j])
            {
              bool = false;
              break;
            }
          }
        }
      }
    }
  }

  public final int hashCode()
  {
    int i = this.c;
    if (i == 0)
    {
      byte[] arrayOfByte = this.b;
      int j = this.b.length;
      int k = 0;
      int m;
      for (i = j; k < j; i = m)
      {
        m = i * 31 + arrayOfByte[k];
        k++;
      }
      if (i == 0)
        i = 1;
      this.c = i;
    }
    return i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     a.a.c
 * JD-Core Version:    0.6.2
 */