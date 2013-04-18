package king.org.apache.commons.codec.binary;

import java.math.BigInteger;

public class Base64 extends BaseNCodec
{
  private static final int BITS_PER_ENCODED_BYTE = 6;
  private static final int BYTES_PER_ENCODED_BLOCK = 4;
  private static final int BYTES_PER_UNENCODED_BLOCK = 3;
  static final byte[] CHUNK_SEPARATOR = { 13, 10 };
  private static final byte[] DECODE_TABLE = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, 62, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51 };
  private static final int MASK_6BITS = 63;
  private static final byte[] STANDARD_ENCODE_TABLE = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
  private static final byte[] URL_SAFE_ENCODE_TABLE = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
  private int bitWorkArea;
  private final int decodeSize;
  private final byte[] decodeTable;
  private final int encodeSize;
  private final byte[] encodeTable;
  private final byte[] lineSeparator;

  public Base64()
  {
    this(0);
  }

  public Base64(int paramInt)
  {
    this(paramInt, CHUNK_SEPARATOR);
  }

  public Base64(int paramInt, byte[] paramArrayOfByte)
  {
    this(paramInt, paramArrayOfByte, false);
  }

  public Base64(int paramInt, byte[] paramArrayOfByte, boolean paramBoolean)
  {
  }

  public Base64(boolean paramBoolean)
  {
    this(76, CHUNK_SEPARATOR, paramBoolean);
  }

  public static byte[] decodeBase64(String paramString)
  {
    return new Base64().decode(paramString);
  }

  public static byte[] decodeBase64(byte[] paramArrayOfByte)
  {
    return new Base64().decode(paramArrayOfByte);
  }

  public static BigInteger decodeInteger(byte[] paramArrayOfByte)
  {
    return new BigInteger(1, decodeBase64(paramArrayOfByte));
  }

  public static byte[] encodeBase64(byte[] paramArrayOfByte)
  {
    return encodeBase64(paramArrayOfByte, false);
  }

  public static byte[] encodeBase64(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    return encodeBase64(paramArrayOfByte, paramBoolean, false);
  }

  public static byte[] encodeBase64(byte[] paramArrayOfByte, boolean paramBoolean1, boolean paramBoolean2)
  {
    return encodeBase64(paramArrayOfByte, paramBoolean1, paramBoolean2, 2147483647);
  }

  public static byte[] encodeBase64(byte[] paramArrayOfByte, boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0));
    Base64 localBase64;
    for (byte[] arrayOfByte = paramArrayOfByte; ; arrayOfByte = localBase64.encode(paramArrayOfByte))
    {
      return arrayOfByte;
      if (paramBoolean1);
      for (localBase64 = new Base64(paramBoolean2); ; localBase64 = new Base64(0, CHUNK_SEPARATOR, paramBoolean2))
      {
        long l = localBase64.getEncodedLength(paramArrayOfByte);
        if (l <= paramInt)
          break;
        throw new IllegalArgumentException("Input array too big, the output array would be bigger (" + l + ") than the specified maximum size of " + paramInt);
      }
    }
  }

  public static byte[] encodeBase64Chunked(byte[] paramArrayOfByte)
  {
    return encodeBase64(paramArrayOfByte, true);
  }

  public static String encodeBase64String(byte[] paramArrayOfByte)
  {
    return StringUtils.newStringUtf8(encodeBase64(paramArrayOfByte, false));
  }

  public static byte[] encodeBase64URLSafe(byte[] paramArrayOfByte)
  {
    return encodeBase64(paramArrayOfByte, false, true);
  }

  public static String encodeBase64URLSafeString(byte[] paramArrayOfByte)
  {
    return StringUtils.newStringUtf8(encodeBase64(paramArrayOfByte, false, true));
  }

  public static byte[] encodeInteger(BigInteger paramBigInteger)
  {
    if (paramBigInteger == null)
      throw new NullPointerException("encodeInteger called with null parameter");
    return encodeBase64(toIntegerBytes(paramBigInteger), false);
  }

  public static boolean isArrayByteBase64(byte[] paramArrayOfByte)
  {
    return isBase64(paramArrayOfByte);
  }

  public static boolean isBase64(byte paramByte)
  {
    if ((paramByte == 61) || ((paramByte >= 0) && (paramByte < DECODE_TABLE.length) && (DECODE_TABLE[paramByte] != -1)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean isBase64(String paramString)
  {
    return isBase64(StringUtils.getBytesUtf8(paramString));
  }

  public static boolean isBase64(byte[] paramArrayOfByte)
  {
    int i = 0;
    if (i < paramArrayOfByte.length)
      if ((isBase64(paramArrayOfByte[i])) || (isWhiteSpace(paramArrayOfByte[i])));
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      i++;
      break;
    }
  }

  static byte[] toIntegerBytes(BigInteger paramBigInteger)
  {
    int i = 7 + paramBigInteger.bitLength() >> 3 << 3;
    byte[] arrayOfByte1 = paramBigInteger.toByteArray();
    byte[] arrayOfByte2;
    if ((paramBigInteger.bitLength() % 8 != 0) && (1 + paramBigInteger.bitLength() / 8 == i / 8))
    {
      arrayOfByte2 = arrayOfByte1;
      return arrayOfByte2;
    }
    int j = arrayOfByte1.length;
    int m;
    int k;
    if (paramBigInteger.bitLength() % 8 == 0)
    {
      int i1 = j - 1;
      m = 1;
      k = i1;
    }
    while (true)
    {
      int n = i / 8 - k;
      arrayOfByte2 = new byte[i / 8];
      System.arraycopy(arrayOfByte1, m, arrayOfByte2, n, k);
      break;
      k = j;
      m = 0;
    }
  }

  void decode(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.eof);
    while (true)
    {
      return;
      if (paramInt2 < 0)
        this.eof = true;
      int i = 0;
      int i1;
      for (int j = paramInt1; ; j = i1)
      {
        int i2;
        if (i < paramInt2)
        {
          ensureBufferSize(this.decodeSize);
          i1 = j + 1;
          i2 = paramArrayOfByte[j];
          if (i2 == 61)
            this.eof = true;
        }
        else
        {
          if ((!this.eof) || (this.modulus == 0))
            break;
          ensureBufferSize(this.decodeSize);
        }
        switch (this.modulus)
        {
        default:
          break;
        case 2:
          this.bitWorkArea >>= 4;
          byte[] arrayOfByte3 = this.buffer;
          int n = this.pos;
          this.pos = (n + 1);
          arrayOfByte3[n] = ((byte)(0xFF & this.bitWorkArea));
          break;
          if ((i2 >= 0) && (i2 < DECODE_TABLE.length))
          {
            int i3 = DECODE_TABLE[i2];
            if (i3 >= 0)
            {
              this.modulus = ((1 + this.modulus) % 4);
              this.bitWorkArea = (i3 + (this.bitWorkArea << 6));
              if (this.modulus == 0)
              {
                byte[] arrayOfByte4 = this.buffer;
                int i4 = this.pos;
                this.pos = (i4 + 1);
                arrayOfByte4[i4] = ((byte)(0xFF & this.bitWorkArea >> 16));
                byte[] arrayOfByte5 = this.buffer;
                int i5 = this.pos;
                this.pos = (i5 + 1);
                arrayOfByte5[i5] = ((byte)(0xFF & this.bitWorkArea >> 8));
                byte[] arrayOfByte6 = this.buffer;
                int i6 = this.pos;
                this.pos = (i6 + 1);
                arrayOfByte6[i6] = ((byte)(0xFF & this.bitWorkArea));
              }
            }
          }
          i++;
        case 3:
        }
      }
      this.bitWorkArea >>= 2;
      byte[] arrayOfByte1 = this.buffer;
      int k = this.pos;
      this.pos = (k + 1);
      arrayOfByte1[k] = ((byte)(0xFF & this.bitWorkArea >> 8));
      byte[] arrayOfByte2 = this.buffer;
      int m = this.pos;
      this.pos = (m + 1);
      arrayOfByte2[m] = ((byte)(0xFF & this.bitWorkArea));
    }
  }

  void encode(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.eof);
    while (true)
    {
      return;
      if (paramInt2 < 0)
      {
        this.eof = true;
        if ((this.modulus != 0) || (this.lineLength != 0))
        {
          ensureBufferSize(this.encodeSize);
          int i4 = this.pos;
          switch (this.modulus)
          {
          default:
          case 1:
          case 2:
          }
          while (true)
          {
            this.currentLinePos += this.pos - i4;
            if ((this.lineLength <= 0) || (this.currentLinePos <= 0))
              break;
            System.arraycopy(this.lineSeparator, 0, this.buffer, this.pos, this.lineSeparator.length);
            this.pos += this.lineSeparator.length;
            break;
            byte[] arrayOfByte9 = this.buffer;
            int i9 = this.pos;
            this.pos = (i9 + 1);
            arrayOfByte9[i9] = this.encodeTable[(0x3F & this.bitWorkArea >> 2)];
            byte[] arrayOfByte10 = this.buffer;
            int i10 = this.pos;
            this.pos = (i10 + 1);
            arrayOfByte10[i10] = this.encodeTable[(0x3F & this.bitWorkArea << 4)];
            if (this.encodeTable == STANDARD_ENCODE_TABLE)
            {
              byte[] arrayOfByte11 = this.buffer;
              int i11 = this.pos;
              this.pos = (i11 + 1);
              arrayOfByte11[i11] = 61;
              byte[] arrayOfByte12 = this.buffer;
              int i12 = this.pos;
              this.pos = (i12 + 1);
              arrayOfByte12[i12] = 61;
              continue;
              byte[] arrayOfByte5 = this.buffer;
              int i5 = this.pos;
              this.pos = (i5 + 1);
              arrayOfByte5[i5] = this.encodeTable[(0x3F & this.bitWorkArea >> 10)];
              byte[] arrayOfByte6 = this.buffer;
              int i6 = this.pos;
              this.pos = (i6 + 1);
              arrayOfByte6[i6] = this.encodeTable[(0x3F & this.bitWorkArea >> 4)];
              byte[] arrayOfByte7 = this.buffer;
              int i7 = this.pos;
              this.pos = (i7 + 1);
              arrayOfByte7[i7] = this.encodeTable[(0x3F & this.bitWorkArea << 2)];
              if (this.encodeTable == STANDARD_ENCODE_TABLE)
              {
                byte[] arrayOfByte8 = this.buffer;
                int i8 = this.pos;
                this.pos = (i8 + 1);
                arrayOfByte8[i8] = 61;
              }
            }
          }
        }
      }
      else
      {
        int i = 0;
        int k;
        for (int j = paramInt1; i < paramInt2; j = k)
        {
          ensureBufferSize(this.encodeSize);
          this.modulus = ((1 + this.modulus) % 3);
          k = j + 1;
          int m = paramArrayOfByte[j];
          if (m < 0)
            m += 256;
          this.bitWorkArea = (m + (this.bitWorkArea << 8));
          if (this.modulus == 0)
          {
            byte[] arrayOfByte1 = this.buffer;
            int n = this.pos;
            this.pos = (n + 1);
            arrayOfByte1[n] = this.encodeTable[(0x3F & this.bitWorkArea >> 18)];
            byte[] arrayOfByte2 = this.buffer;
            int i1 = this.pos;
            this.pos = (i1 + 1);
            arrayOfByte2[i1] = this.encodeTable[(0x3F & this.bitWorkArea >> 12)];
            byte[] arrayOfByte3 = this.buffer;
            int i2 = this.pos;
            this.pos = (i2 + 1);
            arrayOfByte3[i2] = this.encodeTable[(0x3F & this.bitWorkArea >> 6)];
            byte[] arrayOfByte4 = this.buffer;
            int i3 = this.pos;
            this.pos = (i3 + 1);
            arrayOfByte4[i3] = this.encodeTable[(0x3F & this.bitWorkArea)];
            this.currentLinePos = (4 + this.currentLinePos);
            if ((this.lineLength > 0) && (this.lineLength <= this.currentLinePos))
            {
              System.arraycopy(this.lineSeparator, 0, this.buffer, this.pos, this.lineSeparator.length);
              this.pos += this.lineSeparator.length;
              this.currentLinePos = 0;
            }
          }
          i++;
        }
      }
    }
  }

  protected boolean isInAlphabet(byte paramByte)
  {
    if ((paramByte >= 0) && (paramByte < this.decodeTable.length) && (this.decodeTable[paramByte] != -1));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean isUrlSafe()
  {
    if (this.encodeTable == URL_SAFE_ENCODE_TABLE);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     king.org.apache.commons.codec.binary.Base64
 * JD-Core Version:    0.6.2
 */