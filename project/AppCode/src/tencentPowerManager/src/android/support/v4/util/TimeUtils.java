package android.support.v4.util;

import java.io.PrintWriter;

public class TimeUtils
{
  public static final int HUNDRED_DAY_FIELD_LEN = 19;
  private static final int SECONDS_PER_DAY = 86400;
  private static final int SECONDS_PER_HOUR = 3600;
  private static final int SECONDS_PER_MINUTE = 60;
  private static char[] sFormatStr = new char[24];
  private static final Object sFormatSync = new Object();

  private static int accumField(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    int i;
    if ((paramInt1 > 99) || ((paramBoolean) && (paramInt3 >= 3)))
      i = paramInt2 + 3;
    while (true)
    {
      return i;
      if ((paramInt1 > 9) || ((paramBoolean) && (paramInt3 >= 2)))
        i = paramInt2 + 2;
      else if ((paramBoolean) || (paramInt1 > 0))
        i = paramInt2 + 1;
      else
        i = 0;
    }
  }

  public static void formatDuration(long paramLong1, long paramLong2, PrintWriter paramPrintWriter)
  {
    if (paramLong1 == 0L)
      paramPrintWriter.print("--");
    while (true)
    {
      return;
      formatDuration(paramLong1 - paramLong2, paramPrintWriter, 0);
    }
  }

  public static void formatDuration(long paramLong, PrintWriter paramPrintWriter)
  {
    formatDuration(paramLong, paramPrintWriter, 0);
  }

  public static void formatDuration(long paramLong, PrintWriter paramPrintWriter, int paramInt)
  {
    synchronized (sFormatSync)
    {
      int i = formatDurationLocked(paramLong, paramInt);
      paramPrintWriter.print(new String(sFormatStr, 0, i));
      return;
    }
  }

  public static void formatDuration(long paramLong, StringBuilder paramStringBuilder)
  {
    synchronized (sFormatSync)
    {
      int i = formatDurationLocked(paramLong, 0);
      paramStringBuilder.append(sFormatStr, 0, i);
      return;
    }
  }

  private static int formatDurationLocked(long paramLong, int paramInt)
  {
    if (sFormatStr.length < paramInt)
      sFormatStr = new char[paramInt];
    char[] arrayOfChar = sFormatStr;
    int i17;
    if (paramLong == 0L)
    {
      int i24 = paramInt - 1;
      while (i24 < 0)
        arrayOfChar[0] = ' ';
      arrayOfChar[0] = '0';
      i17 = 1;
      return i17;
    }
    int i;
    int j;
    int k;
    int n;
    int i2;
    int i4;
    int i5;
    boolean bool4;
    label204: boolean bool5;
    label226: boolean bool6;
    label248: int i21;
    if (paramLong > 0L)
    {
      i = 43;
      j = (int)(paramLong % 1000L);
      k = (int)Math.floor(paramLong / 1000L);
      int m = k;
      n = 0;
      if (m > 86400)
      {
        n = k / 86400;
        k -= 86400 * n;
      }
      int i1 = k;
      i2 = 0;
      if (i1 > 3600)
      {
        i2 = k / 3600;
        k -= i2 * 3600;
      }
      int i3 = k;
      i4 = 0;
      if (i3 > 60)
      {
        i4 = k / 60;
        k -= i4 * 60;
      }
      i5 = 0;
      if (paramInt == 0)
        break label341;
      int i18 = accumField(n, 1, false, 0);
      if (i18 <= 0)
        break label317;
      bool4 = true;
      int i19 = i18 + accumField(i2, 1, bool4, 2);
      if (i19 <= 0)
        break label323;
      bool5 = true;
      int i20 = i19 + accumField(i4, 1, bool5, 2);
      if (i20 <= 0)
        break label329;
      bool6 = true;
      i21 = i20 + accumField(k, 1, bool6, 2);
      if (i21 <= 0)
        break label335;
    }
    label317: label323: label329: label335: for (int i22 = 3; ; i22 = 0)
    {
      for (int i23 = i21 + (1 + accumField(j, 2, true, i22)); i23 < paramInt; i23++)
      {
        arrayOfChar[i5] = ' ';
        i5++;
      }
      i = 45;
      paramLong = -paramLong;
      break;
      bool4 = false;
      break label204;
      bool5 = false;
      break label226;
      bool6 = false;
      break label248;
    }
    label341: arrayOfChar[i5] = i;
    int i6 = i5 + 1;
    int i7;
    label360: boolean bool1;
    label384: int i9;
    label392: boolean bool2;
    label418: int i11;
    label426: boolean bool3;
    label452: int i13;
    label460: int i14;
    if (paramInt != 0)
    {
      i7 = 1;
      int i8 = printField(arrayOfChar, n, 'd', i6, false, 0);
      if (i8 == i6)
        break label527;
      bool1 = true;
      if (i7 == 0)
        break label533;
      i9 = 2;
      int i10 = printField(arrayOfChar, i2, 'h', i8, bool1, i9);
      if (i10 == i6)
        break label539;
      bool2 = true;
      if (i7 == 0)
        break label545;
      i11 = 2;
      int i12 = printField(arrayOfChar, i4, 'm', i10, bool2, i11);
      if (i12 == i6)
        break label551;
      bool3 = true;
      if (i7 == 0)
        break label557;
      i13 = 2;
      i14 = printField(arrayOfChar, k, 's', i12, bool3, i13);
      if ((i7 == 0) || (i14 == i6))
        break label563;
    }
    label527: label533: label539: label545: label551: label557: label563: for (int i15 = 3; ; i15 = 0)
    {
      int i16 = printField(arrayOfChar, j, 'm', i14, true, i15);
      arrayOfChar[i16] = 's';
      i17 = i16 + 1;
      break;
      i7 = 0;
      break label360;
      bool1 = false;
      break label384;
      i9 = 0;
      break label392;
      bool2 = false;
      break label418;
      i11 = 0;
      break label426;
      bool3 = false;
      break label452;
      i13 = 0;
      break label460;
    }
  }

  private static int printField(char[] paramArrayOfChar, int paramInt1, char paramChar, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    if ((paramBoolean) || (paramInt1 > 0))
    {
      int i = paramInt2;
      if (((paramBoolean) && (paramInt3 >= 3)) || (paramInt1 > 99))
      {
        int m = paramInt1 / 100;
        paramArrayOfChar[paramInt2] = ((char)(m + 48));
        paramInt2++;
        paramInt1 -= m * 100;
      }
      if (((paramBoolean) && (paramInt3 >= 2)) || (paramInt1 > 9) || (i != paramInt2))
      {
        int j = paramInt1 / 10;
        paramArrayOfChar[paramInt2] = ((char)(j + 48));
        paramInt2++;
        paramInt1 -= j * 10;
      }
      paramArrayOfChar[paramInt2] = ((char)(paramInt1 + 48));
      int k = paramInt2 + 1;
      paramArrayOfChar[k] = paramChar;
      paramInt2 = k + 1;
    }
    return paramInt2;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     android.support.v4.util.TimeUtils
 * JD-Core Version:    0.6.2
 */