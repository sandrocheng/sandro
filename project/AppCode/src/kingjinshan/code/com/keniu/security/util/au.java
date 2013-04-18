package com.keniu.security.util;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.text.Html;
import android.widget.RemoteViews;

public final class au
{
  private static void a(Context paramContext)
  {
    ((NotificationManager)paramContext.getSystemService("notification")).cancelAll();
  }

  public static void a(Context paramContext, int paramInt)
  {
    ((NotificationManager)paramContext.getSystemService("notification")).cancel(paramInt);
  }

  private static void a(Context paramContext, int paramInt1, int paramInt2, int paramInt3, PendingIntent paramPendingIntent, int paramInt4, boolean paramBoolean)
  {
    a(paramContext, paramContext.getString(paramInt1), paramContext.getString(paramInt2), paramContext.getString(paramInt3), paramPendingIntent, paramInt4, paramBoolean);
  }

  private static void a(Context paramContext, int paramInt1, int paramInt2, int paramInt3, Intent paramIntent, int paramInt4, boolean paramBoolean)
  {
    a(paramContext, paramContext.getString(paramInt1), paramContext.getString(paramInt2), paramContext.getString(paramInt3), paramIntent, paramInt4, paramBoolean);
  }

  private static void a(Context paramContext, int paramInt1, int paramInt2, int paramInt3, Class paramClass, int paramInt4, boolean paramBoolean)
  {
    a(paramContext, paramContext.getString(paramInt1), paramContext.getString(paramInt2), paramContext.getString(paramInt3), paramClass, paramInt4, paramBoolean);
  }

  public static void a(Context paramContext, int paramInt1, int paramInt2, String paramString, PendingIntent paramPendingIntent, int paramInt3, int paramInt4)
  {
    String str1 = paramContext.getString(paramInt1);
    String str2 = paramContext.getString(paramInt2);
    NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
    Notification localNotification = new Notification(paramInt4, str1, System.currentTimeMillis());
    localNotification.flags = (0x10 | localNotification.flags);
    localNotification.setLatestEventInfo(paramContext, str2, paramString, paramPendingIntent);
    localNotificationManager.notify(paramInt3, localNotification);
  }

  private static void a(Context paramContext, int paramInt1, int paramInt2, String paramString, PendingIntent paramPendingIntent, int paramInt3, boolean paramBoolean)
  {
    a(paramContext, paramContext.getString(paramInt1), paramContext.getString(paramInt2), paramString, paramPendingIntent, paramInt3, paramBoolean);
  }

  private static void a(Context paramContext, int paramInt1, int paramInt2, String paramString, Intent paramIntent, int paramInt3, boolean paramBoolean)
  {
    a(paramContext, paramContext.getString(paramInt1), paramContext.getString(paramInt2), paramString, paramIntent, paramInt3, paramBoolean);
  }

  private static void a(Context paramContext, int paramInt1, int paramInt2, String paramString, Class paramClass, int paramInt3, boolean paramBoolean)
  {
    a(paramContext, paramContext.getString(paramInt1), paramContext.getString(paramInt2), paramString, paramClass, paramInt3, paramBoolean);
  }

  private static void a(Context paramContext, String paramString1, String paramString2, String paramString3, PendingIntent paramPendingIntent, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
    Notification localNotification = new Notification(paramInt2, paramString1, System.currentTimeMillis());
    if (paramBoolean)
      localNotification.flags = (0x4 | localNotification.flags);
    localNotification.flags = (0x10 | localNotification.flags);
    localNotification.setLatestEventInfo(paramContext, paramString2, paramString3, paramPendingIntent);
    localNotificationManager.notify(paramInt1, localNotification);
  }

  private static void a(Context paramContext, String paramString1, String paramString2, String paramString3, PendingIntent paramPendingIntent, int paramInt, boolean paramBoolean)
  {
    NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
    Notification localNotification = new Notification(2130837711, paramString1, System.currentTimeMillis());
    if (paramBoolean)
      localNotification.flags = (0x4 | localNotification.flags);
    localNotification.flags = (0x10 | localNotification.flags);
    RemoteViews localRemoteViews = new RemoteViews(paramContext.getPackageName(), 2130903149);
    localNotification.contentView = localRemoteViews;
    localNotification.contentIntent = paramPendingIntent;
    localRemoteViews.setTextViewText(2131231192, paramString2);
    localRemoteViews.setTextViewText(2131231193, Html.fromHtml(paramString3));
    localRemoteViews.setTextViewText(2131231194, i.a());
    localRemoteViews.setImageViewResource(2131231190, 2130837711);
    localNotificationManager.notify(paramInt, localNotification);
  }

  private static void a(Context paramContext, String paramString1, String paramString2, String paramString3, Intent paramIntent, int paramInt, boolean paramBoolean)
  {
    a(paramContext, paramString1, paramString2, paramString3, PendingIntent.getActivity(paramContext, 0, paramIntent, 0), paramInt, paramBoolean);
  }

  private static void a(Context paramContext, String paramString1, String paramString2, String paramString3, Class paramClass, int paramInt, boolean paramBoolean)
  {
    a(paramContext, paramString1, paramString2, paramString3, new Intent(paramContext, paramClass), paramInt, paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.au
 * JD-Core Version:    0.6.2
 */