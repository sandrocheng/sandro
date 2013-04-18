package king.org.apache.commons.codec.binary;

import king.org.apache.commons.codec.BinaryDecoder;
import king.org.apache.commons.codec.BinaryEncoder;
import king.org.apache.commons.codec.DecoderException;
import king.org.apache.commons.codec.EncoderException;

public abstract class BaseNCodec
  implements BinaryDecoder, BinaryEncoder
{
  private static final int DEFAULT_BUFFER_RESIZE_FACTOR = 2;
  private static final int DEFAULT_BUFFER_SIZE = 8192;
  protected static final int MASK_8BITS = 255;
  public static final int MIME_CHUNK_SIZE = 76;
  protected static final byte PAD_DEFAULT = 61;
  public static final int PEM_CHUNK_SIZE = 64;
  protected final byte PAD = 61;
  protected byte[] buffer;
  private final int chunkSeparatorLength;
  protected int currentLinePos;
  private final int encodedBlockSize;
  protected boolean eof;
  protected final int lineLength;
  protected int modulus;
  protected int pos;
  private int readPos;
  private final int unencodedBlockSize;

  protected BaseNCodec(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.unencodedBlockSize = paramInt1;
    this.encodedBlockSize = paramInt2;
    if ((paramInt3 > 0) && (paramInt4 > 0));
    for (int i = paramInt2 * (paramInt3 / paramInt2); ; i = 0)
    {
      this.lineLength = i;
      this.chunkSeparatorLength = paramInt4;
      return;
    }
  }

  protected static boolean isWhiteSpace(byte paramByte)
  {
    switch (paramByte)
    {
    default:
    case 9:
    case 10:
    case 13:
    case 32:
    }
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  private void reset()
  {
    this.buffer = null;
    this.pos = 0;
    this.readPos = 0;
    this.currentLinePos = 0;
    this.modulus = 0;
    this.eof = false;
  }

  private void resizeBuffer()
  {
    if (this.buffer == null)
    {
      this.buffer = new byte[getDefaultBufferSize()];
      this.pos = 0;
      this.readPos = 0;
    }
    while (true)
    {
      return;
      byte[] arrayOfByte = new byte[2 * this.buffer.length];
      System.arraycopy(this.buffer, 0, arrayOfByte, 0, this.buffer.length);
      this.buffer = arrayOfByte;
    }
  }

  int available()
  {
    if (this.buffer != null);
    for (int i = this.pos - this.readPos; ; i = 0)
      return i;
  }

  protected boolean containsAlphabetOrPad(byte[] paramArrayOfByte)
  {
    boolean bool;
    if (paramArrayOfByte == null)
      bool = false;
    while (true)
    {
      return bool;
      for (int i = 0; ; i++)
      {
        if (i >= paramArrayOfByte.length)
          break label45;
        if ((61 == paramArrayOfByte[i]) || (isInAlphabet(paramArrayOfByte[i])))
        {
          bool = true;
          break;
        }
      }
      label45: bool = false;
    }
  }

  public Object decode(Object paramObject)
  {
    if ((paramObject instanceof byte[]));
    for (byte[] arrayOfByte = decode((byte[])paramObject); ; arrayOfByte = decode((String)paramObject))
    {
      return arrayOfByte;
      if (!(paramObject instanceof String))
        break;
    }
    throw new DecoderException("Parameter supplied to Base-N decode is not a byte[] or a String");
  }

  abstract void decode(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  public byte[] decode(String paramString)
  {
    return decode(StringUtils.getBytesUtf8(paramString));
  }

  public byte[] decode(byte[] paramArrayOfByte)
  {
    reset();
    byte[] arrayOfByte;
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
      arrayOfByte = paramArrayOfByte;
    while (true)
    {
      return arrayOfByte;
      decode(paramArrayOfByte, 0, paramArrayOfByte.length);
      decode(paramArrayOfByte, 0, -1);
      arrayOfByte = new byte[this.pos];
      readResults(arrayOfByte, 0, arrayOfByte.length);
    }
  }

  public Object encode(Object paramObject)
  {
    if (!(paramObject instanceof byte[]))
      throw new EncoderException("Parameter supplied to Base-N encode is not a byte[]");
    return encode((byte[])paramObject);
  }

  abstract void encode(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  public byte[] encode(byte[] paramArrayOfByte)
  {
    reset();
    byte[] arrayOfByte;
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
      arrayOfByte = paramArrayOfByte;
    while (true)
    {
      return arrayOfByte;
      encode(paramArrayOfByte, 0, paramArrayOfByte.length);
      encode(paramArrayOfByte, 0, -1);
      arrayOfByte = new byte[this.pos - this.readPos];
      readResults(arrayOfByte, 0, arrayOfByte.length);
    }
  }

  public String encodeAsString(byte[] paramArrayOfByte)
  {
    return StringUtils.newStringUtf8(encode(paramArrayOfByte));
  }

  public String encodeToString(byte[] paramArrayOfByte)
  {
    return StringUtils.newStringUtf8(encode(paramArrayOfByte));
  }

  protected void ensureBufferSize(int paramInt)
  {
    if ((this.buffer == null) || (this.buffer.length < paramInt + this.pos))
      resizeBuffer();
  }

  protected int getDefaultBufferSize()
  {
    return 8192;
  }

  public long getEncodedLength(byte[] paramArrayOfByte)
  {
    long l = (paramArrayOfByte.length + this.unencodedBlockSize - 1) / this.unencodedBlockSize * this.encodedBlockSize;
    if (this.lineLength > 0)
      l += (l + this.lineLength - 1L) / this.lineLength * this.chunkSeparatorLength;
    return l;
  }

  boolean hasData()
  {
    if (this.buffer != null);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected abstract boolean isInAlphabet(byte paramByte);

  public boolean isInAlphabet(String paramString)
  {
    return isInAlphabet(StringUtils.getBytesUtf8(paramString), true);
  }

  public boolean isInAlphabet(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    int i = 0;
    if (i < paramArrayOfByte.length)
      if ((isInAlphabet(paramArrayOfByte[i])) || ((paramBoolean) && ((paramArrayOfByte[i] == 61) || (isWhiteSpace(paramArrayOfByte[i])))));
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      i++;
      break;
    }
  }

  int readResults(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i;
    if (this.buffer != null)
    {
      i = Math.min(available(), paramInt2);
      System.arraycopy(this.buffer, this.readPos, paramArrayOfByte, paramInt1, i);
      this.readPos = (i + this.readPos);
      if (this.readPos >= this.pos)
        this.buffer = null;
    }
    while (true)
    {
      return i;
      if (this.eof)
        i = -1;
      else
        i = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     king.org.apache.commons.codec.binary.BaseNCodec
 * JD-Core Version:    0.6.2
 */