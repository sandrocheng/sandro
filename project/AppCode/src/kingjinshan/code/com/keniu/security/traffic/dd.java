package com.keniu.security.traffic;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.Html;
import android.widget.RemoteViews;
import com.ijinshan.kinghelper.firewall.FirewallLogTabActivity;
import com.ijinshan.kinghelper.firewall.core.h;
import com.keniu.security.main.MainActivity;
import com.keniu.security.monitor.a;
import com.keniu.security.util.ad;
import com.keniu.security.util.ae;
import com.keniu.security.util.at;
import com.keniu.security.util.ax;
import java.util.Date;

public final class dd
  implements com.keniu.security.monitor.b
{
  public static volatile long a = 0L;
  public static volatile boolean b = false;
  public static final int c = 1;
  public static final int d = -1;
  public static final int e = 0;
  public static final String f = "traffic_warn_type";
  public static volatile boolean g = false;
  private static long h = 0L;
  private static long i = 0L;
  private static long j = 0L;
  private static long k = 0L;
  private static long l = 0L;
  private static final int m = 1;
  private static boolean n = false;
  private static boolean o = false;
  private static volatile Handler p;
  private static HandlerThread q;
  private static dl r;
  private static de s;
  private static dd t;

  public static void a(Context paramContext)
  {
    try
    {
      boolean bool = n;
      if (bool);
      while (true)
      {
        return;
        n = true;
        g = true;
        b = true;
        if (t == null)
        {
          t = new dd();
          a locala = a.a();
          locala.a(a.n, t, 1342177279);
          locala.a(a.o, t, 1342177279);
          locala.a(a.p, t, 1342177279);
        }
        a(paramContext, new dj(paramContext, true), 0L);
        if (r == null)
        {
          z.b(paramContext);
          r = new dl(paramContext);
          a(paramContext, r, 0L);
        }
      }
    }
    finally
    {
    }
  }

  public static void a(Context paramContext, int paramInt)
  {
    if ((p != null) && (s != null))
    {
      p.removeCallbacks(s);
      s = null;
    }
    if (paramInt == 3)
      return;
    long l1 = 0L;
    if (paramInt == 0)
      l1 = 86400000L;
    while (true)
    {
      s = new de(paramContext, l1);
      a(paramContext, s, l1);
      break;
      if (paramInt == 1)
        l1 = 259200000L;
      else if (paramInt == 2)
        l1 = 604800000L;
    }
  }

  public static void a(Context paramContext, long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean)
  {
    a(paramContext, new di(paramContext, paramLong1, paramLong2, paramLong3, paramBoolean), 0L);
  }

  public static void a(Context paramContext, com.ijinshan.kinghelper.firewall.core.b paramb)
  {
    a(paramContext, new dk(paramContext, paramb), 0L);
  }

  private static void a(Context paramContext, y paramy, long paramLong1, long paramLong2, com.ijinshan.kinghelper.firewall.core.b paramb)
  {
    RemoteViews localRemoteViews;
    if (!paramy.a)
    {
      localRemoteViews = new RemoteViews(paramContext.getPackageName(), 2130903150);
      localRemoteViews.setTextViewText(2131231196, Html.fromHtml(ad.a("尚未开启流量监控", ae.c)));
    }
    while (true)
    {
      int i1;
      int i2;
      label62: Notification localNotification;
      int i3;
      int i4;
      if ((paramy.d <= 0L) || (!paramy.a))
      {
        i1 = 1;
        i2 = 0;
        localRemoteViews.setProgressBar(2131231195, i1, i2, false);
        localNotification = new Notification();
        localNotification.contentView = localRemoteViews;
        localNotification.icon = 2130838024;
        localNotification.flags = 34;
        i3 = h.c();
        i4 = h.a();
        if ((paramb == null) || (!com.ijinshan.kinghelper.firewall.dd.z()))
          break label667;
        localRemoteViews.setViewVisibility(2131231197, 0);
        localRemoteViews.setViewVisibility(2131231198, 0);
        localRemoteViews.setTextViewText(2131231198, String.valueOf(i3));
        localRemoteViews.setTextViewText(2131231197, String.valueOf(i4));
        localNotification.tickerText = paramb.a;
        if (paramb.b != 0)
          break label562;
        localNotification.icon = 2130838022;
        Intent localIntent5 = new Intent(paramContext, FirewallLogTabActivity.class);
        localIntent5.putExtra("FirewallLogTabActivity_current_tab", "FirewallLogTabActivity_current_tab_call");
        localIntent5.putExtra("FirewallLogTabActivity_LOG_FromNotify", true);
        localIntent5.setFlags(268435456);
        localNotification.contentIntent = PendingIntent.getActivity(paramContext, 2, localIntent5, 268435456);
      }
      try
      {
        while (true)
        {
          ((NotificationManager)paramContext.getSystemService("notification")).notify(1, localNotification);
          label262: return;
          if (!y.d(paramContext))
          {
            localRemoteViews = new RemoteViews(paramContext.getPackageName(), 2130903150);
            localRemoteViews.setTextViewText(2131231196, Html.fromHtml(ad.a("未设置套餐额度", ae.c)));
            break;
          }
          if (paramLong1 > paramy.d)
          {
            localRemoteViews = new RemoteViews(paramContext.getPackageName(), 2130903151);
            localRemoteViews.setTextViewText(2131231196, "今日" + ax.d(paramLong2) + "," + "超" + ax.d(paramLong1 - paramy.d));
            break;
          }
          if (paramy.d - paramLong1 <= paramy.g)
          {
            localRemoteViews = new RemoteViews(paramContext.getPackageName(), 2130903152);
            Object[] arrayOfObject2 = new Object[2];
            arrayOfObject2[0] = ax.d(paramLong2);
            arrayOfObject2[1] = ax.d(paramy.d - paramLong1);
            localRemoteViews.setTextViewText(2131231196, paramContext.getString(2131428151, arrayOfObject2));
            break;
          }
          localRemoteViews = new RemoteViews(paramContext.getPackageName(), 2130903150);
          Object[] arrayOfObject3 = new Object[2];
          arrayOfObject3[0] = ax.d(paramLong2);
          arrayOfObject3[1] = ax.d(paramy.d - paramLong1);
          localRemoteViews.setTextViewText(2131231196, paramContext.getString(2131428151, arrayOfObject3));
          break;
          int i5 = (int)(0.5D + 1000.0D * (1.0D * paramLong1 / paramy.d));
          i1 = 1000;
          i2 = i5;
          break label62;
          label562: Intent localIntent4 = new Intent(paramContext, FirewallLogTabActivity.class);
          if (h.b() == 2)
          {
            localNotification.icon = 2130838022;
            localIntent4.putExtra("FirewallLogTabActivity_current_tab", "FirewallLogTabActivity_current_tab_call");
            localIntent4.putExtra("FirewallLogTabActivity_LOG_FromNotify", true);
          }
          while (true)
          {
            localIntent4.setFlags(268435456);
            localNotification.contentIntent = PendingIntent.getActivity(paramContext, 2, localIntent4, 268435456);
            break;
            localNotification.icon = 2130838023;
            localIntent4.putExtra("FirewallLogTabActivity_current_tab", "FirewallLogTabActivity_current_tab_sms");
            localIntent4.putExtra("FirewallLogTabActivity_LOG_FromNotify", true);
          }
          label667: if (b)
          {
            b = false;
            localNotification.tickerText = paramContext.getString(2131428143);
          }
          if (((i3 == 0) && (i4 == 0)) || (!com.ijinshan.kinghelper.firewall.dd.z()))
          {
            localRemoteViews.setViewVisibility(2131231197, 8);
            localRemoteViews.setViewVisibility(2131231198, 8);
            Intent localIntent3 = new Intent(paramContext, MainActivity.class);
            localIntent3.putExtra("from_notify", true);
            localIntent3.setFlags(268435456);
            localNotification.contentIntent = PendingIntent.getActivity(paramContext, 2, localIntent3, 268435456);
            if (!paramy.a)
            {
              localRemoteViews.setTextViewText(2131231196, Html.fromHtml(ad.a("未开启流量监控", ae.c)));
            }
            else if (!y.d(paramContext))
            {
              localRemoteViews.setTextViewText(2131231196, Html.fromHtml("今日已用" + ax.d(paramLong2) + "," + ad.a("未设置套餐额度", ae.c)));
            }
            else if (paramLong1 > paramy.d)
            {
              localRemoteViews.setTextViewText(2131231196, "今日已用" + ax.d(paramLong2) + "," + "本月超出" + ax.d(paramLong1 - paramy.d));
            }
            else
            {
              Object[] arrayOfObject1 = new Object[2];
              arrayOfObject1[0] = ax.d(paramLong2);
              arrayOfObject1[1] = ax.d(paramy.d - paramLong1);
              localRemoteViews.setTextViewText(2131231196, paramContext.getString(2131428152, arrayOfObject1));
            }
          }
          else
          {
            localRemoteViews.setTextViewText(2131231198, String.valueOf(i3));
            localRemoteViews.setTextViewText(2131231197, String.valueOf(i4));
            localRemoteViews.setViewVisibility(2131231197, 0);
            localRemoteViews.setViewVisibility(2131231198, 0);
            if (i4 != 0)
              break label1086;
            localNotification.icon = 2130838022;
            Intent localIntent2 = new Intent(paramContext, FirewallLogTabActivity.class);
            localIntent2.putExtra("FirewallLogTabActivity_current_tab", "FirewallLogTabActivity_current_tab_call");
            localIntent2.putExtra("FirewallLogTabActivity_LOG_FromNotify", true);
            localIntent2.setFlags(268435456);
            localNotification.contentIntent = PendingIntent.getActivity(paramContext, 2, localIntent2, 268435456);
          }
        }
        label1086: Intent localIntent1 = new Intent(paramContext, FirewallLogTabActivity.class);
        if (h.b() == 2)
        {
          localNotification.icon = 2130838022;
          localIntent1.putExtra("FirewallLogTabActivity_current_tab", "FirewallLogTabActivity_current_tab_call");
          localIntent1.putExtra("FirewallLogTabActivity_LOG_FromNotify", true);
        }
        while (true)
        {
          localIntent1.setFlags(268435456);
          localNotification.contentIntent = PendingIntent.getActivity(paramContext, 2, localIntent1, 268435456);
          break;
          localNotification.icon = 2130838023;
          localIntent1.putExtra("FirewallLogTabActivity_current_tab", "FirewallLogTabActivity_current_tab_sms");
          localIntent1.putExtra("FirewallLogTabActivity_LOG_FromNotify", true);
        }
      }
      catch (SecurityException localSecurityException)
      {
        break label262;
      }
    }
  }

  private static void a(Context paramContext, y paramy, Date paramDate, long paramLong1, long paramLong2)
  {
    if (!at.a(paramContext));
    label271: 
    while (true)
    {
      return;
      int i1;
      if ((y.d(paramContext)) && (paramy.c))
      {
        if (paramy.f != 0L)
        {
          Date localDate = new Date(paramy.f);
          if ((localDate.getYear() == paramDate.getYear()) && (localDate.getMonth() == paramDate.getMonth()) && (localDate.getDate() == paramDate.getDate()));
        }
        else if (paramLong1 > paramy.d)
        {
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = ax.c(paramLong1 - paramy.d);
          a(paramContext, paramContext.getString(2131428170, arrayOfObject3), -1);
          i1 = 1;
        }
      }
      else
        while (true)
        {
          if (i1 == 0)
            break label271;
          paramy.f = paramDate.getTime();
          paramy.a(paramContext, 2131428304);
          break;
          break;
          if ((paramy.g != 0L) && (paramy.d - paramLong1 < paramy.g))
          {
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = ax.c(paramy.d - paramLong1);
            a(paramContext, paramContext.getString(2131428171, arrayOfObject2), 0);
            i1 = 1;
          }
          else if ((paramy.h != 0L) && (paramLong2 >= paramy.h))
          {
            Object[] arrayOfObject1 = new Object[1];
            arrayOfObject1[0] = ax.c(paramy.h);
            a(paramContext, paramContext.getString(2131428177, arrayOfObject1), 0);
            i1 = 1;
          }
          else
          {
            i1 = 0;
          }
        }
    }
  }

  public static void a(Context paramContext, Runnable paramRunnable)
  {
    a(paramContext, paramRunnable, 0L);
  }

  public static void a(Context paramContext, Runnable paramRunnable, long paramLong)
  {
    try
    {
      if (!o)
      {
        o = true;
        HandlerThread localHandlerThread = new HandlerThread("traffic_update_thread");
        q = localHandlerThread;
        localHandlerThread.start();
        Handler localHandler = new Handler(q.getLooper());
        p = localHandler;
        localHandler.post(new dh(paramContext));
      }
      p.postDelayed(paramRunnable, paramLong);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static void a(Context paramContext, String paramString, int paramInt)
  {
    Intent localIntent = new Intent(paramContext, TrafficWarningDialog.class);
    localIntent.setFlags(268435456);
    localIntent.putExtra("title1", paramString);
    if (paramInt == 0)
      localIntent.putExtra("traffic_warn_type", paramInt);
    paramContext.startActivity(localIntent);
  }

  public static void b(Context paramContext)
  {
    if (!n);
    while (true)
    {
      return;
      n = false;
      a(paramContext, new dj(paramContext, false), 0L);
    }
  }

  private static void b(Context paramContext, int paramInt)
  {
    a(paramContext, new dg(paramContext, paramInt), 0L);
  }

  private static void b(Context paramContext, boolean paramBoolean)
  {
    y localy = y.a(paramContext);
    if (!localy.a);
    z localz;
    do
    {
      return;
      localz = z.a(paramContext);
    }
    while (!localz.b(false));
    Date localDate1 = new Date();
    long l1 = localy.a(localDate1);
    long l2 = localy.b(localDate1);
    localz.a(paramContext, localDate1, l1, paramBoolean);
    ac localac1 = localz.a(1000000, localDate1.getTime());
    ac localac2 = localz.b(l1, l2);
    localz.a();
    if (localac1 != null);
    for (long l3 = localac1.b + localac1.c; ; l3 = 0L)
    {
      if (localac2 != null);
      for (long l4 = 0L + (localac2.b + localac2.c); ; l4 = 0L)
      {
        a = l4;
        if (localy.b)
          a(paramContext, localy, l4, l3, null);
        if ((!at.a(paramContext)) || (!y.d(paramContext)) || (!localy.c))
          break;
        if (localy.f != 0L)
        {
          Date localDate2 = new Date(localy.f);
          if ((localDate2.getYear() == localDate1.getYear()) && (localDate2.getMonth() == localDate1.getMonth()) && (localDate2.getDate() == localDate1.getDate()))
            break;
        }
        int i1 = 1;
        if (l4 > localy.d)
        {
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = ax.c(l4 - localy.d);
          a(paramContext, paramContext.getString(2131428170, arrayOfObject3), -1);
        }
        while (true)
        {
          if (i1 == 0)
            break label422;
          localy.f = localDate1.getTime();
          localy.a(paramContext, 2131428304);
          break;
          if ((localy.g != 0L) && (localy.d - l4 < localy.g))
          {
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = ax.c(localy.d - l4);
            a(paramContext, paramContext.getString(2131428171, arrayOfObject2), 0);
          }
          else if ((localy.h != 0L) && (l3 >= localy.h))
          {
            Object[] arrayOfObject1 = new Object[1];
            arrayOfObject1[0] = ax.c(localy.h);
            a(paramContext, paramContext.getString(2131428177, arrayOfObject1), 0);
          }
          else
          {
            i1 = 0;
          }
        }
        label422: break;
      }
    }
  }

  public static void c(Context paramContext)
  {
    a(paramContext, new df(paramContext), 0L);
  }

  private static void c(Context paramContext, com.ijinshan.kinghelper.firewall.core.b paramb)
  {
    y localy = y.a(paramContext);
    ac localac1;
    ac localac2;
    if (localy.b)
    {
      Date localDate = new Date();
      long l1 = localy.a(localDate);
      long l2 = localy.b(localDate);
      z localz = z.a(paramContext);
      if (!localz.b(true))
        return;
      localac1 = localz.b(l1, l2);
      localac2 = localz.a(1000000, new Date().getTime());
      localz.a();
      if (localac1 == null)
        break label160;
    }
    label160: for (long l3 = 0L + (localac1.b + localac1.c); ; l3 = 0L)
    {
      if (localac2 != null);
      for (long l4 = localac2.b + localac2.c; ; l4 = 0L)
      {
        a(paramContext, localy, l3, l4, paramb);
        break;
        ((NotificationManager)paramContext.getSystemService("notification")).cancel(1);
        break;
      }
    }
  }

  public static void d(Context paramContext)
  {
    a(paramContext, new dm(paramContext), 172800000L);
  }

  private static boolean e()
  {
    return n;
  }

  private static void f(Context paramContext)
  {
    z.d(paramContext);
  }

  private static void g(Context paramContext)
  {
    HandlerThread localHandlerThread = new HandlerThread("traffic_update_thread");
    q = localHandlerThread;
    localHandlerThread.start();
    Handler localHandler = new Handler(q.getLooper());
    p = localHandler;
    localHandler.post(new dh(paramContext));
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    if (paramInt == a.n)
      z.a((Context)paramObject1, (Intent)paramObject2);
    while (true)
    {
      return 1;
      if (paramInt == a.o)
        l = h;
      else if (paramInt == a.p)
        l = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.dd
 * JD-Core Version:    0.6.2
 */