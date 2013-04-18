package king.org.apache.commons.codec.binary;

import king.org.apache.commons.codec.BinaryDecoder;
import king.org.apache.commons.codec.BinaryEncoder;
import king.org.apache.commons.codec.DecoderException;
import king.org.apache.commons.codec.EncoderException;

public class BinaryCodec
  implements BinaryDecoder, BinaryEncoder
{
  private static final int[] BITS = { 1, 2, 4, 8, 16, 32, 64, 128 };
  private static final int BIT_0 = 1;
  private static final int BIT_1 = 2;
  private static final int BIT_2 = 4;
  private static final int BIT_3 = 8;
  private static final int BIT_4 = 16;
  private static final int BIT_5 = 32;
  private static final int BIT_6 = 64;
  private static final int BIT_7 = 128;
  private static final byte[] EMPTY_BYTE_ARRAY;
  private static final char[] EMPTY_CHAR_ARRAY = new char[0];

  static
  {
    EMPTY_BYTE_ARRAY = new byte[0];
  }

  public static byte[] fromAscii(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte;
    if (isEmpty(paramArrayOfByte))
      arrayOfByte = EMPTY_BYTE_ARRAY;
    while (true)
    {
      return arrayOfByte;
      arrayOfByte = new byte[paramArrayOfByte.length >> 3];
      int i = paramArrayOfByte.length - 1;
      int j = 0;
      while (j < arrayOfByte.length)
      {
        for (int k = 0; k < BITS.length; k++)
          if (paramArrayOfByte[(i - k)] == 49)
            arrayOfByte[j] = ((byte)(arrayOfByte[j] | BITS[k]));
        j++;
        i -= 8;
      }
    }
  }

  public static byte[] fromAscii(char[] paramArrayOfChar)
  {
    byte[] arrayOfByte;
    if ((paramArrayOfChar == null) || (paramArrayOfChar.length == 0))
      arrayOfByte = EMPTY_BYTE_ARRAY;
    while (true)
    {
      return arrayOfByte;
      arrayOfByte = new byte[paramArrayOfChar.length >> 3];
      int i = paramArrayOfChar.length - 1;
      int j = 0;
      while (j < arrayOfByte.length)
      {
        for (int k = 0; k < BITS.length; k++)
          if (paramArrayOfChar[(i - k)] == '1')
            arrayOfByte[j] = ((byte)(arrayOfByte[j] | BITS[k]));
        j++;
        i -= 8;
      }
    }
  }

  private static boolean isEmpty(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static byte[] toAsciiBytes(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte;
    if (isEmpty(paramArrayOfByte))
      arrayOfByte = EMPTY_BYTE_ARRAY;
    while (true)
    {
      return arrayOfByte;
      arrayOfByte = new byte[paramArrayOfByte.length << 3];
      int i = arrayOfByte.length - 1;
      int j = 0;
      while (j < paramArrayOfByte.length)
      {
        int k = 0;
        if (k < BITS.length)
        {
          if ((paramArrayOfByte[j] & BITS[k]) == 0)
            arrayOfByte[(i - k)] = 48;
          while (true)
          {
            k++;
            break;
            arrayOfByte[(i - k)] = 49;
          }
        }
        j++;
        i -= 8;
      }
    }
  }

  public static char[] toAsciiChars(byte[] paramArrayOfByte)
  {
    char[] arrayOfChar;
    if (isEmpty(paramArrayOfByte))
      arrayOfChar = EMPTY_CHAR_ARRAY;
    while (true)
    {
      return arrayOfChar;
      arrayOfChar = new char[paramArrayOfByte.length << 3];
      int i = arrayOfChar.length - 1;
      int j = 0;
      while (j < paramArrayOfByte.length)
      {
        int k = 0;
        if (k < BITS.length)
        {
          if ((paramArrayOfByte[j] & BITS[k]) == 0)
            arrayOfChar[(i - k)] = '0';
          while (true)
          {
            k++;
            break;
            arrayOfChar[(i - k)] = '1';
          }
        }
        j++;
        i -= 8;
      }
    }
  }

  public static String toAsciiString(byte[] paramArrayOfByte)
  {
    return new String(toAsciiChars(paramArrayOfByte));
  }

  public Object decode(Object paramObject)
  {
    byte[] arrayOfByte;
    if (paramObject == null)
      arrayOfByte = EMPTY_BYTE_ARRAY;
    while (true)
    {
      return arrayOfByte;
      if ((paramObject instanceof byte[]))
      {
        arrayOfByte = fromAscii((byte[])paramObject);
      }
      else if ((paramObject instanceof char[]))
      {
        arrayOfByte = fromAscii((char[])paramObject);
      }
      else
      {
        if (!(paramObject instanceof String))
          break;
        arrayOfByte = fromAscii(((String)paramObject).toCharArray());
      }
    }
    throw new DecoderException("argument not a byte array");
  }

  public byte[] decode(byte[] paramArrayOfByte)
  {
    return fromAscii(paramArrayOfByte);
  }

  public Object encode(Object paramObject)
  {
    if (!(paramObject instanceof byte[]))
      throw new EncoderException("argument not a byte array");
    return toAsciiChars((byte[])paramObject);
  }

  public byte[] encode(byte[] paramArrayOfByte)
  {
    return toAsciiBytes(paramArrayOfByte);
  }

  public byte[] toByteArray(String paramString)
  {
    if (paramString == null);
    for (byte[] arrayOfByte = EMPTY_BYTE_ARRAY; ; arrayOfByte = fromAscii(paramString.toCharArray()))
      return arrayOfByte;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     king.org.apache.commons.codec.binary.BinaryCodec
 * JD-Core Version:    0.6.2
 */