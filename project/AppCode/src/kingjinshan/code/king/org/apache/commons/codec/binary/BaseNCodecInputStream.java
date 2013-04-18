package king.org.apache.commons.codec.binary;

import java.io.FilterInputStream;
import java.io.InputStream;

public class BaseNCodecInputStream extends FilterInputStream
{
  private final BaseNCodec baseNCodec;
  private final boolean doEncode;
  private final byte[] singleByte = new byte[1];

  protected BaseNCodecInputStream(InputStream paramInputStream, BaseNCodec paramBaseNCodec, boolean paramBoolean)
  {
    super(paramInputStream);
    this.doEncode = paramBoolean;
    this.baseNCodec = paramBaseNCodec;
  }

  public boolean markSupported()
  {
    return false;
  }

  public int read()
  {
    for (int i = read(this.singleByte, 0, 1); i == 0; i = read(this.singleByte, 0, 1));
    int j;
    if (i > 0)
      if (this.singleByte[0] < 0)
        j = 256 + this.singleByte[0];
    while (true)
    {
      return j;
      j = this.singleByte[0];
      continue;
      j = -1;
    }
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte == null)
      throw new NullPointerException();
    if ((paramInt1 < 0) || (paramInt2 < 0))
      throw new IndexOutOfBoundsException();
    if ((paramInt1 > paramArrayOfByte.length) || (paramInt1 + paramInt2 > paramArrayOfByte.length))
      throw new IndexOutOfBoundsException();
    if (paramInt2 == 0)
    {
      i = 0;
      return i;
    }
    int i = 0;
    label63: int j;
    label90: byte[] arrayOfByte;
    int k;
    if (i == 0)
      if (!this.baseNCodec.hasData())
      {
        if (!this.doEncode)
          break label141;
        j = 4096;
        arrayOfByte = new byte[j];
        k = this.in.read(arrayOfByte);
        if (!this.doEncode)
          break label149;
        this.baseNCodec.encode(arrayOfByte, 0, k);
      }
    while (true)
    {
      i = this.baseNCodec.readResults(paramArrayOfByte, paramInt1, paramInt2);
      break label63;
      break;
      label141: j = 8192;
      break label90;
      label149: this.baseNCodec.decode(arrayOfByte, 0, k);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     king.org.apache.commons.codec.binary.BaseNCodecInputStream
 * JD-Core Version:    0.6.2
 */