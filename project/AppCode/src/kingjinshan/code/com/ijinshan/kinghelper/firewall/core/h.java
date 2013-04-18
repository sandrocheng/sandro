package com.ijinshan.kinghelper.firewall.core;

import android.a.w;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.media.AudioManager;
import android.os.Bundle;
import android.provider.Settings.System;
import android.widget.RemoteViews;
import com.ijinshan.kinghelper.a.i;
import com.ijinshan.kinghelper.firewall.BroadcastRecSms;
import com.ijinshan.kinghelper.firewall.FirewallLogDetailActivity;
import com.ijinshan.kinghelper.firewall.FirewallLogTabActivity;
import com.ijinshan.kinghelper.firewall.a.g;
import com.jxphone.mosecurity.c.l;
import com.keniu.security.main.MainActivity;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class h
{
  public static final int a = 0;
  public static final int b = 1;
  public static final int c = 2;
  private static final int d = 6534;
  private static final int e = 6535;
  private static final int f = 6536;
  private static final int g = 6537;
  private static final int h = 6538;
  private static final int i = 6539;
  private static final int j = 6540;
  private static int k = 0;
  private static int l;
  private static int m;

  public static int a()
  {
    return l;
  }

  private static Notification a(Notification paramNotification, Context paramContext, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
  {
    if (paramNotification != null)
    {
      RemoteViews localRemoteViews = new RemoteViews(paramContext.getPackageName(), 2130903064);
      paramNotification.contentView = localRemoteViews;
      paramNotification.contentIntent = paramPendingIntent;
      localRemoteViews.setTextViewText(2131230887, paramCharSequence);
      localRemoteViews.setTextViewText(2131230888, new SimpleDateFormat("yyyy-MM-dd HH:mm").format(Long.valueOf(new Date().getTime())));
    }
    for (Notification localNotification = paramNotification; ; localNotification = null)
      return localNotification;
  }

  public static void a(Context paramContext)
  {
    if (m != 0)
      e(paramContext);
    m = 0;
    if (k == 2)
      k = 0;
    com.keniu.security.traffic.dd.a(paramContext, null);
    ((NotificationManager)paramContext.getSystemService("notification")).cancel(6535);
  }

  public static void a(Context paramContext, long paramLong)
  {
    ((NotificationManager)paramContext.getSystemService("notification")).cancel(6536);
    com.ijinshan.kinghelper.firewall.dd.a(paramContext);
    com.ijinshan.kinghelper.firewall.a.a.a(paramContext);
    l = 1 + l;
    k = 1;
    if (l > 0)
    {
      if ((l <= 1) && (paramLong != -1L))
        break label176;
      Intent localIntent1 = new Intent(paramContext, FirewallLogTabActivity.class);
      localIntent1.putExtra("FirewallLogTabActivity_current_tab", "FirewallLogTabActivity_current_tab_sms");
      localIntent1.putExtra("FirewallLogTabActivity_LOG_FromNotify", true);
    }
    while (true)
    {
      String str = paramContext.getString(2131427604, new Object[] { "" });
      if (l > 1)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = ("(" + l + "条)");
        str = paramContext.getString(2131427604, arrayOfObject);
      }
      com.keniu.security.traffic.dd.a(paramContext, new b(str, l, 0));
      e(paramContext);
      return;
      label176: Intent localIntent2 = new Intent(paramContext, FirewallLogDetailActivity.class);
      localIntent2.putExtra("FirewallLogDetailActivity_LOG_TYPE", "FirewallLogDetailActivity_LOG_TYPE_SMS");
      localIntent2.putExtra("FirewallLogDetailActivity_LOG_ID", (int)paramLong);
      localIntent2.putExtra("FirewallLogDetailActivity_LOG_FromNotify", true);
    }
  }

  public static void a(Context paramContext, g paramg)
  {
    ((NotificationManager)paramContext.getSystemService("notification")).cancel(6535);
    com.ijinshan.kinghelper.firewall.dd.a(paramContext);
    Intent localIntent = new Intent(paramContext, FirewallLogTabActivity.class);
    localIntent.putExtra("FirewallLogTabActivity_current_tab", "FirewallLogTabActivity_current_tab_call");
    localIntent.putExtra("FirewallLogTabActivity_LOG_FromNotify", true);
    com.ijinshan.kinghelper.firewall.a.a.a(paramContext);
    m = 1 + m;
    k = 2;
    if (m > 0)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(m);
      arrayOfObject[1] = paramg.g;
      com.keniu.security.traffic.dd.a(paramContext, new b(paramContext.getString(2131427605, arrayOfObject).toString(), 0, m));
    }
    e(paramContext);
  }

  public static void a(Context paramContext, l paraml, int paramInt, boolean paramBoolean)
  {
    NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
    com.keniu.security.a locala = com.keniu.security.a.a(paramContext);
    String str = locala.aD();
    Notification localNotification = new Notification(locala.aE(), str, System.currentTimeMillis());
    localNotification.flags = 16;
    if (!paramBoolean)
      localNotification.defaults = paramInt;
    Intent localIntent = new Intent(paramContext, MainActivity.class);
    localNotification.setLatestEventInfo(paramContext, str, null, PendingIntent.getActivity(paramContext, paraml.hashCode(), localIntent, 268435456));
    localNotificationManager.notify(2131428953, localNotification);
    com.jxphone.mosecurity.activity.friend.FriendTabActivity.a = 0;
  }

  private static void a(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
    b(paramContext);
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.setFlags(872415232);
    localIntent.setType("vnd.android-dir/mms-sms");
    PendingIntent localPendingIntent = PendingIntent.getActivity(paramContext, 0, localIntent, 134217728);
    int i3;
    if (paramInt <= 1)
    {
      String[] arrayOfString = new String[1];
      arrayOfString[0] = ("%" + paramString1 + "%");
      Cursor localCursor = paramContext.getContentResolver().query(w.a, null, "read=0 and address like ?", arrayOfString, null);
      if (localCursor != null)
      {
        i3 = localCursor.getCount();
        localCursor.close();
      }
    }
    for (int n = i3; ; n = paramInt)
    {
      String str2;
      String str1;
      if (n > 1)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.toString(n);
        String str3 = paramContext.getString(2131427643, arrayOfObject);
        String str4 = paramContext.getString(2131427642);
        str2 = str3;
        str1 = str4;
      }
      while (true)
      {
        Notification localNotification = new Notification(2130837931, paramString1 + ":" + paramString2, System.currentTimeMillis());
        localNotification.setLatestEventInfo(paramContext, str1, str2, localPendingIntent);
        int i1;
        if (((AudioManager)paramContext.getSystemService("audio")).getRingerMode() == 0)
          i1 = 1;
        while (true)
        {
          if (i1 != 0)
            localNotification.defaults = (0x2 | localNotification.defaults);
          localNotification.sound = Settings.System.getUriFor("notification_sound");
          localNotification.flags = (0x10 | localNotification.flags);
          localNotification.flags = (0x1 | localNotification.flags);
          localNotification.defaults = (0x4 | localNotification.defaults);
          NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
          int i2 = 6537;
          try
          {
            long l1 = Long.parseLong(i.a(paramString1));
            i2 = 6537 + (int)l1;
            label349: localNotificationManager.notify(i2, localNotification);
            return;
            i1 = 0;
          }
          catch (NumberFormatException localNumberFormatException)
          {
            break label349;
          }
        }
        str1 = paramString1;
        str2 = paramString2;
      }
    }
  }

  public static void a(Context paramContext, String paramString1, String paramString2, long paramLong)
  {
    NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
    Notification localNotification = new Notification(2130837931, paramString1, System.currentTimeMillis());
    localNotification.flags = 16;
    Intent localIntent = new Intent(BroadcastRecSms.a);
    Bundle localBundle = new Bundle();
    localBundle.putString(BroadcastRecSms.b, String.valueOf(paramLong));
    localIntent.putExtras(localBundle);
    localNotification.setLatestEventInfo(paramContext, paramString1, paramString2, PendingIntent.getBroadcast(paramContext, 6540, localIntent, 134217728));
    localNotificationManager.notify(6540, localNotification);
  }

  public static int b()
  {
    return k;
  }

  public static void b(Context paramContext)
  {
    if (l != 0)
      e(paramContext);
    l = 0;
    if (k == 1)
      k = 0;
    com.keniu.security.traffic.dd.a(paramContext, null);
    ((NotificationManager)paramContext.getSystemService("notification")).cancel(6536);
  }

  public static int c()
  {
    return m;
  }

  public static void c(Context paramContext)
  {
    ((NotificationManager)paramContext.getSystemService("notification")).cancel(6540);
  }

  private static int d()
  {
    return 6536;
  }

  public static void d(Context paramContext)
  {
    NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
    Notification localNotification = new Notification(0, null, System.currentTimeMillis());
    localNotification.flags = 16;
    switch (com.keniu.security.a.a(paramContext).n())
    {
    default:
      localNotification.defaults = -1;
    case 4:
    case 3:
    case 2:
    case 1:
    }
    while (true)
    {
      localNotificationManager.notify(0, localNotification);
      return;
      localNotification.defaults = 2;
      continue;
      localNotification.defaults = 1;
      continue;
      localNotification.defaults = 3;
    }
  }

  private static String e()
  {
    return new SimpleDateFormat("yyyy-MM-dd HH:mm").format(Long.valueOf(new Date().getTime()));
  }

  private static void e(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.MY_RECEIVER");
    paramContext.sendBroadcast(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.core.h
 * JD-Core Version:    0.6.2
 */