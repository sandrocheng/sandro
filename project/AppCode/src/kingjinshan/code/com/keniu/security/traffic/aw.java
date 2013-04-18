package com.keniu.security.traffic;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.telephony.SmsMessage;
import cn.com.wali.zft.plugin;
import com.ijinshan.kinghelper.firewall.core.SmsFirewallBroadcastReceiver;
import com.ijinshan.kinghelper.firewall.core.w;
import com.keniu.security.monitor.b;
import java.io.PrintStream;
import java.util.Date;
import java.util.HashMap;

final class aw
  implements b
{
  public static volatile boolean a = false;

  private aw(byte paramByte)
  {
  }

  private int a(w paramw)
  {
    System.out.println("receive message:" + paramw.d);
    int i;
    if (paramw.e)
      i = SmsFirewallBroadcastReceiver.a;
    while (true)
    {
      return i;
      if (plugin.getInstance().smsNeedBlock(paramw.f[0].getOriginatingAddress()) == 0)
      {
        System.out.println("smsNeedBlock=0  body is" + paramw.d);
        System.out.println("address is" + paramw.f[0].getOriginatingAddress());
        i = SmsFirewallBroadcastReceiver.a;
      }
      else
      {
        if (plugin.getInstance().smsNeedBlock(paramw.f[0].getOriginatingAddress()) == 1)
        {
          if ((!at.a) && (at.j()))
          {
            com.jxphone.mosecurity.a.a.d(at.c(), "13");
            at.k();
          }
          if (at.i() == null)
            at.b(new String[2]);
          at.i()[0] = paramw.c;
          if ((at.i()[1] == null) || (at.i()[1].length() == 0))
            at.i()[1] = paramw.d;
          String str1;
          String str2;
          Date localDate;
          while (true)
          {
            str1 = paramw.c;
            str2 = paramw.d;
            localDate = new Date();
            if (!a)
              break label389;
            System.out.println("已经校正成功，直接返回");
            i = SmsFirewallBroadcastReceiver.b;
            System.out.println("isAsynFinished========" + plugin.getInstance().isAsynFinished());
            if (plugin.getInstance().isAsynFinished() != 0)
              break;
            System.out.println("p.isAsynFinished() = 0,you can end");
            if ((!a) && (!at.a))
              at.h();
            plugin.getInstance().endAsyn_1_1();
            plugin.getInstance().unregistCallBack(at.l());
            a();
            break;
            StringBuilder localStringBuilder2 = new StringBuilder();
            String[] arrayOfString2 = at.i();
            arrayOfString2[1] = (arrayOfString2[1] + "\n" + paramw.d);
          }
          label389: y localy = y.a(at.c());
          StringBuffer localStringBuffer = new StringBuffer();
          HashMap localHashMap = plugin.getInstance().Asyn_1_1(str2, str1, localStringBuffer);
          long l1;
          if (localHashMap != null)
            if (localHashMap.containsKey("GTCYL"))
            {
              String str6 = (String)localHashMap.get("GTCYL");
              System.out.println("GTCYL=============" + str6);
              long l5 = Long.valueOf(str6).longValue();
              a = true;
              l1 = l5;
              label490: if (!a)
                break label939;
              System.out.println("解析成功 newTraffic==" + l1);
              if (l1 < 0L)
                break label941;
              dd.a(at.c(), l1, localy.a(localDate), localDate.getTime(), true);
              if (!at.a)
              {
                com.jxphone.mosecurity.a.a.d(at.c(), "14");
                NotificationManager localNotificationManager = (NotificationManager)at.c().getSystemService("notification");
                if (localNotificationManager != null)
                  a(localNotificationManager);
              }
            }
          while (true)
          {
            at.b = false;
            Intent localIntent = new Intent();
            localIntent.setAction("updateTrafficMainData");
            at.c().sendBroadcast(localIntent);
            break;
            if (localHashMap.containsKey("TOTAL_GPRS_USED"))
            {
              String str5 = (String)localHashMap.get("TOTAL_GPRS_USED");
              System.out.println("TOTAL_GPRS_USED=============" + str5);
              long l4 = Long.valueOf(str5).longValue();
              a = true;
              l1 = l4;
              break label490;
            }
            if (localHashMap.containsKey("GTCSY"))
            {
              String str4 = (String)localHashMap.get("GTCSY");
              System.out.println("GTCSY=============" + str4);
              long l3 = localy.d - Long.valueOf(str4).longValue();
              a = true;
              l1 = l3;
              break label490;
            }
            if (localHashMap.containsKey("TOTAL_GPRS_BALANCE"))
            {
              String str3 = (String)localHashMap.get("TOTAL_GPRS_BALANCE");
              System.out.println("TOTAL_GPRS_BALANCE=============" + str3);
              long l2 = localy.d - Long.valueOf(str3).longValue();
              a = true;
              l1 = l2;
              break label490;
            }
            a = false;
            if (at.m() == null)
              at.a(new String[2]);
            at.m()[0] = str1;
            if ((at.m()[1] == null) || (at.m()[1].length() == 0))
            {
              at.m()[1] = str2;
              l1 = 0L;
              break label490;
            }
            StringBuilder localStringBuilder1 = new StringBuilder();
            String[] arrayOfString1 = at.m();
            arrayOfString1[1] = (arrayOfString1[1] + "\n" + str2);
            l1 = 0L;
            break label490;
            label939: break;
            label941: if (!at.a)
            {
              com.jxphone.mosecurity.a.a.d(at.c(), "16");
              at.a(at.c().getString(2131428104));
            }
          }
        }
        i = SmsFirewallBroadcastReceiver.b;
      }
    }
  }

  private int a(String paramString1, String paramString2)
  {
    Date localDate = new Date();
    int i;
    if (a)
    {
      System.out.println("已经校正成功，直接返回");
      i = SmsFirewallBroadcastReceiver.b;
    }
    while (true)
    {
      return i;
      y localy = y.a(at.c());
      StringBuffer localStringBuffer = new StringBuffer();
      HashMap localHashMap = plugin.getInstance().Asyn_1_1(paramString2, paramString1, localStringBuffer);
      long l1;
      label130: NotificationManager localNotificationManager;
      Notification localNotification;
      if (localHashMap != null)
        if (localHashMap.containsKey("GTCYL"))
        {
          String str6 = (String)localHashMap.get("GTCYL");
          System.out.println("GTCYL=============" + str6);
          long l5 = Long.valueOf(str6).longValue();
          a = true;
          l1 = l5;
          if (a)
          {
            System.out.println("解析成功 newTraffic==" + l1);
            if (l1 < 0L)
              break label700;
            dd.a(at.c(), l1, localy.a(localDate), localDate.getTime(), true);
            if (!at.a)
            {
              com.jxphone.mosecurity.a.a.d(at.c(), "14");
              localNotificationManager = (NotificationManager)at.c().getSystemService("notification");
              if (localNotificationManager != null)
              {
                Intent localIntent2 = new Intent(at.c(), TrafficTabActivity.class);
                PendingIntent localPendingIntent = PendingIntent.getActivity(at.c(), 5, localIntent2, 0);
                String str1 = at.c().getString(2131428101);
                String str2 = at.c().getString(2131428100);
                localNotification = new Notification(2130838024, str2, System.currentTimeMillis());
                localNotification.flags = 16;
                localNotification.setLatestEventInfo(at.c(), str1, str2, localPendingIntent);
              }
            }
          }
        }
      try
      {
        localNotificationManager.notify(4353, localNotification);
        label317: new Handler(Looper.getMainLooper()).postDelayed(new ax(this, localNotificationManager), 10000L);
        while (true)
        {
          at.b = false;
          Intent localIntent1 = new Intent();
          localIntent1.setAction("updateTrafficMainData");
          at.c().sendBroadcast(localIntent1);
          i = SmsFirewallBroadcastReceiver.b;
          break;
          if (localHashMap.containsKey("TOTAL_GPRS_USED"))
          {
            String str5 = (String)localHashMap.get("TOTAL_GPRS_USED");
            System.out.println("TOTAL_GPRS_USED=============" + str5);
            long l4 = Long.valueOf(str5).longValue();
            a = true;
            l1 = l4;
            break label130;
          }
          if (localHashMap.containsKey("GTCSY"))
          {
            String str4 = (String)localHashMap.get("GTCSY");
            System.out.println("GTCSY=============" + str4);
            long l3 = localy.d - Long.valueOf(str4).longValue();
            a = true;
            l1 = l3;
            break label130;
          }
          if (localHashMap.containsKey("TOTAL_GPRS_BALANCE"))
          {
            String str3 = (String)localHashMap.get("TOTAL_GPRS_BALANCE");
            System.out.println("TOTAL_GPRS_BALANCE=============" + str3);
            long l2 = localy.d - Long.valueOf(str3).longValue();
            a = true;
            l1 = l2;
            break label130;
          }
          a = false;
          if (at.m() == null)
            at.a(new String[2]);
          at.m()[0] = paramString1;
          if ((at.m()[1] == null) || (at.m()[1].length() == 0))
          {
            at.m()[1] = paramString2;
            l1 = 0L;
            break label130;
          }
          StringBuilder localStringBuilder = new StringBuilder();
          String[] arrayOfString = at.m();
          arrayOfString[1] = (arrayOfString[1] + "\n" + paramString2);
          l1 = 0L;
          break label130;
          label700: if (!at.a)
          {
            com.jxphone.mosecurity.a.a.d(at.c(), "16");
            at.a(at.c().getString(2131428104));
          }
        }
      }
      catch (Exception localException)
      {
        break label317;
      }
    }
  }

  private void a(NotificationManager paramNotificationManager)
  {
    Intent localIntent = new Intent(at.c(), TrafficTabActivity.class);
    PendingIntent localPendingIntent = PendingIntent.getActivity(at.c(), 5, localIntent, 0);
    String str1 = at.c().getString(2131428101);
    String str2 = at.c().getString(2131428100);
    Notification localNotification = new Notification(2130838024, str2, System.currentTimeMillis());
    localNotification.flags = 16;
    localNotification.setLatestEventInfo(at.c(), str1, str2, localPendingIntent);
    try
    {
      paramNotificationManager.notify(4353, localNotification);
      label92: new Handler(Looper.getMainLooper()).postDelayed(new ax(this, paramNotificationManager), 10000L);
      return;
    }
    catch (Exception localException)
    {
      break label92;
    }
  }

  private void c()
  {
    System.out.println("isAsynFinished========" + plugin.getInstance().isAsynFinished());
    if (plugin.getInstance().isAsynFinished() == 0)
    {
      System.out.println("p.isAsynFinished() = 0,you can end");
      if ((!a) && (!at.a))
        at.h();
      plugin.getInstance().endAsyn_1_1();
      plugin.getInstance().unregistCallBack(at.l());
      a();
    }
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    w localw;
    int j;
    int i;
    if (paramInt == com.keniu.security.monitor.a.r)
    {
      localw = (w)paramObject1;
      System.out.println("receive message:" + localw.d);
      if (localw.e)
      {
        j = SmsFirewallBroadcastReceiver.a;
        if (j != SmsFirewallBroadcastReceiver.b)
          break label1029;
        localw.g.abortBroadcast();
        i = 2;
      }
    }
    while (true)
    {
      return i;
      if (plugin.getInstance().smsNeedBlock(localw.f[0].getOriginatingAddress()) == 0)
      {
        System.out.println("smsNeedBlock=0  body is" + localw.d);
        System.out.println("address is" + localw.f[0].getOriginatingAddress());
        j = SmsFirewallBroadcastReceiver.a;
        break;
      }
      if (plugin.getInstance().smsNeedBlock(localw.f[0].getOriginatingAddress()) == 1)
      {
        if ((!at.a) && (at.j()))
        {
          com.jxphone.mosecurity.a.a.d(at.c(), "13");
          at.k();
        }
        if (at.i() == null)
          at.b(new String[2]);
        at.i()[0] = localw.c;
        if ((at.i()[1] == null) || (at.i()[1].length() == 0))
          at.i()[1] = localw.d;
        String str1;
        String str2;
        Date localDate;
        while (true)
        {
          str1 = localw.c;
          str2 = localw.d;
          localDate = new Date();
          if (!a)
            break label437;
          System.out.println("已经校正成功，直接返回");
          j = SmsFirewallBroadcastReceiver.b;
          System.out.println("isAsynFinished========" + plugin.getInstance().isAsynFinished());
          if (plugin.getInstance().isAsynFinished() != 0)
            break;
          System.out.println("p.isAsynFinished() = 0,you can end");
          if ((!a) && (!at.a))
            at.h();
          plugin.getInstance().endAsyn_1_1();
          plugin.getInstance().unregistCallBack(at.l());
          a();
          break;
          StringBuilder localStringBuilder2 = new StringBuilder();
          String[] arrayOfString2 = at.i();
          arrayOfString2[1] = (arrayOfString2[1] + "\n" + localw.d);
        }
        label437: y localy = y.a(at.c());
        StringBuffer localStringBuffer = new StringBuffer();
        HashMap localHashMap = plugin.getInstance().Asyn_1_1(str2, str1, localStringBuffer);
        long l1;
        if (localHashMap != null)
          if (localHashMap.containsKey("GTCYL"))
          {
            String str6 = (String)localHashMap.get("GTCYL");
            System.out.println("GTCYL=============" + str6);
            long l5 = Long.valueOf(str6).longValue();
            a = true;
            l1 = l5;
            label539: if (!a)
              break label989;
            System.out.println("解析成功 newTraffic==" + l1);
            if (l1 < 0L)
              break label991;
            dd.a(at.c(), l1, localy.a(localDate), localDate.getTime(), true);
            if (!at.a)
            {
              com.jxphone.mosecurity.a.a.d(at.c(), "14");
              NotificationManager localNotificationManager = (NotificationManager)at.c().getSystemService("notification");
              if (localNotificationManager != null)
                a(localNotificationManager);
            }
          }
        while (true)
        {
          at.b = false;
          Intent localIntent = new Intent();
          localIntent.setAction("updateTrafficMainData");
          at.c().sendBroadcast(localIntent);
          break;
          if (localHashMap.containsKey("TOTAL_GPRS_USED"))
          {
            String str5 = (String)localHashMap.get("TOTAL_GPRS_USED");
            System.out.println("TOTAL_GPRS_USED=============" + str5);
            long l4 = Long.valueOf(str5).longValue();
            a = true;
            l1 = l4;
            break label539;
          }
          if (localHashMap.containsKey("GTCSY"))
          {
            String str4 = (String)localHashMap.get("GTCSY");
            System.out.println("GTCSY=============" + str4);
            long l3 = localy.d - Long.valueOf(str4).longValue();
            a = true;
            l1 = l3;
            break label539;
          }
          if (localHashMap.containsKey("TOTAL_GPRS_BALANCE"))
          {
            String str3 = (String)localHashMap.get("TOTAL_GPRS_BALANCE");
            System.out.println("TOTAL_GPRS_BALANCE=============" + str3);
            long l2 = localy.d - Long.valueOf(str3).longValue();
            a = true;
            l1 = l2;
            break label539;
          }
          a = false;
          if (at.m() == null)
            at.a(new String[2]);
          at.m()[0] = str1;
          if ((at.m()[1] == null) || (at.m()[1].length() == 0))
          {
            at.m()[1] = str2;
            l1 = 0L;
            break label539;
          }
          StringBuilder localStringBuilder1 = new StringBuilder();
          String[] arrayOfString1 = at.m();
          arrayOfString1[1] = (arrayOfString1[1] + "\n" + str2);
          l1 = 0L;
          break label539;
          label989: break;
          label991: if (!at.a)
          {
            com.jxphone.mosecurity.a.a.d(at.c(), "16");
            at.a(at.c().getString(2131428104));
          }
        }
      }
      j = SmsFirewallBroadcastReceiver.b;
      break;
      label1029: i = 0;
      continue;
      i = 0;
    }
  }

  public final void a()
  {
    com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.r, this);
  }

  public final void b()
  {
    com.keniu.security.monitor.a locala = com.keniu.security.monitor.a.a();
    locala.a(com.keniu.security.monitor.a.r, this);
    locala.a(com.keniu.security.monitor.a.r, this, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.aw
 * JD-Core Version:    0.6.2
 */