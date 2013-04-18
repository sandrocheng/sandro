package king.org.apache.commons.codec.binary;

import java.io.UnsupportedEncodingException;
import king.org.apache.commons.codec.BinaryDecoder;
import king.org.apache.commons.codec.BinaryEncoder;
import king.org.apache.commons.codec.DecoderException;
import king.org.apache.commons.codec.EncoderException;

public class Hex
  implements BinaryDecoder, BinaryEncoder
{
  public static final String DEFAULT_CHARSET_NAME = "UTF-8";
  private static final char[] DIGITS_LOWER = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private static final char[] DIGITS_UPPER = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  private final String charsetName;

  public Hex()
  {
    this.charsetName = "UTF-8";
  }

  public Hex(String paramString)
  {
    this.charsetName = paramString;
  }

  public static byte[] decodeHex(char[] paramArrayOfChar)
  {
    int i = 0;
    int j = paramArrayOfChar.length;
    if ((j & 0x1) != 0)
      throw new DecoderException("Odd number of characters.");
    byte[] arrayOfByte = new byte[j >> 1];
    for (int k = 0; i < j; k++)
    {
      int m = toDigit(paramArrayOfChar[i], i) << 4;
      int n = i + 1;
      int i1 = m | toDigit(paramArrayOfChar[n], n);
      i = n + 1;
      arrayOfByte[k] = ((byte)(i1 & 0xFF));
    }
    return arrayOfByte;
  }

  public static char[] encodeHex(byte[] paramArrayOfByte)
  {
    return encodeHex(paramArrayOfByte, true);
  }

  public static char[] encodeHex(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    if (paramBoolean);
    for (char[] arrayOfChar = DIGITS_LOWER; ; arrayOfChar = DIGITS_UPPER)
      return encodeHex(paramArrayOfByte, arrayOfChar);
  }

  protected static char[] encodeHex(byte[] paramArrayOfByte, char[] paramArrayOfChar)
  {
    int i = 0;
    int j = paramArrayOfByte.length;
    char[] arrayOfChar = new char[j << 1];
    for (int k = 0; k < j; k++)
    {
      int m = i + 1;
      arrayOfChar[i] = paramArrayOfChar[((0xF0 & paramArrayOfByte[k]) >>> 4)];
      i = m + 1;
      arrayOfChar[m] = paramArrayOfChar[(0xF & paramArrayOfByte[k])];
    }
    return arrayOfChar;
  }

  public static String encodeHexString(byte[] paramArrayOfByte)
  {
    return new String(encodeHex(paramArrayOfByte));
  }

  protected static int toDigit(char paramChar, int paramInt)
  {
    int i = Character.digit(paramChar, 16);
    if (i == -1)
      throw new DecoderException("Illegal hexadecimal character " + paramChar + " at index " + paramInt);
    return i;
  }

  public Object decode(Object paramObject)
  {
    try
    {
      if ((paramObject instanceof String));
      char[] arrayOfChar;
      for (Object localObject = ((String)paramObject).toCharArray(); ; localObject = arrayOfChar)
      {
        return decodeHex((char[])localObject);
        arrayOfChar = (char[])paramObject;
      }
    }
    catch (ClassCastException localClassCastException)
    {
      throw new DecoderException(localClassCastException.getMessage(), localClassCastException);
    }
  }

  public byte[] decode(byte[] paramArrayOfByte)
  {
    try
    {
      byte[] arrayOfByte = decodeHex(new String(paramArrayOfByte, getCharsetName()).toCharArray());
      return arrayOfByte;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new DecoderException(localUnsupportedEncodingException.getMessage(), localUnsupportedEncodingException);
    }
  }

  public Object encode(Object paramObject)
  {
    try
    {
      if ((paramObject instanceof String));
      byte[] arrayOfByte;
      for (Object localObject = ((String)paramObject).getBytes(getCharsetName()); ; localObject = arrayOfByte)
      {
        return encodeHex((byte[])localObject);
        arrayOfByte = (byte[])paramObject;
      }
    }
    catch (ClassCastException localClassCastException)
    {
      throw new EncoderException(localClassCastException.getMessage(), localClassCastException);
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new EncoderException(localUnsupportedEncodingException.getMessage(), localUnsupportedEncodingException);
    }
  }

  public byte[] encode(byte[] paramArrayOfByte)
  {
    return StringUtils.getBytesUnchecked(encodeHexString(paramArrayOfByte), getCharsetName());
  }

  public String getCharsetName()
  {
    return this.charsetName;
  }

  public String toString()
  {
    return super.toString() + "[charsetName=" + this.charsetName + "]";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     king.org.apache.commons.codec.binary.Hex
 * JD-Core Version:    0.6.2
 */