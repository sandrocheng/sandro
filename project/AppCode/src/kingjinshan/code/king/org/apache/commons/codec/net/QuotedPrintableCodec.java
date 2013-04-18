package king.org.apache.commons.codec.net;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.BitSet;
import king.org.apache.commons.codec.BinaryDecoder;
import king.org.apache.commons.codec.BinaryEncoder;
import king.org.apache.commons.codec.DecoderException;
import king.org.apache.commons.codec.EncoderException;
import king.org.apache.commons.codec.StringDecoder;
import king.org.apache.commons.codec.StringEncoder;
import king.org.apache.commons.codec.binary.StringUtils;

public class QuotedPrintableCodec
  implements BinaryDecoder, BinaryEncoder, StringDecoder, StringEncoder
{
  private static final byte ESCAPE_CHAR = 61;
  private static final BitSet PRINTABLE_CHARS = new BitSet(256);
  private static final byte SPACE = 32;
  private static final byte TAB = 9;
  private final String charset;

  static
  {
    for (int i = 33; i <= 60; i++)
      PRINTABLE_CHARS.set(i);
    for (int j = 62; j <= 126; j++)
      PRINTABLE_CHARS.set(j);
    PRINTABLE_CHARS.set(9);
    PRINTABLE_CHARS.set(32);
  }

  public QuotedPrintableCodec()
  {
    this("UTF-8");
  }

  public QuotedPrintableCodec(String paramString)
  {
    this.charset = paramString;
  }

  public static final byte[] decodeQuotedPrintable(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null);
    ByteArrayOutputStream localByteArrayOutputStream;
    for (byte[] arrayOfByte = null; ; arrayOfByte = localByteArrayOutputStream.toByteArray())
    {
      return arrayOfByte;
      localByteArrayOutputStream = new ByteArrayOutputStream();
      int i = 0;
      if (i < paramArrayOfByte.length)
      {
        int j = paramArrayOfByte[i];
        int k;
        if (j == 61)
          k = i + 1;
        while (true)
        {
          try
          {
            int m = Utils.digit16(paramArrayOfByte[k]);
            i = k + 1;
            localByteArrayOutputStream.write((char)(Utils.digit16(paramArrayOfByte[i]) + (m << 4)));
            i++;
          }
          catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
          {
            throw new DecoderException("Invalid quoted-printable encoding", localArrayIndexOutOfBoundsException);
          }
          localByteArrayOutputStream.write(j);
        }
      }
    }
  }

  private static final void encodeQuotedPrintable(int paramInt, ByteArrayOutputStream paramByteArrayOutputStream)
  {
    paramByteArrayOutputStream.write(61);
    int i = Character.toUpperCase(Character.forDigit(0xF & paramInt >> 4, 16));
    int j = Character.toUpperCase(Character.forDigit(paramInt & 0xF, 16));
    paramByteArrayOutputStream.write(i);
    paramByteArrayOutputStream.write(j);
  }

  public static final byte[] encodeQuotedPrintable(BitSet paramBitSet, byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte;
    if (paramArrayOfByte == null)
    {
      arrayOfByte = null;
      return arrayOfByte;
    }
    if (paramBitSet == null);
    for (BitSet localBitSet = PRINTABLE_CHARS; ; localBitSet = paramBitSet)
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      int i = 0;
      if (i < paramArrayOfByte.length)
      {
        int j = paramArrayOfByte[i];
        if (j < 0)
          j += 256;
        if (localBitSet.get(j))
          localByteArrayOutputStream.write(j);
        while (true)
        {
          i++;
          break;
          encodeQuotedPrintable(j, localByteArrayOutputStream);
        }
      }
      arrayOfByte = localByteArrayOutputStream.toByteArray();
      break;
    }
  }

  public Object decode(Object paramObject)
  {
    Object localObject;
    if (paramObject == null)
      localObject = null;
    while (true)
    {
      return localObject;
      if ((paramObject instanceof byte[]))
      {
        localObject = decode((byte[])paramObject);
      }
      else
      {
        if (!(paramObject instanceof String))
          break;
        localObject = decode((String)paramObject);
      }
    }
    throw new DecoderException("Objects of type " + paramObject.getClass().getName() + " cannot be quoted-printable decoded");
  }

  public String decode(String paramString)
  {
    Object localObject;
    if (paramString == null)
      localObject = null;
    while (true)
    {
      return localObject;
      try
      {
        String str = decode(paramString, getDefaultCharset());
        localObject = str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new DecoderException(localUnsupportedEncodingException.getMessage(), localUnsupportedEncodingException);
      }
    }
  }

  public String decode(String paramString1, String paramString2)
  {
    if (paramString1 == null);
    for (String str = null; ; str = new String(decode(StringUtils.getBytesUsAscii(paramString1)), paramString2))
      return str;
  }

  public byte[] decode(byte[] paramArrayOfByte)
  {
    return decodeQuotedPrintable(paramArrayOfByte);
  }

  public Object encode(Object paramObject)
  {
    Object localObject;
    if (paramObject == null)
      localObject = null;
    while (true)
    {
      return localObject;
      if ((paramObject instanceof byte[]))
      {
        localObject = encode((byte[])paramObject);
      }
      else
      {
        if (!(paramObject instanceof String))
          break;
        localObject = encode((String)paramObject);
      }
    }
    throw new EncoderException("Objects of type " + paramObject.getClass().getName() + " cannot be quoted-printable encoded");
  }

  public String encode(String paramString)
  {
    Object localObject;
    if (paramString == null)
      localObject = null;
    while (true)
    {
      return localObject;
      try
      {
        String str = encode(paramString, getDefaultCharset());
        localObject = str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new EncoderException(localUnsupportedEncodingException.getMessage(), localUnsupportedEncodingException);
      }
    }
  }

  public String encode(String paramString1, String paramString2)
  {
    if (paramString1 == null);
    for (String str = null; ; str = StringUtils.newStringUsAscii(encode(paramString1.getBytes(paramString2))))
      return str;
  }

  public byte[] encode(byte[] paramArrayOfByte)
  {
    return encodeQuotedPrintable(PRINTABLE_CHARS, paramArrayOfByte);
  }

  public String getDefaultCharset()
  {
    return this.charset;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     king.org.apache.commons.codec.net.QuotedPrintableCodec
 * JD-Core Version:    0.6.2
 */