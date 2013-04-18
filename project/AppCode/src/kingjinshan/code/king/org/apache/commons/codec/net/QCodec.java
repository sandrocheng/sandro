package king.org.apache.commons.codec.net;

import java.io.UnsupportedEncodingException;
import java.util.BitSet;
import king.org.apache.commons.codec.DecoderException;
import king.org.apache.commons.codec.EncoderException;
import king.org.apache.commons.codec.StringDecoder;
import king.org.apache.commons.codec.StringEncoder;

public class QCodec extends RFC1522Codec
  implements StringDecoder, StringEncoder
{
  private static final byte BLANK = 32;
  private static final BitSet PRINTABLE_CHARS;
  private static final byte UNDERSCORE = 95;
  private final String charset;
  private boolean encodeBlanks = false;

  static
  {
    BitSet localBitSet = new BitSet(256);
    PRINTABLE_CHARS = localBitSet;
    localBitSet.set(32);
    PRINTABLE_CHARS.set(33);
    PRINTABLE_CHARS.set(34);
    PRINTABLE_CHARS.set(35);
    PRINTABLE_CHARS.set(36);
    PRINTABLE_CHARS.set(37);
    PRINTABLE_CHARS.set(38);
    PRINTABLE_CHARS.set(39);
    PRINTABLE_CHARS.set(40);
    PRINTABLE_CHARS.set(41);
    PRINTABLE_CHARS.set(42);
    PRINTABLE_CHARS.set(43);
    PRINTABLE_CHARS.set(44);
    PRINTABLE_CHARS.set(45);
    PRINTABLE_CHARS.set(46);
    PRINTABLE_CHARS.set(47);
    for (int i = 48; i <= 57; i++)
      PRINTABLE_CHARS.set(i);
    PRINTABLE_CHARS.set(58);
    PRINTABLE_CHARS.set(59);
    PRINTABLE_CHARS.set(60);
    PRINTABLE_CHARS.set(62);
    PRINTABLE_CHARS.set(64);
    for (int j = 65; j <= 90; j++)
      PRINTABLE_CHARS.set(j);
    PRINTABLE_CHARS.set(91);
    PRINTABLE_CHARS.set(92);
    PRINTABLE_CHARS.set(93);
    PRINTABLE_CHARS.set(94);
    PRINTABLE_CHARS.set(96);
    for (int k = 97; k <= 122; k++)
      PRINTABLE_CHARS.set(k);
    PRINTABLE_CHARS.set(123);
    PRINTABLE_CHARS.set(124);
    PRINTABLE_CHARS.set(125);
    PRINTABLE_CHARS.set(126);
  }

  public QCodec()
  {
    this("UTF-8");
  }

  public QCodec(String paramString)
  {
    this.charset = paramString;
  }

  public Object decode(Object paramObject)
  {
    if (paramObject == null);
    for (Object localObject = null; ; localObject = decode((String)paramObject))
    {
      return localObject;
      if (!(paramObject instanceof String))
        break;
    }
    throw new DecoderException("Objects of type " + paramObject.getClass().getName() + " cannot be decoded using Q codec");
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
        String str = decodeText(paramString);
        localObject = str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new DecoderException(localUnsupportedEncodingException.getMessage(), localUnsupportedEncodingException);
      }
    }
  }

  protected byte[] doDecoding(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte1;
    if (paramArrayOfByte == null)
    {
      arrayOfByte1 = null;
      return arrayOfByte1;
    }
    int i = 0;
    if (i < paramArrayOfByte.length)
      if (paramArrayOfByte[i] != 95);
    for (int j = 1; ; j = 0)
    {
      if (j != 0)
      {
        byte[] arrayOfByte2 = new byte[paramArrayOfByte.length];
        int k = 0;
        label41: if (k < paramArrayOfByte.length)
        {
          int m = paramArrayOfByte[k];
          if (m != 95)
            arrayOfByte2[k] = m;
          while (true)
          {
            k++;
            break label41;
            i++;
            break;
            arrayOfByte2[k] = 32;
          }
        }
        arrayOfByte1 = QuotedPrintableCodec.decodeQuotedPrintable(arrayOfByte2);
        break;
      }
      arrayOfByte1 = QuotedPrintableCodec.decodeQuotedPrintable(paramArrayOfByte);
      break;
    }
  }

  protected byte[] doEncoding(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte;
    if (paramArrayOfByte == null)
      arrayOfByte = null;
    while (true)
    {
      return arrayOfByte;
      arrayOfByte = QuotedPrintableCodec.encodeQuotedPrintable(PRINTABLE_CHARS, paramArrayOfByte);
      if (this.encodeBlanks)
        for (int i = 0; i < arrayOfByte.length; i++)
          if (arrayOfByte[i] == 32)
            arrayOfByte[i] = 95;
    }
  }

  public Object encode(Object paramObject)
  {
    if (paramObject == null);
    for (Object localObject = null; ; localObject = encode((String)paramObject))
    {
      return localObject;
      if (!(paramObject instanceof String))
        break;
    }
    throw new EncoderException("Objects of type " + paramObject.getClass().getName() + " cannot be encoded using Q codec");
  }

  public String encode(String paramString)
  {
    if (paramString == null);
    for (String str = null; ; str = encode(paramString, getDefaultCharset()))
      return str;
  }

  public String encode(String paramString1, String paramString2)
  {
    Object localObject;
    if (paramString1 == null)
      localObject = null;
    while (true)
    {
      return localObject;
      try
      {
        String str = encodeText(paramString1, paramString2);
        localObject = str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new EncoderException(localUnsupportedEncodingException.getMessage(), localUnsupportedEncodingException);
      }
    }
  }

  public String getDefaultCharset()
  {
    return this.charset;
  }

  protected String getEncoding()
  {
    return "Q";
  }

  public boolean isEncodeBlanks()
  {
    return this.encodeBlanks;
  }

  public void setEncodeBlanks(boolean paramBoolean)
  {
    this.encodeBlanks = paramBoolean;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     king.org.apache.commons.codec.net.QCodec
 * JD-Core Version:    0.6.2
 */