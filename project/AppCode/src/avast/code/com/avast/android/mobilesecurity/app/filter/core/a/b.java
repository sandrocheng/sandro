package com.avast.android.mobilesecurity.app.filter.core.a;

import android.util.Log;
import java.io.UnsupportedEncodingException;

public class b
  implements Cloneable
{
  private int a;
  private byte[] b;

  public b(int paramInt, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      throw new NullPointerException("EncodedStringValue: Text-string is null.");
    this.a = paramInt;
    this.b = new byte[paramArrayOfByte.length];
    System.arraycopy(paramArrayOfByte, 0, this.b, 0, paramArrayOfByte.length);
  }

  public b(byte[] paramArrayOfByte)
  {
    this(106, paramArrayOfByte);
  }

  public void a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      throw new NullPointerException("EncodedStringValue: Text-string is null.");
    this.b = new byte[paramArrayOfByte.length];
    System.arraycopy(paramArrayOfByte, 0, this.b, 0, paramArrayOfByte.length);
  }

  public byte[] a()
  {
    byte[] arrayOfByte = new byte[this.b.length];
    System.arraycopy(this.b, 0, arrayOfByte, 0, this.b.length);
    return arrayOfByte;
  }

  public String b()
  {
    String str1;
    if (this.a == 0)
      str1 = new String(this.b);
    while (true)
    {
      return str1;
      try
      {
        String str2 = a.a(this.a);
        str1 = new String(this.b, str2);
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException1)
      {
        try
        {
          str1 = new String(this.b, "iso-8859-1");
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException2)
        {
          str1 = new String(this.b);
        }
      }
    }
  }

  public Object clone()
  {
    super.clone();
    int i = this.b.length;
    byte[] arrayOfByte = new byte[i];
    System.arraycopy(this.b, 0, arrayOfByte, 0, i);
    try
    {
      b localb = new b(this.a, arrayOfByte);
      return localb;
    }
    catch (Exception localException)
    {
      Log.e("EncodedStringValue", "failed to clone an EncodedStringValue: " + this);
      localException.printStackTrace();
      throw new CloneNotSupportedException(localException.getMessage());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.a.b
 * JD-Core Version:    0.6.2
 */