package king.org.apache.commons.codec.binary;

public class Base32 extends BaseNCodec
{
  private static final int BITS_PER_ENCODED_BYTE = 5;
  private static final int BYTES_PER_ENCODED_BLOCK = 8;
  private static final int BYTES_PER_UNENCODED_BLOCK = 5;
  private static final byte[] CHUNK_SEPARATOR = { 13, 10 };
  private static final byte[] DECODE_TABLE = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 63, -1, -1, 26, 27, 28, 29, 30, 31, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 };
  private static final byte[] ENCODE_TABLE = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 50, 51, 52, 53, 54, 55 };
  private static final byte[] HEX_DECODE_TABLE = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 63, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, -1, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32 };
  private static final byte[] HEX_ENCODE_TABLE = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86 };
  private static final int MASK_5BITS = 31;
  private long bitWorkArea;
  private final int decodeSize;
  private final byte[] decodeTable;
  private final int encodeSize;
  private final byte[] encodeTable;
  private final byte[] lineSeparator;

  public Base32()
  {
    this(false);
  }

  public Base32(int paramInt)
  {
    this(paramInt, CHUNK_SEPARATOR);
  }

  public Base32(int paramInt, byte[] paramArrayOfByte)
  {
    this(paramInt, paramArrayOfByte, false);
  }

  public Base32(int paramInt, byte[] paramArrayOfByte, boolean paramBoolean)
  {
  }

  public Base32(boolean paramBoolean)
  {
    this(0, null, paramBoolean);
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
      int i12;
      for (int j = paramInt1; ; j = i12)
      {
        int i13;
        if (i < paramInt2)
        {
          i12 = j + 1;
          i13 = paramArrayOfByte[j];
          if (i13 == 61)
            this.eof = true;
        }
        else
        {
          if ((!this.eof) || (this.modulus < 2))
            break;
          ensureBufferSize(this.decodeSize);
        }
        switch (this.modulus)
        {
        default:
          break;
        case 2:
          byte[] arrayOfByte14 = this.buffer;
          int i11 = this.pos;
          this.pos = (i11 + 1);
          arrayOfByte14[i11] = ((byte)(int)(0xFF & this.bitWorkArea >> 2));
          break;
          ensureBufferSize(this.decodeSize);
          if ((i13 >= 0) && (i13 < this.decodeTable.length))
          {
            int i14 = this.decodeTable[i13];
            if (i14 >= 0)
            {
              this.modulus = ((1 + this.modulus) % 8);
              this.bitWorkArea = ((this.bitWorkArea << 5) + i14);
              if (this.modulus == 0)
              {
                byte[] arrayOfByte15 = this.buffer;
                int i15 = this.pos;
                this.pos = (i15 + 1);
                arrayOfByte15[i15] = ((byte)(int)(0xFF & this.bitWorkArea >> 32));
                byte[] arrayOfByte16 = this.buffer;
                int i16 = this.pos;
                this.pos = (i16 + 1);
                arrayOfByte16[i16] = ((byte)(int)(0xFF & this.bitWorkArea >> 24));
                byte[] arrayOfByte17 = this.buffer;
                int i17 = this.pos;
                this.pos = (i17 + 1);
                arrayOfByte17[i17] = ((byte)(int)(0xFF & this.bitWorkArea >> 16));
                byte[] arrayOfByte18 = this.buffer;
                int i18 = this.pos;
                this.pos = (i18 + 1);
                arrayOfByte18[i18] = ((byte)(int)(0xFF & this.bitWorkArea >> 8));
                byte[] arrayOfByte19 = this.buffer;
                int i19 = this.pos;
                this.pos = (i19 + 1);
                arrayOfByte19[i19] = ((byte)(int)(0xFF & this.bitWorkArea));
              }
            }
          }
          i++;
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        }
      }
      byte[] arrayOfByte13 = this.buffer;
      int i10 = this.pos;
      this.pos = (i10 + 1);
      arrayOfByte13[i10] = ((byte)(int)(0xFF & this.bitWorkArea >> 7));
      continue;
      this.bitWorkArea >>= 4;
      byte[] arrayOfByte11 = this.buffer;
      int i8 = this.pos;
      this.pos = (i8 + 1);
      arrayOfByte11[i8] = ((byte)(int)(0xFF & this.bitWorkArea >> 8));
      byte[] arrayOfByte12 = this.buffer;
      int i9 = this.pos;
      this.pos = (i9 + 1);
      arrayOfByte12[i9] = ((byte)(int)(0xFF & this.bitWorkArea));
      continue;
      this.bitWorkArea >>= 1;
      byte[] arrayOfByte8 = this.buffer;
      int i5 = this.pos;
      this.pos = (i5 + 1);
      arrayOfByte8[i5] = ((byte)(int)(0xFF & this.bitWorkArea >> 16));
      byte[] arrayOfByte9 = this.buffer;
      int i6 = this.pos;
      this.pos = (i6 + 1);
      arrayOfByte9[i6] = ((byte)(int)(0xFF & this.bitWorkArea >> 8));
      byte[] arrayOfByte10 = this.buffer;
      int i7 = this.pos;
      this.pos = (i7 + 1);
      arrayOfByte10[i7] = ((byte)(int)(0xFF & this.bitWorkArea));
      continue;
      this.bitWorkArea >>= 6;
      byte[] arrayOfByte5 = this.buffer;
      int i2 = this.pos;
      this.pos = (i2 + 1);
      arrayOfByte5[i2] = ((byte)(int)(0xFF & this.bitWorkArea >> 16));
      byte[] arrayOfByte6 = this.buffer;
      int i3 = this.pos;
      this.pos = (i3 + 1);
      arrayOfByte6[i3] = ((byte)(int)(0xFF & this.bitWorkArea >> 8));
      byte[] arrayOfByte7 = this.buffer;
      int i4 = this.pos;
      this.pos = (i4 + 1);
      arrayOfByte7[i4] = ((byte)(int)(0xFF & this.bitWorkArea));
      continue;
      this.bitWorkArea >>= 3;
      byte[] arrayOfByte1 = this.buffer;
      int k = this.pos;
      this.pos = (k + 1);
      arrayOfByte1[k] = ((byte)(int)(0xFF & this.bitWorkArea >> 24));
      byte[] arrayOfByte2 = this.buffer;
      int m = this.pos;
      this.pos = (m + 1);
      arrayOfByte2[m] = ((byte)(int)(0xFF & this.bitWorkArea >> 16));
      byte[] arrayOfByte3 = this.buffer;
      int n = this.pos;
      this.pos = (n + 1);
      arrayOfByte3[n] = ((byte)(int)(0xFF & this.bitWorkArea >> 8));
      byte[] arrayOfByte4 = this.buffer;
      int i1 = this.pos;
      this.pos = (i1 + 1);
      arrayOfByte4[i1] = ((byte)(int)(0xFF & this.bitWorkArea));
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
          int i8 = this.pos;
          switch (this.modulus)
          {
          default:
          case 1:
          case 2:
          case 3:
          case 4:
          }
          while (true)
          {
            this.currentLinePos += this.pos - i8;
            if ((this.lineLength <= 0) || (this.currentLinePos <= 0))
              break;
            System.arraycopy(this.lineSeparator, 0, this.buffer, this.pos, this.lineSeparator.length);
            this.pos += this.lineSeparator.length;
            break;
            byte[] arrayOfByte33 = this.buffer;
            int i33 = this.pos;
            this.pos = (i33 + 1);
            arrayOfByte33[i33] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 3))];
            byte[] arrayOfByte34 = this.buffer;
            int i34 = this.pos;
            this.pos = (i34 + 1);
            arrayOfByte34[i34] = this.encodeTable[(0x1F & (int)(this.bitWorkArea << 2))];
            byte[] arrayOfByte35 = this.buffer;
            int i35 = this.pos;
            this.pos = (i35 + 1);
            arrayOfByte35[i35] = 61;
            byte[] arrayOfByte36 = this.buffer;
            int i36 = this.pos;
            this.pos = (i36 + 1);
            arrayOfByte36[i36] = 61;
            byte[] arrayOfByte37 = this.buffer;
            int i37 = this.pos;
            this.pos = (i37 + 1);
            arrayOfByte37[i37] = 61;
            byte[] arrayOfByte38 = this.buffer;
            int i38 = this.pos;
            this.pos = (i38 + 1);
            arrayOfByte38[i38] = 61;
            byte[] arrayOfByte39 = this.buffer;
            int i39 = this.pos;
            this.pos = (i39 + 1);
            arrayOfByte39[i39] = 61;
            byte[] arrayOfByte40 = this.buffer;
            int i40 = this.pos;
            this.pos = (i40 + 1);
            arrayOfByte40[i40] = 61;
            continue;
            byte[] arrayOfByte25 = this.buffer;
            int i25 = this.pos;
            this.pos = (i25 + 1);
            arrayOfByte25[i25] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 11))];
            byte[] arrayOfByte26 = this.buffer;
            int i26 = this.pos;
            this.pos = (i26 + 1);
            arrayOfByte26[i26] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 6))];
            byte[] arrayOfByte27 = this.buffer;
            int i27 = this.pos;
            this.pos = (i27 + 1);
            arrayOfByte27[i27] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 1))];
            byte[] arrayOfByte28 = this.buffer;
            int i28 = this.pos;
            this.pos = (i28 + 1);
            arrayOfByte28[i28] = this.encodeTable[(0x1F & (int)(this.bitWorkArea << 4))];
            byte[] arrayOfByte29 = this.buffer;
            int i29 = this.pos;
            this.pos = (i29 + 1);
            arrayOfByte29[i29] = 61;
            byte[] arrayOfByte30 = this.buffer;
            int i30 = this.pos;
            this.pos = (i30 + 1);
            arrayOfByte30[i30] = 61;
            byte[] arrayOfByte31 = this.buffer;
            int i31 = this.pos;
            this.pos = (i31 + 1);
            arrayOfByte31[i31] = 61;
            byte[] arrayOfByte32 = this.buffer;
            int i32 = this.pos;
            this.pos = (i32 + 1);
            arrayOfByte32[i32] = 61;
            continue;
            byte[] arrayOfByte17 = this.buffer;
            int i17 = this.pos;
            this.pos = (i17 + 1);
            arrayOfByte17[i17] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 19))];
            byte[] arrayOfByte18 = this.buffer;
            int i18 = this.pos;
            this.pos = (i18 + 1);
            arrayOfByte18[i18] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 14))];
            byte[] arrayOfByte19 = this.buffer;
            int i19 = this.pos;
            this.pos = (i19 + 1);
            arrayOfByte19[i19] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 9))];
            byte[] arrayOfByte20 = this.buffer;
            int i20 = this.pos;
            this.pos = (i20 + 1);
            arrayOfByte20[i20] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 4))];
            byte[] arrayOfByte21 = this.buffer;
            int i21 = this.pos;
            this.pos = (i21 + 1);
            arrayOfByte21[i21] = this.encodeTable[(0x1F & (int)(this.bitWorkArea << 1))];
            byte[] arrayOfByte22 = this.buffer;
            int i22 = this.pos;
            this.pos = (i22 + 1);
            arrayOfByte22[i22] = 61;
            byte[] arrayOfByte23 = this.buffer;
            int i23 = this.pos;
            this.pos = (i23 + 1);
            arrayOfByte23[i23] = 61;
            byte[] arrayOfByte24 = this.buffer;
            int i24 = this.pos;
            this.pos = (i24 + 1);
            arrayOfByte24[i24] = 61;
            continue;
            byte[] arrayOfByte9 = this.buffer;
            int i9 = this.pos;
            this.pos = (i9 + 1);
            arrayOfByte9[i9] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 27))];
            byte[] arrayOfByte10 = this.buffer;
            int i10 = this.pos;
            this.pos = (i10 + 1);
            arrayOfByte10[i10] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 22))];
            byte[] arrayOfByte11 = this.buffer;
            int i11 = this.pos;
            this.pos = (i11 + 1);
            arrayOfByte11[i11] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 17))];
            byte[] arrayOfByte12 = this.buffer;
            int i12 = this.pos;
            this.pos = (i12 + 1);
            arrayOfByte12[i12] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 12))];
            byte[] arrayOfByte13 = this.buffer;
            int i13 = this.pos;
            this.pos = (i13 + 1);
            arrayOfByte13[i13] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 7))];
            byte[] arrayOfByte14 = this.buffer;
            int i14 = this.pos;
            this.pos = (i14 + 1);
            arrayOfByte14[i14] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 2))];
            byte[] arrayOfByte15 = this.buffer;
            int i15 = this.pos;
            this.pos = (i15 + 1);
            arrayOfByte15[i15] = this.encodeTable[(0x1F & (int)(this.bitWorkArea << 3))];
            byte[] arrayOfByte16 = this.buffer;
            int i16 = this.pos;
            this.pos = (i16 + 1);
            arrayOfByte16[i16] = 61;
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
          this.modulus = ((1 + this.modulus) % 5);
          k = j + 1;
          int m = paramArrayOfByte[j];
          if (m < 0)
            m += 256;
          this.bitWorkArea = ((this.bitWorkArea << 8) + m);
          if (this.modulus == 0)
          {
            byte[] arrayOfByte1 = this.buffer;
            int n = this.pos;
            this.pos = (n + 1);
            arrayOfByte1[n] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 35))];
            byte[] arrayOfByte2 = this.buffer;
            int i1 = this.pos;
            this.pos = (i1 + 1);
            arrayOfByte2[i1] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 30))];
            byte[] arrayOfByte3 = this.buffer;
            int i2 = this.pos;
            this.pos = (i2 + 1);
            arrayOfByte3[i2] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 25))];
            byte[] arrayOfByte4 = this.buffer;
            int i3 = this.pos;
            this.pos = (i3 + 1);
            arrayOfByte4[i3] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 20))];
            byte[] arrayOfByte5 = this.buffer;
            int i4 = this.pos;
            this.pos = (i4 + 1);
            arrayOfByte5[i4] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 15))];
            byte[] arrayOfByte6 = this.buffer;
            int i5 = this.pos;
            this.pos = (i5 + 1);
            arrayOfByte6[i5] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 10))];
            byte[] arrayOfByte7 = this.buffer;
            int i6 = this.pos;
            this.pos = (i6 + 1);
            arrayOfByte7[i6] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 5))];
            byte[] arrayOfByte8 = this.buffer;
            int i7 = this.pos;
            this.pos = (i7 + 1);
            arrayOfByte8[i7] = this.encodeTable[(0x1F & (int)this.bitWorkArea)];
            this.currentLinePos = (8 + this.currentLinePos);
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

  public boolean isInAlphabet(byte paramByte)
  {
    if ((paramByte >= 0) && (paramByte < this.decodeTable.length) && (this.decodeTable[paramByte] != -1));
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     king.org.apache.commons.codec.binary.Base32
 * JD-Core Version:    0.6.2
 */