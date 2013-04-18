package com.d.a;

import java.io.IOException;
import java.nio.ByteBuffer;

public final class a
  implements g
{
  private ByteBuffer a;
  private ByteBuffer b;

  private a(ByteBuffer paramByteBuffer)
  {
    if (paramByteBuffer == null)
      throw new NullPointerException("bb");
    this.a = paramByteBuffer;
    paramByteBuffer.rewind();
    try
    {
      a(0L);
      return;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException);
    }
  }

  public a(byte[] paramArrayOfByte)
  {
    this(ByteBuffer.wrap(paramArrayOfByte));
  }

  public final int a(ByteBuffer paramByteBuffer)
  {
    int i;
    if (!this.b.hasRemaining())
      i = -1;
    while (true)
    {
      return i;
      for (i = 0; (this.b.hasRemaining()) && (paramByteBuffer.hasRemaining()); i++)
        paramByteBuffer.put(this.b.get());
    }
  }

  public final void a(long paramLong)
  {
    this.b = this.a.slice();
    if (paramLong > this.b.limit())
      throw new IOException("pos " + paramLong + " cannot seek " + this.b.limit());
    this.b.position((int)paramLong);
  }

  public final void close()
  {
    this.a = null;
    this.b = null;
  }

  public final String toString()
  {
    return "BBSeekable bb=" + this.a.position() + "-" + this.a.limit() + " cur=" + this.b.position() + "-" + this.b.limit() + "";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.d.a.a
 * JD-Core Version:    0.6.2
 */