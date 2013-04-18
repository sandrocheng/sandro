package king.org.apache.commons.codec.binary;

import java.io.FilterOutputStream;
import java.io.OutputStream;

public class BaseNCodecOutputStream extends FilterOutputStream
{
  private final BaseNCodec baseNCodec;
  private final boolean doEncode;
  private final byte[] singleByte = new byte[1];

  public BaseNCodecOutputStream(OutputStream paramOutputStream, BaseNCodec paramBaseNCodec, boolean paramBoolean)
  {
    super(paramOutputStream);
    this.baseNCodec = paramBaseNCodec;
    this.doEncode = paramBoolean;
  }

  private void flush(boolean paramBoolean)
  {
    int i = this.baseNCodec.available();
    if (i > 0)
    {
      byte[] arrayOfByte = new byte[i];
      int j = this.baseNCodec.readResults(arrayOfByte, 0, i);
      if (j > 0)
        this.out.write(arrayOfByte, 0, j);
    }
    if (paramBoolean)
      this.out.flush();
  }

  public void close()
  {
    if (this.doEncode)
      this.baseNCodec.encode(this.singleByte, 0, -1);
    while (true)
    {
      flush();
      this.out.close();
      return;
      this.baseNCodec.decode(this.singleByte, 0, -1);
    }
  }

  public void flush()
  {
    flush(true);
  }

  public void write(int paramInt)
  {
    this.singleByte[0] = ((byte)paramInt);
    write(this.singleByte, 0, 1);
  }

  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte == null)
      throw new NullPointerException();
    if ((paramInt1 < 0) || (paramInt2 < 0))
      throw new IndexOutOfBoundsException();
    if ((paramInt1 > paramArrayOfByte.length) || (paramInt1 + paramInt2 > paramArrayOfByte.length))
      throw new IndexOutOfBoundsException();
    if (paramInt2 > 0)
    {
      if (!this.doEncode)
        break label77;
      this.baseNCodec.encode(paramArrayOfByte, paramInt1, paramInt2);
    }
    while (true)
    {
      flush(false);
      return;
      label77: this.baseNCodec.decode(paramArrayOfByte, paramInt1, paramInt2);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     king.org.apache.commons.codec.binary.BaseNCodecOutputStream
 * JD-Core Version:    0.6.2
 */