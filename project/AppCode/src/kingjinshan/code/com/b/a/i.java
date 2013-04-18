package com.b.a;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;

public final class i
{
  public static final i a = new i(new byte[0], (byte)0);
  private final byte[] b;
  private volatile int c = 0;

  private i(byte[] paramArrayOfByte, byte paramByte)
  {
    this.b = paramArrayOfByte;
  }

  public static i a(String paramString)
  {
    try
    {
      i locali = new i(paramString.getBytes("UTF-8"), (byte)0);
      return locali;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new RuntimeException("UTF-8 not supported?", localUnsupportedEncodingException);
    }
  }

  private static i a(String paramString1, String paramString2)
  {
    return new i(paramString1.getBytes(paramString2), (byte)0);
  }

  private static i a(ByteBuffer paramByteBuffer)
  {
    byte[] arrayOfByte = new byte[paramByteBuffer.remaining()];
    paramByteBuffer.get(arrayOfByte);
    return new i(arrayOfByte, (byte)0);
  }

  private static i a(ByteBuffer paramByteBuffer, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    paramByteBuffer.get(arrayOfByte);
    return new i(arrayOfByte, (byte)0);
  }

  public static i a(List paramList)
  {
    i locali1;
    if (paramList.size() == 0)
      locali1 = a;
    while (true)
    {
      return locali1;
      if (paramList.size() == 1)
      {
        locali1 = (i)paramList.get(0);
      }
      else
      {
        Iterator localIterator1 = paramList.iterator();
        int i = 0;
        while (localIterator1.hasNext())
          i += ((i)localIterator1.next()).b.length;
        byte[] arrayOfByte = new byte[i];
        Iterator localIterator2 = paramList.iterator();
        int j = 0;
        while (localIterator2.hasNext())
        {
          i locali2 = (i)localIterator2.next();
          System.arraycopy(locali2.b, 0, arrayOfByte, j, locali2.b.length);
          j += locali2.b.length;
        }
        locali1 = new i(arrayOfByte, (byte)0);
      }
    }
  }

  public static i a(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public static i a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2);
    return new i(arrayOfByte, (byte)0);
  }

  private void a(byte[] paramArrayOfByte, int paramInt)
  {
    System.arraycopy(this.b, 0, paramArrayOfByte, paramInt, this.b.length);
  }

  static k b(int paramInt)
  {
    return new k(paramInt);
  }

  private String b(String paramString)
  {
    return new String(this.b, paramString);
  }

  private void b(ByteBuffer paramByteBuffer)
  {
    paramByteBuffer.put(this.b, 0, this.b.length);
  }

  private boolean e()
  {
    if (this.b.length == 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private byte[] f()
  {
    int i = this.b.length;
    byte[] arrayOfByte = new byte[i];
    System.arraycopy(this.b, 0, arrayOfByte, 0, i);
    return arrayOfByte;
  }

  private ByteBuffer g()
  {
    return ByteBuffer.wrap(this.b).asReadOnlyBuffer();
  }

  private static l h()
  {
    return new l(new ByteArrayOutputStream(32));
  }

  private static l i()
  {
    return new l(new ByteArrayOutputStream(32));
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

  public final m d()
  {
    byte[] arrayOfByte = this.b;
    return m.a(arrayOfByte, 0, arrayOfByte.length);
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool;
    if (paramObject == this)
      bool = true;
    while (true)
    {
      return bool;
      if (!(paramObject instanceof i))
      {
        bool = false;
      }
      else
      {
        i locali = (i)paramObject;
        int i = this.b.length;
        if (i != locali.b.length)
        {
          bool = false;
        }
        else
        {
          byte[] arrayOfByte1 = this.b;
          byte[] arrayOfByte2 = locali.b;
          for (int j = 0; ; j++)
          {
            if (j >= i)
              break label94;
            if (arrayOfByte1[j] != arrayOfByte2[j])
            {
              bool = false;
              break;
            }
          }
          label94: bool = true;
        }
      }
    }
  }

  public final int hashCode()
  {
    int i = this.c;
    int m;
    if (i == 0)
    {
      byte[] arrayOfByte = this.b;
      int j = this.b.length;
      int k = 0;
      m = j;
      while (k < j)
      {
        m = m * 31 + arrayOfByte[k];
        k++;
      }
      if (m != 0)
        break label64;
    }
    label64: for (i = 1; ; i = m)
    {
      this.c = i;
      return i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.i
 * JD-Core Version:    0.6.2
 */