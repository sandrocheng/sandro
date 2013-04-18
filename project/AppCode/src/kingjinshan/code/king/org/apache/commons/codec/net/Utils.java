package king.org.apache.commons.codec.net;

import king.org.apache.commons.codec.DecoderException;

class Utils
{
  static int digit16(byte paramByte)
  {
    int i = Character.digit((char)paramByte, 16);
    if (i == -1)
      throw new DecoderException("Invalid URL encoding: not a valid digit (radix 16): " + paramByte);
    return i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     king.org.apache.commons.codec.net.Utils
 * JD-Core Version:    0.6.2
 */