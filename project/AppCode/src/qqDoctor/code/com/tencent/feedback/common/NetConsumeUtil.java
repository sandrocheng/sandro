package com.tencent.feedback.common;

import android.content.Context;
import com.tencent.feedback.a.a;
import com.tencent.feedback.a.c;
import java.util.Date;

public class NetConsumeUtil
{
  public static void clearTodayConsume(Context paramContext)
  {
    c localc = c.a(paramContext);
    if (localc != null)
    {
      long l = new Date().getTime();
      a locala1 = localc.a("local_rqd_upload_todaynowifi");
      if (locala1 != null)
      {
        long[] arrayOfLong1 = { 0L, 0L, 0L };
        locala1.a(0);
        locala1.a(arrayOfLong1);
        locala1.b(l);
        locala1.c(l);
        localc.a(locala1);
      }
      a locala2 = localc.a("local_rqd_upload_todaywifi");
      if (locala2 != null)
      {
        long[] arrayOfLong2 = { 0L, 0L, 0L };
        locala2.a(0);
        locala2.a(arrayOfLong2);
        locala2.c(l);
        locala2.b(l);
        localc.a(locala2);
      }
    }
    while (true)
    {
      return;
      ELog.info("CountProccessAbs has not been inited!");
    }
  }

  public static void clearTotalConsume(Context paramContext)
  {
    c localc = c.a(paramContext);
    if (localc != null)
    {
      long l = new Date().getTime();
      a locala1 = localc.a("local_rqd_upload_totalnowifi");
      if (locala1 != null)
      {
        long[] arrayOfLong1 = { 0L, 0L, 0L };
        locala1.a(0);
        locala1.a(arrayOfLong1);
        locala1.b(l);
        locala1.c(l);
        localc.a(locala1);
      }
      a locala2 = localc.a("local_rqd_upload_totalwifi");
      if (locala2 != null)
      {
        long[] arrayOfLong2 = { 0L, 0L, 0L };
        locala2.a(0);
        locala2.a(arrayOfLong2);
        locala2.c(l);
        locala2.b(l);
        localc.a(locala2);
      }
    }
    while (true)
    {
      return;
      ELog.info("CountProccessAbs has not been inited!");
    }
  }

  public static NetConsumeBean getTodayConsume(Context paramContext)
  {
    ELog.debug("CountProccessAbs getTodayConsume start!");
    c localc = c.a(paramContext);
    long l1;
    long l2;
    long l3;
    long l4;
    long[] arrayOfLong2;
    long l6;
    long l7;
    long[] arrayOfLong1;
    long l10;
    long l11;
    long l12;
    long l13;
    long l14;
    if (localc != null)
    {
      Date localDate = new Date();
      l1 = 0L;
      l2 = localDate.getTime();
      l3 = 0L;
      l4 = 0L;
      a locala1 = localc.a("local_rqd_upload_todaynowifi");
      if ((locala1 != null) && (g.a(localDate, new Date(locala1.c()))))
      {
        l2 = locala1.c();
        l1 = 0L + locala1.e();
        arrayOfLong2 = locala1.f();
        if (arrayOfLong2 != null)
          if (arrayOfLong2.length == 3)
          {
            long l18 = arrayOfLong2[1] + arrayOfLong2[2];
            l3 = 0L + arrayOfLong2[1];
            l4 = 0L + arrayOfLong2[2];
            long l19 = l1;
            l6 = l18;
            l7 = l19;
            a locala2 = localc.a("local_rqd_upload_todaywifi");
            if ((locala2 == null) || (!g.a(localDate, new Date(locala2.c()))))
              break label349;
            l2 = Math.min(l2, locala2.c());
            l7 += locala2.e();
            arrayOfLong1 = locala2.f();
            if (arrayOfLong1 == null)
              break label349;
            if (arrayOfLong1.length != 3)
              break label325;
            long l15 = arrayOfLong1[1] + arrayOfLong1[2];
            long l16 = l3 + arrayOfLong1[1];
            long l17 = l4 + arrayOfLong1[2];
            l10 = l2;
            l11 = l7;
            l12 = l15;
            l13 = l17;
            l14 = l16;
          }
      }
    }
    label264: for (NetConsumeBean localNetConsumeBean = new NetConsumeBean(l10, l11, l12, l6, l14, l13); ; localNetConsumeBean = null)
    {
      return localNetConsumeBean;
      ELog.error("LocalCount_TodayNotWifiConsumed datas error ,length not 3 but" + arrayOfLong2.length);
      long l5 = l1;
      l6 = 0L;
      l7 = l5;
      break;
      label325: ELog.error("LocalCount_TodayWifiConsumed datas error ,length not 3 but" + arrayOfLong1.length);
      label349: long l8 = l4;
      long l9 = l3;
      l10 = l2;
      l11 = l7;
      l12 = 0L;
      l13 = l8;
      l14 = l9;
      break label264;
      ELog.info("CountProccessAbs has not been inited!");
    }
  }

