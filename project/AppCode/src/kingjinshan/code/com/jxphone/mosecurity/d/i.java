package com.jxphone.mosecurity.d;

import java.io.InputStream;

public final class i extends InputStream
{
  private InputStream a;

  private i(InputStream paramInputStream)
  {
    this.a = paramInputStream;
  }

  static void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt1 + paramInt2;
    for (int j = paramInt1; j < i; j++)
      paramArrayOfByte[j] = ((byte)(0xFFFFFFFF ^ paramArrayOfByte[j]));
  }

  public final int read()
  {
    return 0xFFFFFFFF ^ this.a.read();
  }

  public final int read(byte[] paramArrayOfByte)
  {
    int i = this.a.read(paramArrayOfByte);
    a(paramArrayOfByte, 0, i);
    return i;
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = this.a.read(paramArrayOfByte, paramInt1, paramInt2);
    a(paramArrayOfByte, paramInt1, paramInt2);
    return i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.d.i
 * JD-Core Version:    0.6.2
 */