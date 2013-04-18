package king.org.apache.commons.codec.net;

import java.io.UnsupportedEncodingException;
import king.org.apache.commons.codec.DecoderException;
import king.org.apache.commons.codec.EncoderException;
import king.org.apache.commons.codec.StringDecoder;
import king.org.apache.commons.codec.StringEncoder;
import king.org.apache.commons.codec.binary.Base64;

public class BCodec extends RFC1522Codec
  implements StringDecoder, StringEncoder
{
  private final String charset;

  public BCodec()
  {
    this("UTF-8");
  }

  public BCodec(String paramString)
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
    throw new DecoderException("Objects of type " + paramObject.getClass().getName() + " cannot be decoded using BCodec");
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
    if (paramArrayOfByte == null);
    for (byte[] arrayOfByte = null; ; arrayOfByte = Base64.decodeBase64(paramArrayOfByte))
      return arrayOfByte;
  }

  protected byte[] doEncoding(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null);
    for (byte[] arrayOfByte = null; ; arrayOfByte = Base64.encodeBase64(paramArrayOfByte))
      return arrayOfByte;
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
    throw new EncoderException("Objects of type " + paramObject.getClass().getName() + " cannot be encoded using BCodec");
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
    return "B";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     king.org.apache.commons.codec.net.BCodec
 * JD-Core Version:    0.6.2
 */