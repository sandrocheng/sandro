package com.d.a;

import java.io.RandomAccessFile;
import java.nio.ByteBuffer;

public final class f
  implements g
{
  private RandomAccessFile a;

  public f(RandomAccessFile paramRandomAccessFile)
  {
    if (paramRandomAccessFile == null)
      throw new NullPointerException("raf");
    this.a = paramRandomAccessFile;
  }

  private int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return this.a.read(paramArrayOfByte, paramInt1, paramInt2);
  }

  private long a()
  {
    return this.a.length();
  }

  public final int a(ByteBuffer paramByteBuffer)
  {
    int i = this.a.read(paramByteBuffer.array(), paramByteBuffer.position(), paramByteBuffer.remaining());
    if (i == -1)
      i = -1;
    while (true)
    {
      return i;
      paramByteBuffer.position(i + paramByteBuffer.position());
    }
  }

  public final void a(long paramLong)
  {
    this.a.seek(paramLong);
  }

  public final void close()
  {
    this.a.close();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.d.a.f
 * JD-Core Version:    0.6.2
 */