package com.keniu.security.util;

import android.content.Context;
import android.text.format.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class i
{
  public static final long a = 1000L;
  public static final long b = 60000L;
  public static final long c = 3600000L;
  public static final long d = 86400000L;
  public static final long e = 1800000L;
  public static final long f = 10800000L;
  private static final long h = 86400000L;
  private static final int i = 0;
  private static final int j = 1;
  private static final int k = 2;
  private static final int l = 3;
  private static final int m;

  static
  {
    if (!i.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      g = bool;
      m = Calendar.getInstance().get(15);
      return;
    }
  }

  public static CharSequence a(long paramLong, Context paramContext)
  {
    long l1 = (System.currentTimeMillis() + m) / 86400000L;
    long l2 = (paramLong + m) / 86400000L;
    int n = (int)l1 - (int)l2;
    if ((n > 3) || (n < 0))
      n = 3;
    String str;
    switch (n)
    {
    default:
      str = paramContext.getString(2131429022);
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return DateFormat.format(str, paramLong);
      str = paramContext.getString(2131429019);
      continue;
      str = paramContext.getString(2131429020);
      continue;
      str = paramContext.getString(2131429021);
    }
  }

  private static CharSequence a(Date paramDate, Context paramContext)
  {
    return a(paramDate.getTime(), paramContext);
  }

  public static String a()
  {
    return new SimpleDateFormat("HH:mm").format(new Date());
  }

  public static String a(long paramLong)
  {
    return DateFormat.format("yyyy-MM-dd kk:mm:ss", paramLong).toString();
  }

  public static boolean a(long paramLong1, long paramLong2)
  {
    if (Math.abs(paramLong1 - paramLong2) / 3600000L >= 24L);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private static String[] a(int paramInt)
  {
    String[] arrayOfString = new String[2];
    Calendar localCalendar = Calendar.getInstance();
    if (localCalendar.get(5) < paramInt)
      localCalendar.add(2, -1);
    if (paramInt <= 28)
    {
      localCalendar.set(5, paramInt);
      arrayOfString[0] = DateFormat.format("yyyyMMdd", localCalendar.getTimeInMillis()).toString();
      localCalendar.add(2, 1);
      arrayOfString[1] = DateFormat.format("yyyyMMdd", localCalendar.getTimeInMillis()).toString();
    }
    while (true)
    {
      return arrayOfString;
      localCalendar.set(5, Math.min(paramInt, localCalendar.getActualMaximum(5)));
      arrayOfString[0] = DateFormat.format("yyyyMMdd", localCalendar.getTimeInMillis()).toString();
      localCalendar.add(2, 1);
      localCalendar.set(5, Math.min(paramInt, localCalendar.getActualMaximum(5)));
      arrayOfString[1] = DateFormat.format("yyyyMMdd", localCalendar.getTimeInMillis()).toString();
    }
  }

  private static String[] a(int paramInt, String paramString)
  {
    String[] arrayOfString = new String[2];
    Calendar localCalendar = Calendar.getInstance();
    if (localCalendar.get(5) < paramInt)
      localCalendar.add(2, -1);
    if (paramInt <= 28)
    {
      localCalendar.set(5, paramInt);
      arrayOfString[0] = DateFormat.format(paramString, localCalendar.getTimeInMillis()).toString();
      localCalendar.add(2, 1);
      arrayOfString[1] = DateFormat.format(paramString, localCalendar.getTimeInMillis()).toString();
    }
    while (true)
    {
      return arrayOfString;
      localCalendar.set(5, Math.min(paramInt, localCalendar.getActualMaximum(5)));
      arrayOfString[0] = DateFormat.format(paramString, localCalendar.getTimeInMillis()).toString();
      localCalendar.add(2, 1);
      localCalendar.set(5, Math.min(paramInt, localCalendar.getActualMaximum(5)));
      arrayOfString[1] = DateFormat.format(paramString, localCalendar.getTimeInMillis()).toString();
    }
  }

  private static int b(int paramInt)
  {
    int n;
    if (paramInt % 400 == 0)
      n = 1;
    while (true)
    {
      return n;
      if (paramInt % 100 == 0)
        n = 0;
      else if (paramInt % 4 == 0)
        n = 1;
      else
        n = 0;
    }
  }

  private static int b(long paramLong1, long paramLong2)
  {
    long l1 = (paramLong1 + m) / 86400000L;
    long l2 = (paramLong2 + m) / 86400000L;
    int n = (int)l1 - (int)l2;
    if ((n > 3) || (n < 0))
      n = 3;
    return n;
  }

  private static long b()
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(11, 0);
    localCalendar.set(12, 0);
    localCalendar.set(13, 0);
    return localCalendar.getTimeInMillis();
  }

  public static CharSequence b(long paramLong)
  {
    return DateFormat.format("yyyyMMddkkmmssSSS", paramLong);
  }

  private static int c(int paramInt)
  {
    Calendar localCalendar1 = Calendar.getInstance();
    int n = localCalendar1.get(5);
    Calendar localCalendar2 = Calendar.getInstance();
    if (n < paramInt)
      localCalendar2.set(5, Math.min(paramInt, localCalendar2.getActualMaximum(5)));
    if (n == paramInt)
    {
      localCalendar2.add(2, 1);
      localCalendar2.set(5, Math.min(paramInt, localCalendar2.getActualMaximum(5)));
    }
    if (n > paramInt)
    {
      localCalendar2.add(2, 1);
      localCalendar2.set(5, Math.min(paramInt, localCalendar2.getActualMaximum(5)));
    }
    int i1 = localCalendar2.get(6) - localCalendar1.get(6);
    int i3;
    int i4;
    if (localCalendar2.get(1) != localCalendar1.get(1))
    {
      i3 = localCalendar1.get(1);
      if (i3 % 400 == 0)
        i4 = 1;
    }
    for (int i2 = i1 + (i4 + 365); ; i2 = i1)
    {
      if ((!g) && (i2 <= 0))
      {
        throw new AssertionError("RemainingDays > 0");
        if ((i3 % 100 != 0) && (i3 % 4 == 0))
        {
          i4 = 1;
          break;
        }
        i4 = 0;
        break;
      }
      return i2;
    }
  }

  public static String c(long paramLong)
  {
    return DateFormat.format("yyyy-MM-dd kk:mm:ss", paramLong).toString();
  }

  private static long d(int paramInt)
  {
    Calendar localCalendar = Calendar.getInstance();
    if (localCalendar.get(5) < paramInt)
      localCalendar.add(2, -1);
    if (paramInt <= 28)
      localCalendar.set(5, paramInt);
    while (true)
    {
      localCalendar.set(11, 0);
      localCalendar.set(12, 0);
      localCalendar.set(13, 0);
      return 1000L * (localCalendar.getTimeInMillis() / 1000L);
      localCalendar.set(5, Math.min(paramInt, localCalendar.getActualMaximum(5)));
    }
  }

  private static String d(long paramLong)
  {
    return DateFormat.format("kk:mm yyyy/MM/dd", paramLong).toString();
  }

  private static String e(long paramLong)
  {
    return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Long.valueOf(paramLong));
  }

  private static String f(long paramLong)
  {
    return new SimpleDateFormat("yyyy-MM-dd HH:mm").format(Long.valueOf(paramLong));
  }

  private static String g(long paramLong)
  {
    return DateFormat.format("yyyyMMdd", paramLong).toString();
  }

  private static String h(long paramLong)
  {
    return DateFormat.format("yyyyMM", paramLong).toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.i
 * JD-Core Version:    0.6.2
 */