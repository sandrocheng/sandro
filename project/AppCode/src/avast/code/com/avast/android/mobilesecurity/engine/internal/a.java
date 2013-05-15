package com.avast.android.mobilesecurity.engine.internal;

public class a
{
  private byte[] a;
  private byte[] b;

  public a(byte[] paramArrayOfByte)
  {
    this.a = paramArrayOfByte;
    this.b = null;
  }

  private int a(byte paramByte)
  {
    return paramByte & 0xFF;
  }

  private int a(byte[] paramArrayOfByte)
  {
    int i = 1;
    if ((0xFF & paramArrayOfByte[i]) >= 128)
      i = 1 + (-128 + (0xFF & paramArrayOfByte[i]));
    return i;
  }

  private int a(byte[] paramArrayOfByte, int paramInt)
  {
    int j;
    if (paramInt < 1)
      j = -1;
    while (true)
    {
      return j;
      int i;
      if (paramInt > 1)
      {
        j = 0;
        i = 2;
      }
      while (i <= paramInt)
      {
        int k = (j << 8) + (0xFF & paramArrayOfByte[i]);
        i++;
        j = k;
        continue;
        i = 1;
        j = 0;
      }
    }
  }

  private int a(byte[] paramArrayOfByte, String paramString)
  {
    int i = a(paramArrayOfByte);
    int j = a(paramArrayOfByte, i);
    int k = i + 1;
    int m = a(paramArrayOfByte[0]);
    byte[] arrayOfByte1 = new byte[j];
    System.arraycopy(paramArrayOfByte, k, arrayOfByte1, 0, j);
    int n = 0;
    int i1;
    if (k < paramArrayOfByte.length)
      switch (m)
      {
      default:
        if ("/1/0/4/0/4".equals(paramString + n))
          if (m != 4)
            throw new SecurityException();
        break;
      case 48:
      case 49:
      case 160:
        StringBuilder localStringBuilder = new StringBuilder().append(paramString);
        int i2 = n + 1;
        i1 = k + a(arrayOfByte1, n + "/");
        n = i2;
        label182: if (i1 < paramArrayOfByte.length);
        break;
      }
    while (true)
    {
      return i1;
      this.b = new byte[j];
      System.arraycopy(paramArrayOfByte, k, this.b, 0, j);
      n++;
      i1 = k + j;
      break label182;
      byte[] arrayOfByte2 = new byte[paramArrayOfByte.length - i1];
      System.arraycopy(paramArrayOfByte, i1, arrayOfByte2, 0, paramArrayOfByte.length - i1);
      m = a(arrayOfByte2[0]);
      int i3 = a(arrayOfByte2);
      j = a(arrayOfByte2, i3);
      k = i1 + (i3 + 1);
      arrayOfByte1 = new byte[j];
      System.arraycopy(paramArrayOfByte, k, arrayOfByte1, 0, j);
      break;
      i1 = k;
    }
  }

  public byte[] a()
  {
    int i = a(this.a);
    int j = a(this.a, i);
    Object localObject = new byte[j];
    System.arraycopy(this.a, i + 1, localObject, 0, j);
    int k = 0;
    if (k < j)
    {
      switch (a(this.a[0]))
      {
      default:
      case 48:
      case 49:
      case 160:
      }
      for (int m = j; ; m = k + a((byte[])localObject, "/"))
      {
        byte[] arrayOfByte = new byte[this.a.length - (m + (i + 1))];
        System.arraycopy(this.a, m + (i + 1), arrayOfByte, 0, this.a.length - (m + (i + 1)));
        k = m;
        localObject = arrayOfByte;
        break;
      }
    }
    return this.b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a
 * JD-Core Version:    0.6.2
 */