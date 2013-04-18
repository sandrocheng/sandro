package com.keniu.security.util;

import java.math.BigDecimal;

public final class ax
{
  public static final long a = 1073741824L;
  public static final long b = 1048576L;
  public static final long c = 1024L;
  public static final long d = 1L;

  public static String a(long paramLong)
  {
    if (paramLong < 0L);
    Object[] arrayOfObject;
    for (String str = "" + paramLong; ; str = String.format("%s", arrayOfObject))
    {
      return str;
      long l1 = paramLong % 1048576L;
      long l2 = l1 * 10L % 1048576L;
      long l3 = l2 * 10L % 1048576L;
      BigDecimal localBigDecimal = new BigDecimal(String.valueOf(paramLong / 1048576L) + "." + String.valueOf(l1 * 10L / 1048576L) + String.valueOf(l2 * 10L / 1048576L) + String.valueOf(l3 * 10L / 1048576L)).setScale(2, 4);
      arrayOfObject = new Object[1];
      arrayOfObject[0] = localBigDecimal.toString();
    }
  }

  public static String b(long paramLong)
  {
    String str;
    if (paramLong < 0L)
      str = "error --size<0";
    while (true)
    {
      return str;
      if (paramLong == 0L)
      {
        str = "0.00";
      }
      else if (paramLong < 10485.76D)
      {
        str = "<0.01";
      }
      else
      {
        long l1 = paramLong % 1048576L;
        long l2 = l1 * 10L % 1048576L;
        long l3 = l2 * 10L % 1048576L;
        BigDecimal localBigDecimal = new BigDecimal(String.valueOf(paramLong / 1048576L) + "." + String.valueOf(l1 * 10L / 1048576L) + String.valueOf(l2 * 10L / 1048576L) + String.valueOf(l3 * 10L / 1048576L)).setScale(2, 4);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localBigDecimal.toString();
        str = String.format("%s", arrayOfObject);
      }
    }
  }

  public static String c(long paramLong)
  {
    String str;
    if (paramLong < 0L)
      str = "" + paramLong;
    while (true)
    {
      return str;
      if (paramLong >= 1073741824L)
      {
        long l7 = paramLong % 1073741824L;
        long l8 = 10L * l7 % 1073741824L;
        long l9 = 10L * l8 % 1073741824L;
        BigDecimal localBigDecimal3 = new BigDecimal(String.valueOf(paramLong / 1073741824L) + "." + String.valueOf(l7 * 10L / 1073741824L) + String.valueOf(10L * l8 / 1073741824L) + String.valueOf(10L * l9 / 1073741824L)).setScale(2, 4);
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = localBigDecimal3.toString();
        str = String.format("%sGB", arrayOfObject3);
      }
      else if (paramLong >= 1048576L)
      {
        long l4 = paramLong % 1048576L;
        long l5 = 10L * l4 % 1048576L;
        long l6 = 10L * l5 % 1048576L;
        BigDecimal localBigDecimal2 = new BigDecimal(String.valueOf(paramLong / 1048576L) + "." + String.valueOf(l4 * 10L / 1048576L) + String.valueOf(10L * l5 / 1048576L) + String.valueOf(10L * l6 / 1048576L)).setScale(2, 4);
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = localBigDecimal2.toString();
        str = String.format("%sMB", arrayOfObject2);
      }
      else if (paramLong >= 1024L)
      {
        long l1 = paramLong % 1024L;
        long l2 = 10L * l1 % 1024L;
        long l3 = 10L * l2 % 1024L;
        BigDecimal localBigDecimal1 = new BigDecimal(String.valueOf(paramLong / 1024L) + "." + String.valueOf(l1 * 10L / 1024L) + String.valueOf(10L * l2 / 1024L) + String.valueOf(10L * l3 / 1024L)).setScale(2, 4);
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = localBigDecimal1.toString();
        str = String.format("%sKB", arrayOfObject1);
      }
      else if (paramLong != 0L)
      {
        str = "< 1 KB";
      }
      else
      {
        str = "0 KB";
      }
    }
  }

