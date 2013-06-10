package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitSource;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.StringUtils;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

final class DecodedBitStreamParser
{
  private static final char[] ALPHANUMERIC_CHARS = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 32, 36, 37, 42, 43, 45, 46, 47, 58 };
  private static final int GB2312_SUBSET = 1;

  static DecoderResult decode(byte[] paramArrayOfByte, Version paramVersion, ErrorCorrectionLevel paramErrorCorrectionLevel, Map paramMap)
  {
    BitSource localBitSource = new BitSource(paramArrayOfByte);
    StringBuilder localStringBuilder = new StringBuilder(50);
    boolean bool1 = false;
    ArrayList localArrayList = new ArrayList(1);
    CharacterSetECI localCharacterSetECI = null;
    while (true)
    {
      Object localObject;
      boolean bool2;
      if (localBitSource.available() < 4)
      {
        localObject = Mode.TERMINATOR;
        if (localObject == Mode.TERMINATOR)
          break label382;
        if ((localObject != Mode.FNC1_FIRST_POSITION) && (localObject != Mode.FNC1_SECOND_POSITION))
          break label152;
        bool2 = true;
      }
      while (true)
      {
        label78: if (localObject != Mode.TERMINATOR)
          break label389;
        String str1 = localStringBuilder.toString();
        if (localArrayList.isEmpty())
          localArrayList = null;
        String str2 = null;
        if (paramErrorCorrectionLevel == null);
        while (true)
        {
          while (true)
          {
            return new DecoderResult(paramArrayOfByte, str1, localArrayList, str2);
            try
            {
              Mode localMode = Mode.forBits(localBitSource.readBits(4));
              localObject = localMode;
            }
            catch (IllegalArgumentException localIllegalArgumentException)
            {
              throw FormatException.getFormatInstance();
            }
          }
          label152: if (localObject == Mode.STRUCTURED_APPEND)
          {
            localBitSource.readBits(16);
            bool2 = bool1;
            break label78;
          }
          if (localObject == Mode.ECI)
          {
            localCharacterSetECI = CharacterSetECI.getCharacterSetECIByValue(parseECIValue(localBitSource));
            if (localCharacterSetECI != null)
              break label382;
            throw FormatException.getFormatInstance();
          }
          if (localObject == Mode.HANZI)
          {
            int j = localBitSource.readBits(4);
            int k = localBitSource.readBits(((Mode)localObject).getCharacterCountBits(paramVersion));
            if (j != 1)
              break label382;
            decodeHanziSegment(localBitSource, localStringBuilder, k);
            bool2 = bool1;
            break label78;
          }
          int i = localBitSource.readBits(((Mode)localObject).getCharacterCountBits(paramVersion));
          if (localObject == Mode.NUMERIC)
          {
            decodeNumericSegment(localBitSource, localStringBuilder, i);
            bool2 = bool1;
            break label78;
          }
          if (localObject == Mode.ALPHANUMERIC)
          {
            decodeAlphanumericSegment(localBitSource, localStringBuilder, i, bool1);
            bool2 = bool1;
            break label78;
          }
          if (localObject == Mode.BYTE)
          {
            decodeByteSegment(localBitSource, localStringBuilder, i, localCharacterSetECI, localArrayList, paramMap);
            bool2 = bool1;
            break label78;
          }
          if (localObject == Mode.KANJI)
          {
            decodeKanjiSegment(localBitSource, localStringBuilder, i);
            bool2 = bool1;
            break label78;
          }
          throw FormatException.getFormatInstance();
          str2 = paramErrorCorrectionLevel.toString();
        }
        label382: bool2 = bool1;
      }
      label389: bool1 = bool2;
    }
  }

  private static void decodeAlphanumericSegment(BitSource paramBitSource, StringBuilder paramStringBuilder, int paramInt, boolean paramBoolean)
  {
    int i = paramStringBuilder.length();
    while (true)
    {
      if (paramInt <= 1)
      {
        if (paramInt == 1)
          paramStringBuilder.append(toAlphaNumericChar(paramBitSource.readBits(6)));
        if (paramBoolean)
          if (i < paramStringBuilder.length())
            break;
        return;
      }
      int j = paramBitSource.readBits(11);
      paramStringBuilder.append(toAlphaNumericChar(j / 45));
      paramStringBuilder.append(toAlphaNumericChar(j % 45));
      paramInt -= 2;
    }
    if (paramStringBuilder.charAt(i) == '%')
    {
      if ((i >= -1 + paramStringBuilder.length()) || (paramStringBuilder.charAt(i + 1) != '%'))
        break label134;
      paramStringBuilder.deleteCharAt(i + 1);
    }
    while (true)
    {
      i++;
      break;
      label134: paramStringBuilder.setCharAt(i, '\035');
    }
  }

  private static void decodeByteSegment(BitSource paramBitSource, StringBuilder paramStringBuilder, int paramInt, CharacterSetECI paramCharacterSetECI, Collection paramCollection, Map paramMap)
  {
    if (paramInt << 3 > paramBitSource.available())
      throw FormatException.getFormatInstance();
    byte[] arrayOfByte = new byte[paramInt];
    int i = 0;
    while (true)
    {
      String str;
      if (i >= paramInt)
      {
        if (paramCharacterSetECI != null)
          break label86;
        str = StringUtils.guessEncoding(arrayOfByte, paramMap);
      }
      try
      {
        while (true)
        {
          paramStringBuilder.append(new String(arrayOfByte, str));
          paramCollection.add(arrayOfByte);
          return;
          arrayOfByte[i] = ((byte)paramBitSource.readBits(8));
          i++;
          break;
          label86: str = paramCharacterSetECI.name();
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
      }
    }
    throw FormatException.getFormatInstance();
  }

  private static void decodeHanziSegment(BitSource paramBitSource, StringBuilder paramStringBuilder, int paramInt)
  {
    if (paramInt * 13 > paramBitSource.available())
      throw FormatException.getFormatInstance();
    byte[] arrayOfByte = new byte[paramInt * 2];
    int i = 0;
    while (true)
    {
      if (paramInt <= 0);
      try
      {
        paramStringBuilder.append(new String(arrayOfByte, "GB2312"));
        return;
        int j = paramBitSource.readBits(13);
        int k = j / 96 << 8 | j % 96;
        if (k < 959);
        for (int m = k + 41377; ; m = k + 42657)
        {
          arrayOfByte[i] = ((byte)(0xFF & m >> 8));
          arrayOfByte[(i + 1)] = ((byte)(m & 0xFF));
          int n = i + 2;
          paramInt--;
          i = n;
          break;
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
      }
    }
    throw FormatException.getFormatInstance();
  }

  private static void decodeKanjiSegment(BitSource paramBitSource, StringBuilder paramStringBuilder, int paramInt)
  {
    if (paramInt * 13 > paramBitSource.available())
      throw FormatException.getFormatInstance();
    byte[] arrayOfByte = new byte[paramInt * 2];
    int i = 0;
    while (true)
    {
      if (paramInt <= 0);
      try
      {
        paramStringBuilder.append(new String(arrayOfByte, "SJIS"));
        return;
        int j = paramBitSource.readBits(13);
        int k = j / 192 << 8 | j % 192;
        if (k < 7936);
        for (int m = k + 33088; ; m = k + 49472)
        {
          arrayOfByte[i] = ((byte)(m >> 8));
          arrayOfByte[(i + 1)] = ((byte)m);
          int n = i + 2;
          paramInt--;
          i = n;
          break;
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
      }
    }
    throw FormatException.getFormatInstance();
  }

  private static void decodeNumericSegment(BitSource paramBitSource, StringBuilder paramStringBuilder, int paramInt)
  {
    while (true)
    {
      if (paramInt < 3)
      {
        if (paramInt != 2)
          break label145;
        if (paramBitSource.available() >= 7)
          break;
        throw FormatException.getFormatInstance();
      }
      if (paramBitSource.available() < 10)
        throw FormatException.getFormatInstance();
      int i = paramBitSource.readBits(10);
      if (i >= 1000)
        throw FormatException.getFormatInstance();
      paramStringBuilder.append(toAlphaNumericChar(i / 100));
      paramStringBuilder.append(toAlphaNumericChar(i / 10 % 10));
      paramStringBuilder.append(toAlphaNumericChar(i % 10));
      paramInt -= 3;
    }
    int k = paramBitSource.readBits(7);
    if (k >= 100)
      throw FormatException.getFormatInstance();
    paramStringBuilder.append(toAlphaNumericChar(k / 10));
    paramStringBuilder.append(toAlphaNumericChar(k % 10));
    while (true)
    {
      return;
      label145: if (paramInt == 1)
      {
        if (paramBitSource.available() < 4)
          throw FormatException.getFormatInstance();
        int j = paramBitSource.readBits(4);
        if (j >= 10)
          throw FormatException.getFormatInstance();
        paramStringBuilder.append(toAlphaNumericChar(j));
      }
    }
  }

  private static int parseECIValue(BitSource paramBitSource)
  {
    int i = paramBitSource.readBits(8);
    int j;
    if ((i & 0x80) == 0)
      j = i & 0x7F;
    while (true)
    {
      return j;
      if ((i & 0xC0) == 128)
      {
        j = paramBitSource.readBits(8) | (i & 0x3F) << 8;
      }
      else
      {
        if ((i & 0xE0) != 192)
          break;
        j = paramBitSource.readBits(16) | (i & 0x1F) << 16;
      }
    }
    throw new IllegalArgumentException("Bad ECI bits starting with byte " + i);
  }

  private static char toAlphaNumericChar(int paramInt)
  {
    if (paramInt >= ALPHANUMERIC_CHARS.length)
      throw FormatException.getFormatInstance();
    return ALPHANUMERIC_CHARS[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.DecodedBitStreamParser
 * JD-Core Version:    0.6.2
 */