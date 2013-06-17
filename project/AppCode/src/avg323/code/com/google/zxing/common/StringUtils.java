package com.google.zxing.common;

import com.google.zxing.DecodeHintType;
import java.util.Map;

public final class StringUtils
{
  private static final boolean ASSUME_SHIFT_JIS = false;
  private static final String EUC_JP = "EUC_JP";
  public static final String GB2312 = "GB2312";
  private static final String ISO88591 = "ISO8859_1";
  private static final String PLATFORM_DEFAULT_ENCODING = System.getProperty("file.encoding");
  public static final String SHIFT_JIS = "SJIS";
  private static final String UTF8 = "UTF8";

  static
  {
    if ((!"SJIS".equalsIgnoreCase(PLATFORM_DEFAULT_ENCODING)) && (!"EUC_JP".equalsIgnoreCase(PLATFORM_DEFAULT_ENCODING)));
    for (boolean bool = false; ; bool = true)
    {
      ASSUME_SHIFT_JIS = bool;
      return;
    }
  }

  public static String guessEncoding(byte[] paramArrayOfByte, Map paramMap)
  {
    String str;
    if (paramMap != null)
    {
      str = (String)paramMap.get(DecodeHintType.CHARACTER_SET);
      if (str == null);
    }
    int i;
    int j;
    int k;
    int m;
    int n;
    int i1;
    int i2;
    int i3;
    int i4;
    int i5;
    int i6;
    while (true)
    {
      return str;
      if ((paramArrayOfByte.length > 3) && (paramArrayOfByte[0] == -17) && (paramArrayOfByte[1] == -69) && (paramArrayOfByte[2] == -65))
      {
        str = "UTF8";
      }
      else
      {
        i = paramArrayOfByte.length;
        j = 0;
        k = 0;
        m = 0;
        n = 0;
        i1 = 0;
        i2 = 0;
        i3 = 0;
        i4 = 1;
        i5 = 1;
        i6 = 1;
        label95: if ((i1 < i) && ((i6 != 0) || (i5 != 0) || (i4 != 0)))
          break;
        if (j > 0)
          i4 = 0;
        if ((i5 == 0) || (!ASSUME_SHIFT_JIS))
          break label522;
        str = "SJIS";
      }
    }
    int i7 = 0xFF & paramArrayOfByte[i1];
    int i8;
    if ((i7 >= 128) && (i7 <= 191))
    {
      if (j <= 0)
        break label598;
      j--;
      i8 = i4;
    }
    while (true)
    {
      if (((i7 == 194) || (i7 == 195)) && (i1 < i - 1))
      {
        int i14 = 0xFF & paramArrayOfByte[(i1 + 1)];
        if ((i14 <= 191) && (((i7 == 194) && (i14 >= 160)) || ((i7 == 195) && (i14 >= 128))))
          m = 1;
      }
      if ((i7 >= 127) && (i7 <= 159))
        i6 = 0;
      if ((i7 >= 161) && (i7 <= 223) && (i2 == 0))
        k++;
      if ((i2 == 0) && (((i7 >= 240) && (i7 <= 255)) || (i7 == 128) || (i7 == 160)))
        i5 = 0;
      int i12;
      if (((i7 >= 129) && (i7 <= 159)) || ((i7 >= 224) && (i7 <= 239)))
        if (i2 != 0)
        {
          i12 = 0;
          label379: i1++;
          i2 = i12;
          i4 = i8;
          break label95;
          if (j <= 0)
            break label591;
        }
      label522: label591: for (i8 = 0; ; i8 = i4)
      {
        if ((i7 < 192) || (i7 > 253))
          break label596;
        int i9 = j;
        int i10 = i7;
        while (true)
        {
          if ((i10 & 0x40) == 0)
          {
            j = i9;
            n = 1;
            break;
          }
          int i11 = i9 + 1;
          i10 <<= 1;
          i9 = i11;
        }
        i12 = 1;
        if (i1 >= -1 + paramArrayOfByte.length)
        {
          i5 = 0;
          break label379;
        }
        int i13 = 0xFF & paramArrayOfByte[(i1 + 1)];
        if ((i13 < 64) || (i13 > 252))
        {
          i5 = 0;
          break label379;
        }
        i3++;
        break label379;
        i12 = 0;
        break label379;
        if ((i4 != 0) && (n != 0))
        {
          str = "UTF8";
          break;
        }
        if ((i5 != 0) && ((i3 >= 3) || (k * 20 > i)))
        {
          str = "SJIS";
          break;
        }
        if ((m == 0) && (i6 != 0))
        {
          str = "ISO8859_1";
          break;
        }
        str = PLATFORM_DEFAULT_ENCODING;
        break;
      }
      label596: continue;
      label598: i8 = i4;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.common.StringUtils
 * JD-Core Version:    0.6.2
 */