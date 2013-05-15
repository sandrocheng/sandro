package com.avast.android.generic.util;

import android.content.Context;
import android.content.res.Resources;
import android.text.format.DateFormat;
import android.text.format.Time;
import com.avast.android.generic.x;
import com.avast.android.generic.z;
import java.util.Formatter;
import java.util.Locale;

public class k
{
  private static Time a;

  private static long a(long paramLong1, long paramLong2)
  {
    try
    {
      if (a == null)
        a = new Time();
      a.set(paramLong1);
      int i = Time.getJulianDay(paramLong1, a.gmtoff);
      a.set(paramLong2);
      int j = Math.abs(Time.getJulianDay(paramLong2, a.gmtoff) - i);
      long l = j;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static CharSequence a(long paramLong1, long paramLong2, long paramLong3, int paramInt, Context paramContext)
  {
    Resources localResources = paramContext.getResources();
    int i;
    int j;
    label27: long l1;
    long l6;
    int k;
    long l3;
    label80: String str2;
    Object[] arrayOfObject;
    if ((0xC0000 & paramInt) != 0)
    {
      i = 1;
      if (paramLong2 < paramLong1)
        break label125;
      j = 1;
      l1 = Math.abs(paramLong2 - paramLong1);
      if ((l1 >= 60000L) || (paramLong3 >= 60000L))
        break label172;
      l6 = l1 / 1000L;
      if (j == 0)
        break label143;
      if (i == 0)
        break label131;
      k = x.f;
      l3 = l6;
      str2 = localResources.getQuantityString(k, (int)l3);
      arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(l3);
    }
    for (String str1 = String.format(str2, arrayOfObject); ; str1 = a(paramContext, paramLong1, paramLong1, paramInt))
    {
      return str1;
      i = 0;
      break;
      label125: j = 0;
      break label27;
      label131: k = x.i;
      l3 = l6;
      break label80;
      label143: if (i != 0)
      {
        k = x.e;
        l3 = l6;
        break label80;
      }
      k = x.b;
      l3 = l6;
      break label80;
      label172: if ((l1 < 3600000L) && (paramLong3 < 3600000L))
      {
        long l5 = l1 / 60000L;
        if (j != 0)
        {
          if (i != 0)
          {
            k = x.l;
            l3 = l5;
            break label80;
          }
          k = x.n;
          l3 = l5;
          break label80;
        }
        if (i != 0)
        {
          k = x.a;
          l3 = l5;
          break label80;
        }
        k = x.r;
        l3 = l5;
        break label80;
      }
      if ((l1 < 86400000L) && (paramLong3 < 86400000L))
      {
        long l4 = l1 / 3600000L;
        if (j != 0)
        {
          if (i != 0)
          {
            k = x.d;
            l3 = l4;
            break label80;
          }
          k = x.h;
          l3 = l4;
          break label80;
        }
        if (i != 0)
        {
          k = x.j;
          l3 = l4;
          break label80;
        }
        k = x.k;
        l3 = l4;
        break label80;
      }
      if ((l1 < 604800000L) && (paramLong3 < 604800000L))
      {
        long l2 = a(paramLong1, paramLong2);
        if (j != 0)
        {
          if (i != 0)
          {
            k = x.o;
            l3 = l2;
            break label80;
          }
          k = x.p;
          l3 = l2;
          break label80;
        }
        if (i != 0)
        {
          k = x.c;
          l3 = l2;
          break label80;
        }
        k = x.q;
        l3 = l2;
        break label80;
      }
    }
  }

  public static String a(Context paramContext, long paramLong, int paramInt)
  {
    return a(paramContext, paramLong, paramLong, paramInt);
  }

  public static String a(Context paramContext, long paramLong1, long paramLong2, int paramInt)
  {
    return a(paramContext, new Formatter(new StringBuilder(50), Locale.getDefault()), paramLong1, paramLong2, paramInt).toString();
  }

  public static Formatter a(Context paramContext, Formatter paramFormatter, long paramLong1, long paramLong2, int paramInt)
  {
    return a(paramContext, paramFormatter, paramLong1, paramLong2, paramInt, null);
  }

  public static Formatter a(Context paramContext, Formatter paramFormatter, long paramLong1, long paramLong2, int paramInt, String paramString)
  {
    Resources localResources = paramContext.getResources();
    int i;
    int j;
    label26: int k;
    label36: int m;
    label47: int n;
    label59: int i1;
    label70: int i2;
    label81: int i3;
    label92: int i4;
    label103: int i5;
    label113: Time localTime1;
    label129: int i8;
    Object localObject1;
    int i9;
    int i10;
    int i11;
    int i12;
    int i13;
    int i14;
    String str1;
    String str2;
    String str20;
    label270: label288: String str3;
    String str17;
    int i20;
    label313: int i21;
    label324: boolean bool;
    label332: Object localObject2;
    label351: String str19;
    if ((paramInt & 0x1) != 0)
    {
      i = 1;
      if ((paramInt & 0x2) == 0)
        break label465;
      j = 1;
      if ((paramInt & 0x4) == 0)
        break label471;
      k = 1;
      if ((paramInt & 0x8) == 0)
        break label477;
      m = 1;
      if ((paramInt & 0x2000) == 0)
        break label483;
      n = 1;
      if ((0x88000 & paramInt) == 0)
        break label489;
      i1 = 1;
      if ((0x90000 & paramInt) == 0)
        break label495;
      i2 = 1;
      if ((paramInt & 0x20) == 0)
        break label501;
      i3 = 1;
      if ((0x20000 & paramInt) == 0)
        break label507;
      i4 = 1;
      if (paramLong1 != paramLong2)
        break label513;
      i5 = 1;
      if (paramString == null)
        break label519;
      localTime1 = new Time(paramString);
      localTime1.set(paramLong1);
      if (i5 == 0)
        break label550;
      i8 = 0;
      localObject1 = localTime1;
      if ((i5 == 0) && ((((Time)localObject1).hour | ((Time)localObject1).minute | ((Time)localObject1).second) == 0) && ((i == 0) || (i8 <= 1)))
      {
        int i30 = -1 + ((Time)localObject1).monthDay;
        ((Time)localObject1).monthDay = i30;
        ((Time)localObject1).normalize(true);
      }
      i9 = localTime1.monthDay;
      i10 = localTime1.month;
      i11 = localTime1.year;
      i12 = ((Time)localObject1).monthDay;
      i13 = ((Time)localObject1).month;
      i14 = ((Time)localObject1).year;
      str1 = "";
      str2 = "";
      if (j != 0)
      {
        if (i1 == 0)
          break label641;
        str20 = "%a";
        str1 = localTime1.format(str20);
        if (i5 == 0)
          break label648;
        str2 = str1;
      }
      str3 = "";
      if (i == 0)
        break label2124;
      str17 = "";
      if ((paramInt & 0x80) == 0)
        break label660;
      i20 = 1;
      if ((paramInt & 0x40) == 0)
        break label666;
      i21 = 1;
      if (i20 == 0)
        break label672;
      bool = true;
      if (!bool)
        break label692;
      str17 = localResources.getString(z.bh);
      localObject2 = str17;
      str3 = localTime1.format((String)localObject2);
      if (i5 == 0)
        break label1140;
      str19 = str3;
    }
    label369: for (String str4 = str19; ; str4 = "")
    {
      int i15;
      label382: String str5;
      String str6;
      Formatter localFormatter;
      if (k != 0)
      {
        i15 = k;
        if (i4 == 0)
          break label1216;
        str5 = localResources.getString(z.cP);
        if (j == 0)
          break label1368;
        if (i == 0)
          break label1355;
        str6 = localResources.getString(z.ao);
        if ((i3 == 0) || (i10 != i13))
          break label1399;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localTime1.format(str5);
        localFormatter = paramFormatter.format("%s", arrayOfObject);
      }
      label501: label507: label763: String str18;
      label1522: 
      while (true)
      {
        return localFormatter;
        i = 0;
        break;
        j = 0;
        break label26;
        k = 0;
        break label36;
        m = 0;
        break label47;
        n = 0;
        break label59;
        i1 = 0;
        break label70;
        i2 = 0;
        break label81;
        i3 = 0;
        break label92;
        i4 = 0;
        break label103;
        i5 = 0;
        break label113;
        if (n != 0)
        {
          localTime1 = new Time("UTC");
          break label129;
        }
        localTime1 = new Time();
        break label129;
        Time localTime2;
        if (paramString != null)
          localTime2 = new Time(paramString);
        while (true)
        {
          localTime2.set(paramLong2);
          int i6 = Time.getJulianDay(paramLong1, localTime1.gmtoff);
          int i7 = Time.getJulianDay(paramLong2, localTime2.gmtoff) - i6;
          localObject1 = localTime2;
          i8 = i7;
          break;
          if (n != 0)
            localTime2 = new Time("UTC");
          else
            localTime2 = new Time();
        }
        str20 = "%A";
        break label270;
        str2 = ((Time)localObject1).format(str20);
        break label288;
        i20 = 0;
        break label313;
        i21 = 0;
        break label324;
        if (i21 != 0)
        {
          bool = false;
          break label332;
        }
        bool = DateFormat.is24HourFormat(paramContext);
        break label332;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        if ((0x84000 & paramInt) != 0)
        {
          i22 = 1;
          if ((paramInt & 0x100) == 0)
            break label935;
          i23 = 1;
          if ((paramInt & 0x200) == 0)
            break label941;
          i24 = 1;
          if ((paramInt & 0x400) == 0)
            break label947;
          i25 = 1;
          if ((paramInt & 0x800) == 0)
            break label953;
          i26 = 1;
          if ((paramInt & 0x1000) == 0)
            break label959;
          i27 = 1;
          if ((localTime1.minute != 0) || (localTime1.second != 0))
            break label965;
          i28 = 1;
          if ((((Time)localObject1).minute != 0) || (((Time)localObject1).second != 0))
            break label971;
          i29 = 1;
          if ((i22 == 0) || (i28 == 0))
            break label990;
          if (i23 == 0)
            break label977;
          str18 = localResources.getString(z.al);
          if (i5 == 0)
          {
            if ((i22 == 0) || (i29 == 0))
              break label1034;
            if (i23 == 0)
              break label1021;
            str17 = localResources.getString(z.al);
            if ((((Time)localObject1).hour != 12) || (i29 == 0) || (i24 != 0))
              break label1078;
            if (i25 == 0)
              break label1065;
            str17 = localResources.getString(z.aA);
          }
        }
        while (true)
        {
          if ((localTime1.hour != 12) || (i28 == 0) || (i24 != 0))
            break label2117;
          if (i25 == 0)
            break label1127;
          localObject2 = localResources.getString(z.aA);
          break;
          i22 = 0;
          break label703;
          i23 = 0;
          break label715;
          i24 = 0;
          break label727;
          i25 = 0;
          break label739;
          i26 = 0;
          break label751;
          i27 = 0;
          break label763;
          i28 = 0;
          break label782;
          i29 = 0;
          break label801;
          str18 = localResources.getString(z.u);
          break label826;
          if (i23 != 0)
          {
            str18 = localResources.getString(z.cK);
            break label826;
          }
          str18 = localResources.getString(z.cS);
          break label826;
          label1021: str17 = localResources.getString(z.u);
          break label856;
          if (i23 != 0)
          {
            str17 = localResources.getString(z.cK);
            break label856;
          }
          str17 = localResources.getString(z.cS);
          break label856;
          str17 = localResources.getString(z.aI);
          continue;
          if ((((Time)localObject1).hour == 0) && (i29 != 0) && (i26 == 0))
            if (i27 != 0)
              str17 = localResources.getString(z.cG);
            else
              str17 = localResources.getString(z.cf);
        }
        localObject2 = localResources.getString(z.aI);
        break label351;
        label1140: str19 = ((Time)localObject1).format(str17);
        break label369;
        if (m != 0)
        {
          i15 = 0;
          break label382;
        }
        if (i11 != i14)
        {
          i15 = 1;
          break label382;
        }
        Time localTime3 = new Time();
        localTime3.setToNow();
        if (i11 != localTime3.year);
        for (int i19 = 1; ; i19 = 0)
        {
          i15 = i19;
          break;
        }
        if (i15 != 0)
        {
          if (i2 != 0)
          {
            if (i3 != 0)
            {
              str5 = localResources.getString(z.aE);
              break label397;
            }
            str5 = localResources.getString(z.T);
            break label397;
          }
          if (i3 != 0)
          {
            str5 = localResources.getString(z.bx);
            break label397;
          }
          str5 = localResources.getString(z.aP);
          break label397;
        }
        if (i2 != 0)
        {
          if (i3 != 0)
          {
            str5 = localResources.getString(z.bA);
            break label397;
          }
          str5 = localResources.getString(z.cn);
          break label397;
        }
        if (i3 != 0)
        {
          str5 = localResources.getString(z.ak);
          break label397;
        }
        str5 = localResources.getString(z.N);
        break label397;
        str6 = localResources.getString(z.cB);
        break label417;
        if (i != 0)
        {
          str6 = localResources.getString(z.cc);
          break label417;
        }
        str6 = localResources.getString(z.aT);
        break label417;
        label1399: if ((i11 != i14) || (i3 != 0))
        {
          localFormatter = paramFormatter.format(str6, new Object[] { str1, localTime1.format(str5), str3, str2, ((Time)localObject1).format(str5), str4 });
        }
        else
        {
          String str7;
          String str8;
          String str9;
          String str10;
          String str11;
          String str12;
          if (i4 != 0)
          {
            str7 = "%m";
            str8 = localTime1.format(str7);
            str9 = localTime1.format("%-d");
            str10 = localTime1.format("%Y");
            if (i5 == 0)
              break label1677;
            str11 = null;
            if (i5 == 0)
              break label1689;
            str12 = null;
            if (i5 == 0)
              break label1702;
          }
          for (String str13 = null; ; str13 = ((Time)localObject1).format("%Y"))
          {
            if (i10 == i13)
              break label1715;
            int i16 = 0;
            if (j != 0)
              i16 = 1;
            if (i15 != 0)
              i16 += 2;
            if (i != 0)
              i16 += 4;
            if (i4 != 0)
              i16 += 8;
            localFormatter = paramFormatter.format(localResources.getString(android.text.format.DateUtils.sameYearTable[i16]), new Object[] { str1, str8, str9, str10, str3, str2, str11, str12, str13, str4 });
            break;
            if (i2 != 0)
            {
              str7 = localResources.getString(z.cX);
              break label1477;
            }
            str7 = "%B";
            break label1477;
            str11 = ((Time)localObject1).format(str7);
            break label1514;
            str12 = ((Time)localObject1).format("%-d");
            break label1522;
          }
          if (i9 == i12)
            break label1836;
          int i17 = 0;
          if (j != 0)
            i17 = 1;
          if (i15 != 0)
            i17 += 2;
          if (i != 0)
            i17 += 4;
          if (i4 != 0)
            i17 += 8;
          localFormatter = paramFormatter.format(localResources.getString(android.text.format.DateUtils.sameMonthTable[i17]), new Object[] { str1, str8, str9, str10, str3, str2, str11, str12, str13, str4 });
        }
      }
      int i18;
      String str14;
      String str15;
      String str16;
      if ((paramInt & 0x10) != 0)
      {
        i18 = 1;
        if ((i == 0) && (i18 == 0) && (j == 0))
          i18 = 1;
        str14 = "";
        if (i != 0)
        {
          if (i5 == 0)
            break label1953;
          str14 = str3;
        }
        if (i18 == 0)
          break label2034;
        str15 = localTime1.format(str5);
        if (j == 0)
          break label1996;
        if (i == 0)
          break label1983;
        str16 = localResources.getString(z.h);
      }
      while (true)
      {
        localFormatter = paramFormatter.format(str16, new Object[] { str14, str1, str15 });
        break;
        i18 = 0;
        break label1847;
        str14 = String.format(localResources.getString(z.bX), new Object[] { str3, str4 });
        break label1883;
        str16 = localResources.getString(z.cT);
        continue;
        if (i != 0)
        {
          str16 = localResources.getString(z.aQ);
        }
        else
        {
          localFormatter = paramFormatter.format("%s", new Object[] { str15 });
          break;
          label2034: if (j != 0)
          {
            if (i != 0)
            {
              str16 = localResources.getString(z.bp);
              str15 = "";
              continue;
            }
            localFormatter = paramFormatter.format("%s", new Object[] { str1 });
            break;
          }
          if (i != 0)
          {
            localFormatter = paramFormatter.format("%s", new Object[] { str14 });
            break;
          }
          str15 = "";
          str16 = "";
        }
      }
      localObject2 = str18;
      break label351;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.k
 * JD-Core Version:    0.6.2
 */