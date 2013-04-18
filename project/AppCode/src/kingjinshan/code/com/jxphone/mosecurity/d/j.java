package com.jxphone.mosecurity.d;

import java.io.OutputStream;

public final class j extends OutputStream
{
  private OutputStream a;

  public j(OutputStream paramOutputStream)
  {
    this.a = paramOutputStream;
  }

  public final void write(int paramInt)
  {
    this.a.write(paramInt ^ 0xFFFFFFFF);
  }

  public final void write(byte[] paramArrayOfByte)
  {
    i.a(paramArrayOfByte, 0, paramArrayOfByte.length);
    this.a.write(paramArrayOfByte);
  }

  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    i.a(paramArrayOfByte, paramInt1, paramInt2);
    this.a.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.d.j
 * JD-Core Version:    0.6.2
 */