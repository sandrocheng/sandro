package com.google.zxing.qrcode.encoder;

import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitArray;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonEncoder;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.Version;
import com.google.zxing.qrcode.decoder.Version.ECBlocks;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class Encoder
{
  private static final int[] ALPHANUMERIC_TABLE = arrayOfInt;
  static final String DEFAULT_BYTE_MODE_ENCODING = "ISO-8859-1";

  static
  {
    int[] arrayOfInt = new int[96];
    arrayOfInt[0] = -1;
    arrayOfInt[1] = -1;
    arrayOfInt[2] = -1;
    arrayOfInt[3] = -1;
    arrayOfInt[4] = -1;
    arrayOfInt[5] = -1;
    arrayOfInt[6] = -1;
    arrayOfInt[7] = -1;
    arrayOfInt[8] = -1;
    arrayOfInt[9] = -1;
    arrayOfInt[10] = -1;
    arrayOfInt[11] = -1;
    arrayOfInt[12] = -1;
    arrayOfInt[13] = -1;
    arrayOfInt[14] = -1;
    arrayOfInt[15] = -1;
    arrayOfInt[16] = -1;
    arrayOfInt[17] = -1;
    arrayOfInt[18] = -1;
    arrayOfInt[19] = -1;
    arrayOfInt[20] = -1;
    arrayOfInt[21] = -1;
    arrayOfInt[22] = -1;
    arrayOfInt[23] = -1;
    arrayOfInt[24] = -1;
    arrayOfInt[25] = -1;
    arrayOfInt[26] = -1;
    arrayOfInt[27] = -1;
    arrayOfInt[28] = -1;
    arrayOfInt[29] = -1;
    arrayOfInt[30] = -1;
    arrayOfInt[31] = -1;
    arrayOfInt[32] = 36;
    arrayOfInt[33] = -1;
    arrayOfInt[34] = -1;
    arrayOfInt[35] = -1;
    arrayOfInt[36] = 37;
    arrayOfInt[37] = 38;
    arrayOfInt[38] = -1;
    arrayOfInt[39] = -1;
    arrayOfInt[40] = -1;
    arrayOfInt[41] = -1;
    arrayOfInt[42] = 39;
    arrayOfInt[43] = 40;
    arrayOfInt[44] = -1;
    arrayOfInt[45] = 41;
    arrayOfInt[46] = 42;
    arrayOfInt[47] = 43;
    arrayOfInt[49] = 1;
    arrayOfInt[50] = 2;
    arrayOfInt[51] = 3;
    arrayOfInt[52] = 4;
    arrayOfInt[53] = 5;
    arrayOfInt[54] = 6;
    arrayOfInt[55] = 7;
    arrayOfInt[56] = 8;
    arrayOfInt[57] = 9;
    arrayOfInt[58] = 44;
    arrayOfInt[59] = -1;
    arrayOfInt[60] = -1;
    arrayOfInt[61] = -1;
    arrayOfInt[62] = -1;
    arrayOfInt[63] = -1;
    arrayOfInt[64] = -1;
    arrayOfInt[65] = 10;
    arrayOfInt[66] = 11;
    arrayOfInt[67] = 12;
    arrayOfInt[68] = 13;
    arrayOfInt[69] = 14;
    arrayOfInt[70] = 15;
    arrayOfInt[71] = 16;
    arrayOfInt[72] = 17;
    arrayOfInt[73] = 18;
    arrayOfInt[74] = 19;
    arrayOfInt[75] = 20;
    arrayOfInt[76] = 21;
    arrayOfInt[77] = 22;
    arrayOfInt[78] = 23;
    arrayOfInt[79] = 24;
    arrayOfInt[80] = 25;
    arrayOfInt[81] = 26;
    arrayOfInt[82] = 27;
    arrayOfInt[83] = 28;
    arrayOfInt[84] = 29;
    arrayOfInt[85] = 30;
    arrayOfInt[86] = 31;
    arrayOfInt[87] = 32;
    arrayOfInt[88] = 33;
    arrayOfInt[89] = 34;
    arrayOfInt[90] = 35;
    arrayOfInt[91] = -1;
    arrayOfInt[92] = -1;
    arrayOfInt[93] = -1;
    arrayOfInt[94] = -1;
    arrayOfInt[95] = -1;
  }

  static void append8BitBytes(String paramString1, BitArray paramBitArray, String paramString2)
  {
    while (true)
    {
      byte[] arrayOfByte;
      int j;
      try
      {
        arrayOfByte = paramString1.getBytes(paramString2);
        int i = arrayOfByte.length;
        j = 0;
        if (j >= i)
          return;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new WriterException(localUnsupportedEncodingException.toString());
      }
      paramBitArray.appendBits(arrayOfByte[j], 8);
      j++;
    }
  }

  static void appendAlphanumericBytes(CharSequence paramCharSequence, BitArray paramBitArray)
  {
    int i = paramCharSequence.length();
    int j = 0;
    while (true)
    {
      if (j >= i)
        return;
      int k = getAlphanumericCode(paramCharSequence.charAt(j));
      if (k == -1)
        throw new WriterException();
      if (j + 1 < i)
      {
        int m = getAlphanumericCode(paramCharSequence.charAt(j + 1));
        if (m == -1)
          throw new WriterException();
        paramBitArray.appendBits(m + k * 45, 11);
        j += 2;
      }
      else
      {
        paramBitArray.appendBits(k, 6);
        j++;
      }
    }
  }

  static void appendBytes(String paramString1, Mode paramMode, BitArray paramBitArray, String paramString2)
  {
    switch ($SWITCH_TABLE$com$google$zxing$qrcode$decoder$Mode()[paramMode.ordinal()])
    {
    case 4:
    case 6:
    default:
      throw new WriterException("Invalid mode: " + paramMode);
    case 2:
      appendNumericBytes(paramString1, paramBitArray);
    case 3:
    case 5:
    case 7:
    }
    while (true)
    {
      return;
      appendAlphanumericBytes(paramString1, paramBitArray);
      continue;
      append8BitBytes(paramString1, paramBitArray, paramString2);
      continue;
      appendKanjiBytes(paramString1, paramBitArray);
    }
  }

  private static void appendECI(CharacterSetECI paramCharacterSetECI, BitArray paramBitArray)
  {
    paramBitArray.appendBits(Mode.ECI.getBits(), 4);
    paramBitArray.appendBits(paramCharacterSetECI.getValue(), 8);
  }

  static void appendKanjiBytes(String paramString, BitArray paramBitArray)
  {
    byte[] arrayOfByte;
    int j;
    try
    {
      arrayOfByte = paramString.getBytes("Shift_JIS");
      int i = arrayOfByte.length;
      j = 0;
      if (j >= i)
        return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new WriterException(localUnsupportedEncodingException.toString());
    }
    int k = 0xFF & arrayOfByte[j];
    int m = 0xFF & arrayOfByte[(j + 1)] | k << 8;
    int n;
    if ((m >= 33088) && (m <= 40956))
      n = m - 33088;
    while (true)
      if (n == -1)
      {
        throw new WriterException("Invalid byte sequence");
        if ((m >= 57408) && (m <= 60351))
          n = m - 49472;
      }
      else
      {
        paramBitArray.appendBits(192 * (n >> 8) + (n & 0xFF), 13);
        j += 2;
        break;
        n = -1;
      }
  }

  static void appendLengthInfo(int paramInt1, int paramInt2, Mode paramMode, BitArray paramBitArray)
  {
    int i = paramMode.getCharacterCountBits(Version.getVersionForNumber(paramInt2));
    if (paramInt1 > -1 + (1 << i))
      throw new WriterException(paramInt1 + "is bigger than" + (-1 + (1 << i)));
    paramBitArray.appendBits(paramInt1, i);
  }

  static void appendModeInfo(Mode paramMode, BitArray paramBitArray)
  {
    paramBitArray.appendBits(paramMode.getBits(), 4);
  }

  static void appendNumericBytes(CharSequence paramCharSequence, BitArray paramBitArray)
  {
    int i = paramCharSequence.length();
    int j = 0;
    while (true)
    {
      if (j >= i)
        return;
      int k = '￐' + paramCharSequence.charAt(j);
      if (j + 2 < i)
      {
        int m = '￐' + paramCharSequence.charAt(j + 1);
        paramBitArray.appendBits('￐' + paramCharSequence.charAt(j + 2) + (k * 100 + m * 10), 10);
        j += 3;
      }
      else if (j + 1 < i)
      {
        paramBitArray.appendBits('￐' + paramCharSequence.charAt(j + 1) + k * 10, 7);
        j += 2;
      }
      else
      {
        paramBitArray.appendBits(k, 4);
        j++;
      }
    }
  }

  private static int calculateMaskPenalty(ByteMatrix paramByteMatrix)
  {
    return 0 + MaskUtil.applyMaskPenaltyRule1(paramByteMatrix) + MaskUtil.applyMaskPenaltyRule2(paramByteMatrix) + MaskUtil.applyMaskPenaltyRule3(paramByteMatrix) + MaskUtil.applyMaskPenaltyRule4(paramByteMatrix);
  }

  private static int chooseMaskPattern(BitArray paramBitArray, ErrorCorrectionLevel paramErrorCorrectionLevel, int paramInt, ByteMatrix paramByteMatrix)
  {
    int i = 2147483647;
    int j = -1;
    int k = 0;
    if (k >= 8)
      return j;
    MatrixUtil.buildMatrix(paramBitArray, paramErrorCorrectionLevel, paramInt, k, paramByteMatrix);
    int m = calculateMaskPenalty(paramByteMatrix);
    if (m < i)
      j = k;
    while (true)
    {
      k++;
      i = m;
      break;
      m = i;
    }
  }

  public static Mode chooseMode(String paramString)
  {
    return chooseMode(paramString, null);
  }

  private static Mode chooseMode(String paramString1, String paramString2)
  {
    int i = 0;
    Mode localMode;
    if ("Shift_JIS".equals(paramString2))
      if (isOnlyDoubleByteKanji(paramString1))
        localMode = Mode.KANJI;
    while (true)
    {
      return localMode;
      localMode = Mode.BYTE;
      continue;
      int j = 0;
      int k = 0;
      if (i >= paramString1.length())
      {
        if (j != 0)
          localMode = Mode.ALPHANUMERIC;
      }
      else
      {
        int m = paramString1.charAt(i);
        if ((m >= 48) && (m <= 57))
          k = 1;
        while (true)
        {
          i++;
          break;
          if (getAlphanumericCode(m) == -1)
            break label103;
          j = 1;
        }
        label103: localMode = Mode.BYTE;
        continue;
        if (k != 0)
          localMode = Mode.NUMERIC;
        else
          localMode = Mode.BYTE;
      }
    }
  }

  public static void encode(String paramString, ErrorCorrectionLevel paramErrorCorrectionLevel, QRCode paramQRCode)
  {
    encode(paramString, paramErrorCorrectionLevel, null, paramQRCode);
  }

  public static void encode(String paramString, ErrorCorrectionLevel paramErrorCorrectionLevel, Map paramMap, QRCode paramQRCode)
  {
    String str;
    Mode localMode;
    BitArray localBitArray1;
    BitArray localBitArray2;
    if (paramMap == null)
    {
      str = null;
      if (str == null)
        str = "ISO-8859-1";
      localMode = chooseMode(paramString, str);
      localBitArray1 = new BitArray();
      appendBytes(paramString, localMode, localBitArray1, str);
      initQRCode(localBitArray1.getSize(), paramErrorCorrectionLevel, localMode, paramQRCode);
      localBitArray2 = new BitArray();
      if ((localMode == Mode.BYTE) && (!"ISO-8859-1".equals(str)))
      {
        CharacterSetECI localCharacterSetECI = CharacterSetECI.getCharacterSetECIByName(str);
        if (localCharacterSetECI != null)
          appendECI(localCharacterSetECI, localBitArray2);
      }
      appendModeInfo(localMode, localBitArray2);
      if (localMode != Mode.BYTE)
        break label287;
    }
    label287: for (int i = localBitArray1.getSizeInBytes(); ; i = paramString.length())
    {
      appendLengthInfo(i, paramQRCode.getVersion(), localMode, localBitArray2);
      localBitArray2.appendBitArray(localBitArray1);
      terminateBits(paramQRCode.getNumDataBytes(), localBitArray2);
      BitArray localBitArray3 = new BitArray();
      interleaveWithECBytes(localBitArray2, paramQRCode.getNumTotalBytes(), paramQRCode.getNumDataBytes(), paramQRCode.getNumRSBlocks(), localBitArray3);
      ByteMatrix localByteMatrix = new ByteMatrix(paramQRCode.getMatrixWidth(), paramQRCode.getMatrixWidth());
      paramQRCode.setMaskPattern(chooseMaskPattern(localBitArray3, paramErrorCorrectionLevel, paramQRCode.getVersion(), localByteMatrix));
      MatrixUtil.buildMatrix(localBitArray3, paramErrorCorrectionLevel, paramQRCode.getVersion(), paramQRCode.getMaskPattern(), localByteMatrix);
      paramQRCode.setMatrix(localByteMatrix);
      if (paramQRCode.isValid())
        return;
      throw new WriterException("Invalid QR code: " + paramQRCode.toString());
      str = (String)paramMap.get(EncodeHintType.CHARACTER_SET);
      break;
    }
  }

  static byte[] generateECBytes(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    int j = paramArrayOfByte.length;
    int[] arrayOfInt = new int[j + paramInt];
    int k = 0;
    byte[] arrayOfByte;
    if (k >= j)
    {
      new ReedSolomonEncoder(GenericGF.QR_CODE_FIELD_256).encode(arrayOfInt, paramInt);
      arrayOfByte = new byte[paramInt];
    }
    while (true)
    {
      if (i >= paramInt)
      {
        return arrayOfByte;
        arrayOfInt[k] = (0xFF & paramArrayOfByte[k]);
        k++;
        break;
      }
      arrayOfByte[i] = ((byte)arrayOfInt[(j + i)]);
      i++;
    }
  }

  static int getAlphanumericCode(int paramInt)
  {
    if (paramInt < ALPHANUMERIC_TABLE.length);
    for (int i = ALPHANUMERIC_TABLE[paramInt]; ; i = -1)
      return i;
  }

  static void getNumDataBytesAndNumECBytesForBlockID(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if (paramInt4 >= paramInt3)
      throw new WriterException("Block ID too large");
    int i = paramInt1 % paramInt3;
    int j = paramInt3 - i;
    int k = paramInt1 / paramInt3;
    int m = k + 1;
    int n = paramInt2 / paramInt3;
    int i1 = n + 1;
    int i2 = k - n;
    int i3 = m - i1;
    if (i2 != i3)
      throw new WriterException("EC bytes mismatch");
    if (paramInt3 != j + i)
      throw new WriterException("RS blocks mismatch");
    if (paramInt1 != j * (n + i2) + i * (i1 + i3))
      throw new WriterException("Total bytes mismatch");
    if (paramInt4 < j)
    {
      paramArrayOfInt1[0] = n;
      paramArrayOfInt2[0] = i2;
    }
    while (true)
    {
      return;
      paramArrayOfInt1[0] = i1;
      paramArrayOfInt2[0] = i3;
    }
  }

  private static int getTotalInputBytes(int paramInt, Version paramVersion, Mode paramMode)
  {
    return (7 + (paramInt + (4 + paramMode.getCharacterCountBits(paramVersion)))) / 8;
  }

  private static void initQRCode(int paramInt, ErrorCorrectionLevel paramErrorCorrectionLevel, Mode paramMode, QRCode paramQRCode)
  {
    paramQRCode.setECLevel(paramErrorCorrectionLevel);
    paramQRCode.setMode(paramMode);
    for (int i = 1; ; i++)
    {
      if (i > 40)
        throw new WriterException("Cannot find proper rs block info (input data too big?)");
      Version localVersion = Version.getVersionForNumber(i);
      int j = localVersion.getTotalCodewords();
      Version.ECBlocks localECBlocks = localVersion.getECBlocksForLevel(paramErrorCorrectionLevel);
      int k = localECBlocks.getTotalECCodewords();
      int m = localECBlocks.getNumBlocks();
      int n = j - k;
      if (n >= getTotalInputBytes(paramInt, localVersion, paramMode))
      {
        paramQRCode.setVersion(i);
        paramQRCode.setNumTotalBytes(j);
        paramQRCode.setNumDataBytes(n);
        paramQRCode.setNumRSBlocks(m);
        paramQRCode.setNumECBytes(k);
        paramQRCode.setMatrixWidth(localVersion.getDimensionForVersion());
        return;
      }
    }
  }

  static void interleaveWithECBytes(BitArray paramBitArray1, int paramInt1, int paramInt2, int paramInt3, BitArray paramBitArray2)
  {
    if (paramBitArray1.getSizeInBytes() != paramInt2)
      throw new WriterException("Number of bits and data bytes does not match");
    ArrayList localArrayList = new ArrayList(paramInt3);
    int i = 0;
    int j = 0;
    int k = 0;
    int i3;
    for (int m = 0; ; m = i3)
    {
      if (i >= paramInt3)
      {
        if (paramInt2 == m)
          break;
        throw new WriterException("Data bytes does not match offset");
      }
      int[] arrayOfInt1 = new int[1];
      int[] arrayOfInt2 = new int[1];
      getNumDataBytesAndNumECBytesForBlockID(paramInt1, paramInt2, paramInt3, i, arrayOfInt1, arrayOfInt2);
      int n = arrayOfInt1[0];
      byte[] arrayOfByte1 = new byte[n];
      paramBitArray1.toBytes(m * 8, arrayOfByte1, 0, n);
      byte[] arrayOfByte2 = generateECBytes(arrayOfByte1, arrayOfInt2[0]);
      localArrayList.add(new BlockPair(arrayOfByte1, arrayOfByte2));
      int i1 = Math.max(k, n);
      int i2 = Math.max(j, arrayOfByte2.length);
      i3 = m + arrayOfInt1[0];
      i++;
      j = i2;
      k = i1;
    }
    int i4 = 0;
    int i5;
    if (i4 >= k)
    {
      i5 = 0;
      if (i5 >= j)
      {
        if (paramInt1 == paramBitArray2.getSizeInBytes())
          return;
        throw new WriterException("Interleaving error: " + paramInt1 + " and " + paramBitArray2.getSizeInBytes() + " differ.");
      }
    }
    else
    {
      Iterator localIterator1 = localArrayList.iterator();
      while (true)
      {
        if (!localIterator1.hasNext())
        {
          i4++;
          break;
        }
        byte[] arrayOfByte3 = ((BlockPair)localIterator1.next()).getDataBytes();
        if (i4 < arrayOfByte3.length)
          paramBitArray2.appendBits(arrayOfByte3[i4], 8);
      }
    }
    Iterator localIterator2 = localArrayList.iterator();
    while (true)
    {
      if (!localIterator2.hasNext())
      {
        i5++;
        break;
      }
      byte[] arrayOfByte4 = ((BlockPair)localIterator2.next()).getErrorCorrectionBytes();
      if (i5 < arrayOfByte4.length)
        paramBitArray2.appendBits(arrayOfByte4[i5], 8);
    }
  }

  private static boolean isOnlyDoubleByteKanji(String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes("Shift_JIS");
      int i = arrayOfByte.length;
      int j = i % 2;
      bool = false;
      if (j != 0)
        return bool;
      for (int k = 0; ; k += 2)
      {
        if (k >= i)
        {
          bool = true;
          break;
        }
        int m = 0xFF & arrayOfByte[k];
        if ((m < 129) || (m > 159))
        {
          bool = false;
          if (m < 224)
            break;
          bool = false;
          if (m > 235)
            break;
        }
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
        boolean bool = false;
    }
  }

  static void terminateBits(int paramInt, BitArray paramBitArray)
  {
    int i = paramInt << 3;
    if (paramBitArray.getSize() > i)
      throw new WriterException("data bits cannot fit in the QR Code" + paramBitArray.getSize() + " > " + i);
    int j = 0;
    int k;
    if ((j >= 4) || (paramBitArray.getSize() >= i))
    {
      k = 0x7 & paramBitArray.getSize();
      if (k <= 0);
    }
    int n;
    while (true)
    {
      if (k >= 8)
      {
        int m = paramInt - paramBitArray.getSizeInBytes();
        n = 0;
        if (n < m)
          break label145;
        if (paramBitArray.getSize() == i)
          return;
        throw new WriterException("Bits size does not equal capacity");
        paramBitArray.appendBit(false);
        j++;
        break;
      }
      paramBitArray.appendBit(false);
      k++;
    }
    label145: if ((n & 0x1) == 0);
    for (int i1 = 236; ; i1 = 17)
    {
      paramBitArray.appendBits(i1, 8);
      n++;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.encoder.Encoder
 * JD-Core Version:    0.6.2
 */