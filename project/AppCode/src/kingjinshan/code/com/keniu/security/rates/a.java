package com.keniu.security.rates;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Handler;
import android.telephony.SmsMessage;
import cn.com.wali.zft.ZftPluginCallBack;
import cn.com.wali.zft.ZftPluginCallBack.SyncStatus;
import cn.com.wali.zft.plugin;
import com.ijinshan.kinghelper.firewall.core.SmsFirewallBroadcastReceiver;
import com.ijinshan.kinghelper.firewall.core.w;
import com.keniu.security.traffic.dd;
import java.io.PrintStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public final class a
  implements ZftPluginCallBack, com.keniu.security.monitor.b
{
  private static a a;
  private static String b = null;
  private static String c = null;
  private static Context d;
  private static plugin e = plugin.getInstance();

  public static int a(Context paramContext)
  {
    try
    {
      d = paramContext.getApplicationContext();
      if (a == null)
        a = new a();
      Date localDate = new Date();
      b = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(localDate);
      System.out.println("time--" + b);
      int j;
      int i;
      if (plugin.getInstance().available() == 1)
      {
        e.registCallBack(a);
        a locala = a;
        com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.r, locala, 1);
        j = plugin.getInstance().beginAsyn_1_1(2);
        if (j != 1)
          i = 2;
      }
      while (true)
      {
        return i;
        System.out.println("beginAsyn" + j);
        i = 1;
        continue;
        i = 3;
      }
    }
    finally
    {
    }
  }

  private static int a(w paramw)
  {
    System.out.println("receive message:" + paramw.d);
    String str1 = paramw.f[0].getDisplayOriginatingAddress();
    if ((plugin.getInstance().isAsynFinished() == 1) && (plugin.getInstance().smsNeedBlock(str1) == 1))
    {
      StringBuffer localStringBuffer = new StringBuffer();
      Iterator localIterator = e.Asyn_1_1(paramw.d, paramw.c, localStringBuffer).entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        String str2 = (String)localEntry.getKey();
        System.out.println("key == " + str2);
        if (str2.equals("BASIC_SSYE"))
        {
          String str3 = (String)localEntry.getValue();
          c = str3;
          c(str3);
        }
      }
      dd.a(d, new b(a), 100L);
    }
    return SmsFirewallBroadcastReceiver.b;
  }

  private static void c(String paramString)
  {
    c localc = c.a(d);
    localc.e = Float.valueOf(paramString).floatValue();
    localc.a(d, 2131428202);
    localc.d = b;
    localc.a(d, 2131428201);
    RatesRequestMainActivity.e.sendEmptyMessage(0);
  }

  private void d()
  {
    com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.r, this, 1);
  }

  public final void Sync_End()
  {
  }

  public final void Sync_Status(ZftPluginCallBack.SyncStatus paramSyncStatus)
  {
  }

  public final void Sync_Timeout()
  {
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    w localw = (w)paramObject1;
    System.out.println("receive message:" + localw.d);
    String str1 = localw.f[0].getDisplayOriginatingAddress();
    if ((plugin.getInstance().isAsynFinished() == 1) && (plugin.getInstance().smsNeedBlock(str1) == 1))
    {
      StringBuffer localStringBuffer = new StringBuffer();
      Iterator localIterator = e.Asyn_1_1(localw.d, localw.c, localStringBuffer).entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        String str2 = (String)localEntry.getKey();
        System.out.println("key == " + str2);
        if (str2.equals("BASIC_SSYE"))
        {
          String str3 = (String)localEntry.getValue();
          c = str3;
          c(str3);
        }
      }
      dd.a(d, new b(a), 100L);
    }
    if (SmsFirewallBroadcastReceiver.b == SmsFirewallBroadcastReceiver.b)
      localw.g.abortBroadcast();
    for (int i = 2; ; i = 0)
      return i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.rates.a
 * JD-Core Version:    0.6.2
 */