package com.avast.android.mobilesecurity.engine;

import com.avast.android.generic.util.e;
import com.avast.android.generic.util.m;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import java.util.TimeZone;

public class al
{
  public String a;
  public Date b;
  public long c;
  public long d;

  public al()
  {
    Random localRandom = new Random(System.currentTimeMillis());
    Date localDate = new Date();
    String str1 = "" + localDate.getYear() % 100;
    if (1 + localDate.getMonth() < 10)
      str1 = str1 + "0";
    String str2 = str1 + (1 + localDate.getMonth());
    if (localDate.getDate() < 10)
      str2 = str2 + "0";
    String str3 = str2 + localDate.getDate();
    this.a = (str3 + "-00");
    long l = 1000000L;
    if (localRandom.nextFloat() < 0.5F)
      l *= 1000L;
    this.b = new Date(System.currentTimeMillis() - l);
    this.c = localRandom.nextInt(10000);
    this.d = localRandom.nextInt(10000);
  }

  public static Integer a()
  {
    return Integer.valueOf(Integer.parseInt("vpsi-2".substring(1 + "vpsi-2".indexOf("-"))));
  }

  public static List a(byte[] paramArrayOfByte)
  {
    LinkedList localLinkedList1 = new LinkedList();
    if (paramArrayOfByte == null);
    for (LinkedList localLinkedList2 = localLinkedList1; ; localLinkedList2 = localLinkedList1)
    {
      return localLinkedList2;
      m.c(e.a(paramArrayOfByte));
      int k;
      for (int i = 0; i < paramArrayOfByte.length; i = k)
      {
        int j = 4 + ((Integer)e.a(paramArrayOfByte, null, Integer.TYPE, i)).intValue();
        byte[] arrayOfByte = new byte[j];
        System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, j);
        k = j + i;
        localLinkedList1.add(b(arrayOfByte));
      }
    }
  }

  public static al b(byte[] paramArrayOfByte)
  {
    al localal1 = new al();
    al localal2;
    try
    {
      if (4 + ((Integer)e.a(paramArrayOfByte, null, Integer.TYPE, 0)).intValue() == paramArrayOfByte.length)
        break label54;
      throw new IllegalArgumentException("Invalid structure length");
    }
    catch (Exception localException)
    {
      m.b("Exception parsing VPS information", localException);
      localal2 = null;
    }
    label51: return localal2;
    label54: Calendar localCalendar = Calendar.getInstance(TimeZone.getTimeZone("GMT+1"));
    int j;
    int k;
    for (int i = 4; ; i = k + j)
    {
      an localan;
      if (i < paramArrayOfByte.length)
      {
        j = ((Integer)e.a(paramArrayOfByte, null, Integer.TYPE, i)).intValue();
        k = i + 4;
        if (paramArrayOfByte[(-1 + (k + j))] != -1)
          throw new IllegalArgumentException("Invalid payload length");
        localan = an.a(((Short)e.a(paramArrayOfByte, null, Short.TYPE, k)).shortValue());
        if (localan == null);
      }
      else
      {
        switch (am.a[localan.ordinal()])
        {
        case 1:
          localal1.a = new String(paramArrayOfByte, k + 2, -1 + (j - 2));
          break;
        case 2:
          Short localShort5 = (Short)e.a(paramArrayOfByte, null, Short.TYPE, k + 2);
          if (localShort5 != null)
            localCalendar.set(1, localShort5.shortValue());
          break;
        case 3:
          Short localShort4 = (Short)e.a(paramArrayOfByte, null, Short.TYPE, k + 2);
          if (localShort4 != null)
            localCalendar.set(2, localShort4.shortValue());
          break;
        case 4:
          Short localShort3 = (Short)e.a(paramArrayOfByte, null, Short.TYPE, k + 2);
          if (localShort3 != null)
            localCalendar.set(5, localShort3.shortValue());
          break;
        case 5:
          Short localShort2 = (Short)e.a(paramArrayOfByte, null, Short.TYPE, k + 2);
          if (localShort2 != null)
            localCalendar.set(10, localShort2.shortValue());
          break;
        case 6:
          Short localShort1 = (Short)e.a(paramArrayOfByte, null, Short.TYPE, k + 2);
          if (localShort1 != null)
            localCalendar.set(12, localShort1.shortValue());
          break;
        case 7:
          Long localLong2 = (Long)e.a(paramArrayOfByte, null, Long.TYPE, k + 2);
          if (localLong2 != null)
            localal1.c = localLong2.longValue();
          break;
        case 8:
          Long localLong1 = (Long)e.a(paramArrayOfByte, null, Long.TYPE, k + 2);
          if (localLong1 != null)
          {
            localal1.d = localLong1.longValue();
            continue;
            localal1.b = localCalendar.getTime();
            localal2 = localal1;
            break label51;
          }
          break;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.al
 * JD-Core Version:    0.6.2
 */