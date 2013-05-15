package com.avast.android.generic;

import android.content.Context;
import android.text.format.Time;
import com.avast.android.generic.util.m;
import java.util.Calendar;

public class d
{
  private static final int[] a;
  private static final int[] b;
  private static final int[] c = arrayOfInt3;

  static
  {
    int[] arrayOfInt1 = new int[7];
    arrayOfInt1[0] = z.bD;
    arrayOfInt1[1] = z.aR;
    arrayOfInt1[2] = z.aC;
    arrayOfInt1[3] = z.bd;
    arrayOfInt1[4] = z.ah;
    arrayOfInt1[5] = z.be;
    arrayOfInt1[6] = z.cQ;
    a = arrayOfInt1;
    int[] arrayOfInt2 = new int[7];
    arrayOfInt2[0] = z.bv;
    arrayOfInt2[1] = z.X;
    arrayOfInt2[2] = z.aJ;
    arrayOfInt2[3] = z.ar;
    arrayOfInt2[4] = z.bQ;
    arrayOfInt2[5] = z.bl;
    arrayOfInt2[6] = z.w;
    b = arrayOfInt2;
    int[] arrayOfInt3 = new int[7];
    arrayOfInt3[0] = z.bE;
    arrayOfInt3[1] = z.bT;
    arrayOfInt3[2] = z.n;
    arrayOfInt3[3] = z.bu;
    arrayOfInt3[4] = z.bC;
    arrayOfInt3[5] = z.ck;
    arrayOfInt3[6] = z.o;
  }

  public static int a()
  {
    return (-2 + (7 + Calendar.getInstance().get(7))) % 7;
  }

  public static int a(int paramInt)
  {
    int i = 1;
    for (int j = 0; j < paramInt; j++)
      i *= 2;
    return i;
  }

  private static int a(int paramInt1, int paramInt2)
  {
    int i = 1;
    if (paramInt2 == 0);
    while (true)
    {
      return i;
      int j = i;
      int k;
      for (i = paramInt1; j < paramInt2; i = k)
      {
        k = i * 2;
        j++;
      }
    }
  }

  public static String a(Context paramContext, int paramInt)
  {
    return paramContext.getString(a[paramInt]);
  }

  public static boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    Time localTime = new Time();
    localTime.setToNow();
    if ((a(localTime, paramInt1)) && (a(localTime, paramInt2, paramInt3)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private static boolean a(Time paramTime, int paramInt)
  {
    int i = -1 + paramTime.weekDay;
    if (i == -1)
      i = 6;
    m.c("LookupSupport.checkWeekDays(" + paramInt + "), wd:" + i);
    if ((paramInt & (int)Math.pow(2.0D, i)) >= 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private static boolean a(Time paramTime, int paramInt1, int paramInt2)
  {
    boolean bool1 = true;
    int i = 60 * paramTime.hour + paramTime.minute;
    if (paramInt1 <= paramInt2)
      if ((paramInt1 > i) || (i > paramInt2));
    while (true)
    {
      return bool1;
      bool1 = false;
      continue;
      boolean bool2;
      if (i < paramInt1)
      {
        bool2 = false;
        if (i > paramInt2);
      }
      else
      {
        bool2 = bool1;
      }
      bool1 = bool2;
    }
  }

  public static int b(int paramInt)
  {
    int i = 0;
    int j = (-2 + (7 + Calendar.getInstance().getFirstDayOfWeek())) % 7;
    int k = 1;
    for (int m = 0; m < 7; m++)
    {
      if ((paramInt & k) > 0)
        i += a(2, (m + j) % 7);
      k *= 2;
    }
    return i;
  }

  public static String b(Context paramContext, int paramInt)
  {
    return paramContext.getString(b[paramInt]);
  }

  public static int c(int paramInt)
  {
    int i = 0;
    int j = 7 - (-2 + (7 + Calendar.getInstance().getFirstDayOfWeek()));
    int k = 1;
    for (int m = 0; m < 7; m++)
    {
      if ((paramInt & k) > 0)
        i += a(2, (m + j) % 7);
      k *= 2;
    }
    return i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.d
 * JD-Core Version:    0.6.2
 */