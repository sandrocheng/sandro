package com.avast.android.mobilesecurity.app.trafficinfo;

import android.annotation.TargetApi;
import android.database.Cursor;
import android.net.TrafficStats;
import com.avast.android.generic.util.t;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;

@TargetApi(8)
public class a
{
  public long a = 0L;
  public long b = 0L;
  public long c = 0L;
  public b d = new b(this, 0);
  public b e = new b(this, 1);
  public b f = new b(this, 2);
  public b g = new b(this, 3);
  public long h = -100L;
  private boolean i = false;
  private boolean j = false;

  public a(long paramLong)
  {
    this.h = paramLong;
    this.i = false;
  }

  public a(long paramLong1, c paramc, int paramInt, Date paramDate, long paramLong2)
  {
    this.h = paramLong1;
    this.j = true;
    this.i = false;
    a(paramc, paramInt, paramDate, paramLong2);
  }

  public static a a(Cursor paramCursor, HashMap paramHashMap)
  {
    long l = paramCursor.getLong(12);
    int k = paramCursor.getInt(11);
    a locala;
    if (paramHashMap.containsKey(Long.valueOf(l)))
    {
      locala = (a)paramHashMap.get(Long.valueOf(l));
      locala.a(paramCursor, k);
    }
    while (true)
    {
      return locala;
      locala = new a(l);
      locala.a(paramCursor, k);
      paramHashMap.put(Long.valueOf(l), locala);
    }
  }

  private void a(Cursor paramCursor, int paramInt)
  {
    b localb;
    if (paramInt == 0)
      localb = this.d;
    while (true)
    {
      localb.i = paramCursor.getLong(10);
      localb.h = paramCursor.getLong(9);
      localb.c = paramCursor.getLong(4);
      localb.b = paramCursor.getLong(3);
      localb.e = paramCursor.getLong(6);
      localb.d = paramCursor.getLong(5);
      localb.g = paramCursor.getLong(8);
      localb.f = paramCursor.getLong(7);
      localb.a = paramCursor.getLong(1);
      localb.k = true;
      this.i = false;
      return;
      if (paramInt == 1)
      {
        localb = this.e;
      }
      else if (paramInt == 2)
      {
        localb = this.f;
      }
      else
      {
        localb = this.g;
        this.a = paramCursor.getLong(2);
        this.c = paramCursor.getLong(14);
        this.b = paramCursor.getLong(13);
      }
    }
  }