  public static NetConsumeBean getTotalConsume(Context paramContext)
  {
    c localc = c.a(paramContext);
    long l1;
    long l2;
    long l3;
    long l4;
    long[] arrayOfLong2;
    long l6;
    long l7;
    long[] arrayOfLong1;
    long l10;
    long l11;
    long l12;
    long l13;
    long l14;
    if (localc != null)
    {
      l1 = 0L;
      l2 = new Date().getTime();
      l3 = 0L;
      l4 = 0L;
      a locala1 = localc.a("local_rqd_upload_totalnowifi");
      if (locala1 != null)
      {
        l2 = locala1.c();
        l1 = 0L + locala1.e();
        arrayOfLong2 = locala1.f();
        if (arrayOfLong2 != null)
          if (arrayOfLong2.length == 3)
          {
            long l18 = arrayOfLong2[1] + arrayOfLong2[2];
            l3 = 0L + arrayOfLong2[1];
            l4 = 0L + arrayOfLong2[2];
            long l19 = l1;
            l6 = l18;
            l7 = l19;
            a locala2 = localc.a("local_rqd_upload_totalwifi");
            if (locala2 == null)
              break label302;
            l2 = Math.min(l2, locala2.c());
            l7 += locala2.e();
            arrayOfLong1 = locala2.f();
            if (arrayOfLong1 == null)
              break label302;
            if (arrayOfLong1.length != 3)
              break label278;
            long l15 = arrayOfLong1[1] + arrayOfLong1[2];
            long l16 = l3 + arrayOfLong1[1];
            long l17 = l4 + arrayOfLong1[2];
            l10 = l2;
            l11 = l7;
            l12 = l15;
            l13 = l17;
            l14 = l16;
          }
      }
    }
    label219: for (NetConsumeBean localNetConsumeBean = new NetConsumeBean(l10, l11, l12, l6, l14, l13); ; localNetConsumeBean = null)
    {
      return localNetConsumeBean;
      ELog.error("LocalCount_NotWifiConsumed datas error ,length not 3 but" + arrayOfLong2.length);
      long l5 = l1;
      l6 = 0L;
      l7 = l5;
      break;
      ELog.error("LocalCount_WifiConsumed datas error ,length not 3 but" + arrayOfLong1.length);
      long l8 = l4;
      long l9 = l3;
      l10 = l2;
      l11 = l7;
      l12 = 0L;
      l13 = l8;
      l14 = l9;
      break label219;
      ELog.info("CountProccessAbs has not been inited!");
    }
  }

  public static class NetConsumeBean
  {
    public final long downConsume;
    public final long notWifiConsume;
    public final long startTime;
    public final long uploadConsume;
    public final long uploadTimes;
    public final long wifiConsume;

    public NetConsumeBean(long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6)
    {
      this.startTime = paramLong1;
      this.uploadTimes = paramLong2;
      this.wifiConsume = paramLong3;
      this.notWifiConsume = paramLong4;
      this.uploadConsume = paramLong5;
      this.downConsume = paramLong6;
    }

    public String toString()
    {
      return "startTime:" + this.startTime + " wifi:" + this.wifiConsume + " notwifi" + this.notWifiConsume;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.common.NetConsumeUtil
 * JD-Core Version:    0.6.2
 */