  public static String d(long paramLong)
  {
    Object localObject;
    if (paramLong <= 0L)
      localObject = "0M";
    while (true)
    {
      return localObject;
      if (paramLong < 10485.76D)
        localObject = "0.01M";
      else
        try
        {
          long l1 = paramLong % 1048576L;
          long l2 = l1 * 10L % 1048576L;
          long l3 = l2 * 10L % 1048576L;
          BigDecimal localBigDecimal = new BigDecimal(String.valueOf(paramLong / 1048576L) + "." + String.valueOf(l1 * 10L / 1048576L) + String.valueOf(l2 * 10L / 1048576L) + String.valueOf(l3 * 10L / 1048576L)).setScale(2, 4).stripTrailingZeros();
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = localBigDecimal.toPlainString();
          String str = String.format("%sM", arrayOfObject);
          localObject = str;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          localObject = "0M";
        }
    }
  }

  public static String e(long paramLong)
  {
    String str;
    if (paramLong < 0L)
      str = "" + paramLong;
    while (true)
    {
      return str;
      if (paramLong >= 1073741824L)
      {
        long l5 = paramLong % 1073741824L;
        long l6 = 10L * l5 % 1073741824L;
        BigDecimal localBigDecimal3 = new BigDecimal(String.valueOf(paramLong / 1073741824L) + "." + String.valueOf(l5 * 10L / 1073741824L) + String.valueOf(10L * l6 / 1073741824L)).setScale(1, 4);
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = localBigDecimal3.toString();
        str = String.format("%sGB", arrayOfObject3);
      }
      else if (paramLong >= 1048576L)
      {
        long l3 = paramLong % 1048576L;
        long l4 = 10L * l3 % 1048576L;
        BigDecimal localBigDecimal2 = new BigDecimal(String.valueOf(paramLong / 1048576L) + "." + String.valueOf(l3 * 10L / 1048576L) + String.valueOf(10L * l4 / 1048576L)).setScale(1, 4);
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = localBigDecimal2.toString();
        str = String.format("%sMB", arrayOfObject2);
      }
      else if (paramLong >= 1024L)
      {
        long l1 = paramLong % 1024L;
        long l2 = 10L * l1 % 1024L;
        BigDecimal localBigDecimal1 = new BigDecimal(String.valueOf(paramLong / 1024L) + "." + String.valueOf(l1 * 10L / 1024L) + String.valueOf(10L * l2 / 1024L)).setScale(1, 4);
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = localBigDecimal1.toString();
        str = String.format("%sKB", arrayOfObject1);
      }
      else if (paramLong != 0L)
      {
        str = "< 1 KB";
      }
      else
      {
        str = "0.0 KB";
      }
    }
  }

  public static String f(long paramLong)
  {
    String str;
    if (paramLong < 0L)
      str = "" + paramLong;
    while (true)
    {
      return str;
      if (paramLong >= 1073741824L)
      {
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = Long.valueOf(paramLong / 1073741824L);
        arrayOfObject3[1] = Long.valueOf(10L * (paramLong % 1073741824L) / 1073741824L);
        str = String.format("%d.%dGB", arrayOfObject3);
      }
      else if (paramLong >= 1048576L)
      {
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Long.valueOf(paramLong / 1048576L);
        arrayOfObject2[1] = Long.valueOf(10L * (paramLong % 1048576L) / 1048576L);
        str = String.format("%d.%dMB", arrayOfObject2);
      }
      else if (paramLong >= 1024L)
      {
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = Long.valueOf(paramLong / 1024L);
        arrayOfObject1[1] = Long.valueOf(10L * (paramLong % 1024L) / 1024L);
        str = String.format("%d.%dKB", arrayOfObject1);
      }
      else if (paramLong != 0L)
      {
        str = "< 1KB";
      }
      else
      {
        str = "0KB";
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.ax
 * JD-Core Version:    0.6.2
 */