  public void a(c paramc, int paramInt, Date paramDate, long paramLong)
  {
    long l1;
    long l2;
    if (((!NetworkStatsService.a) || (this.h != NetworkStatsService.b)) || (this.h == -1L))
    {
      l1 = TrafficStats.getTotalTxBytes();
      l2 = TrafficStats.getTotalRxBytes();
      if (l1 != -1L)
        break label1209;
    }
    label285: label1054: label1209: for (long l3 = 0L; ; l3 = l1)
    {
      if (l2 == -1L)
        l2 = 0L;
      long l4 = 0L;
      long l5 = 0L;
      this.a = paramLong;
      Calendar localCalendar = GregorianCalendar.getInstance();
      localCalendar.setTimeInMillis(paramDate.getTime());
      localCalendar.set(11, 0);
      localCalendar.set(12, 0);
      localCalendar.set(13, 0);
      localCalendar.set(14, 0);
      Date localDate1 = localCalendar.getTime();
      long l6 = localDate1.getTime();
      localCalendar.setTime(localDate1);
      localCalendar.set(5, paramInt);
      Date localDate2 = localCalendar.getTime();
      if (localDate2.after(paramDate))
      {
        localCalendar.add(2, -1);
        localDate2 = localCalendar.getTime();
      }
      long l7 = localDate2.getTime();
      localCalendar.setTime(localDate2);
      localCalendar.set(2, 0);
      Date localDate3 = localCalendar.getTime();
      if (localDate3.after(paramDate))
      {
        localCalendar.add(1, -1);
        localDate3 = localCalendar.getTime();
      }
      long l8 = localDate3.getTime();
      int k;
      long l10;
      long l11;
      if (this.f.a < l8)
      {
        t.a("AvastMobileSecurityNetworkInfo", "Resetting year data");
        this.f.a();
        this.e.a();
        this.d.a();
        this.i = true;
        k = 1;
        if (!this.j)
          break label954;
        this.j = false;
        long l12 = l5;
        l10 = l4;
        l11 = l12;
        this.b = l3;
        this.c = l2;
        b localb1 = this.g;
        localb1.h = (l10 + localb1.h);
        b localb2 = this.g;
        localb2.i = (l11 + localb2.i);
        b localb3 = this.d;
        localb3.h = (l10 + localb3.h);
        b localb4 = this.d;
        localb4.i = (l11 + localb4.i);
        b localb5 = this.e;
        localb5.h = (l10 + localb5.h);
        b localb6 = this.e;
        localb6.i = (l11 + localb6.i);
        b localb7 = this.f;
        localb7.h = (l10 + localb7.h);
        b localb8 = this.f;
        localb8.i = (l11 + localb8.i);
        if (paramc.c != f.c)
          break label1054;
        if (paramc.b == e.b)
        {
          b localb25 = this.g;
          localb25.f = (l10 + localb25.f);
          b localb26 = this.g;
          localb26.g = (l11 + localb26.g);
          b localb27 = this.d;
          localb27.f = (l10 + localb27.f);
          b localb28 = this.d;
          localb28.g = (l11 + localb28.g);
          b localb29 = this.e;
          localb29.f = (l10 + localb29.f);
          b localb30 = this.e;
          localb30.g = (l11 + localb30.g);
          b localb31 = this.f;
          localb31.f = (l10 + localb31.f);
          b localb32 = this.f;
          localb32.g = (l11 + localb32.g);
        }
        b localb17 = this.g;
        localb17.b = (l10 + localb17.b);
        b localb18 = this.g;
        localb18.c = (l11 + localb18.c);
        b localb19 = this.d;
        localb19.b = (l10 + localb19.b);
        b localb20 = this.d;
        localb20.c = (l11 + localb20.c);
        b localb21 = this.e;
        localb21.b = (l10 + localb21.b);
        b localb22 = this.e;
        localb22.c = (l11 + localb22.c);
        b localb23 = this.f;
        localb23.b = (l10 + localb23.b);
        b localb24 = this.f;
        localb24.c = (l11 + localb24.c);
      }
      while (true)
      {
        this.d.a = l6;
        this.e.a = l7;
        this.f.a = l8;
        this.g.a = paramDate.getTime();
        this.i = true;
        while (true)
        {
          return;
          l1 = TrafficStats.getUidTxBytes((int)this.h);
          l2 = TrafficStats.getUidRxBytes((int)this.h);
          break;
          if (this.e.a < l7)
          {
            t.a("AvastMobileSecurityNetworkInfo", "Resetting month data");
            this.e.a();
            this.d.a();
            this.i = true;
            k = 1;
            break label285;
          }
          boolean bool = this.d.a < l6;
          k = 0;
          if (!bool)
            break label285;
          t.a("AvastMobileSecurityNetworkInfo", "Resetting day data");
          this.d.a();
          this.i = true;
          k = 1;
          break label285;
          label954: if (l3 >= this.b)
          {
            l4 = l3 - this.b;
            label973: if (l2 < this.c)
              break label1040;
            l5 = l2 - this.c;
          }
          while (true)
          {
            if ((l4 == 0L) && (l5 == 0L) && (k == 0))
              break label1052;
            long l9 = l5;
            l10 = l4;
            l11 = l9;
            break;
            this.b = l3;
            this.i = true;
            break label973;
            this.c = l2;
            this.i = true;
          }
        }
        b localb9 = this.g;
        localb9.d = (l10 + localb9.d);
        b localb10 = this.g;
        localb10.e = (l11 + localb10.e);
        b localb11 = this.d;
        localb11.d = (l10 + localb11.d);
        b localb12 = this.d;
        localb12.e = (l11 + localb12.e);
        b localb13 = this.e;
        localb13.d = (l10 + localb13.d);
        b localb14 = this.e;
        localb14.e = (l11 + localb14.e);
        b localb15 = this.f;
        localb15.d = (l10 + localb15.d);
        b localb16 = this.f;
        localb16.e = (l11 + localb16.e);
      }
    }
  }

  public void a(String paramString, boolean paramBoolean)
  {
    t.a(paramString, "(" + this.h + ", " + this.i + "): " + "mRealtimeElapsed: " + this.a / 60000L + " mins " + "mTotalTxOffset: " + this.b + " " + "mTotalRxOffset: " + this.c);
    if (paramBoolean)
      t.a(paramString, "TODAY");
    this.d.a(paramString);
    if (paramBoolean)
    {
      t.a(paramString, "MONTH");
      this.e.a(paramString);
      t.a(paramString, "YEAR");
      this.f.a(paramString);
      t.a(paramString, "ALL TIME");
      this.g.a(paramString);
    }
  }

  public void a(ArrayList paramArrayList)
  {
    if (this.i)
    {
      this.d.a(paramArrayList);
      this.e.a(paramArrayList);
      this.f.a(paramArrayList);
      this.g.a(paramArrayList);
      this.i = false;
    }
  }

  public void a(boolean paramBoolean1, c paramc, Date paramDate, long paramLong, boolean paramBoolean2, int paramInt)
  {
    if (this.a > paramLong);
    for (this.j = true; ; this.j = false)
    {
      if (paramBoolean2)
        this.j = true;
      if (paramBoolean1)
        a(paramc, paramInt, paramDate, paramLong);
      return;
    }
  }

  public boolean a()
  {
    return this.i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.trafficinfo.a
 * JD-Core Version:    0.6.2
 */