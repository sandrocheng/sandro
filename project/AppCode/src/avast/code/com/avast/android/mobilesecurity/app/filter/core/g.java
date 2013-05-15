package com.avast.android.mobilesecurity.app.filter.core;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.v4.app.NotificationCompat.Builder;
import android.text.Html;
import android.text.TextUtils;
import com.avast.android.generic.util.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class g
{
  private static Set a = new HashSet();
  private static Map b = new HashMap();
  private static Handler c = new Handler(localHandlerThread.getLooper());

  static
  {
    HandlerThread localHandlerThread = new HandlerThread("FindSmsThread");
    localHandlerThread.start();
  }

  public static long a(ContentResolver paramContentResolver, String paramString1, String paramString2)
  {
    Uri localUri = u.a;
    String str = u.e + "=? AND " + u.j + "=? AND " + u.c + "=?";
    String[] arrayOfString = new String[3];
    arrayOfString[0] = paramString1;
    arrayOfString[1] = paramString2;
    arrayOfString[2] = String.valueOf(1);
    Cursor localCursor = paramContentResolver.query(localUri, null, str, arrayOfString, u.b + " LIMIT 1");
    long l = -1L;
    if (localCursor != null)
    {
      if (localCursor.moveToFirst())
        l = localCursor.getLong(localCursor.getColumnIndex("_id"));
      localCursor.close();
    }
    return l;
  }

  public static long a(ContentResolver paramContentResolver, String paramString1, String paramString2, long paramLong)
  {
    Uri localUri = u.a;
    String str = u.e + "=? AND " + u.j + "=? AND " + u.c + "=? AND " + u.f + " = ?";
    String[] arrayOfString = new String[4];
    arrayOfString[0] = paramString1;
    arrayOfString[1] = paramString2;
    arrayOfString[2] = String.valueOf(1);
    arrayOfString[3] = String.valueOf(paramLong);
    Cursor localCursor = paramContentResolver.query(localUri, null, str, arrayOfString, u.b + " LIMIT 1");
    long l = -1L;
    if (localCursor != null)
    {
      if (localCursor.moveToFirst())
        l = localCursor.getLong(localCursor.getColumnIndex("_id"));
      localCursor.close();
    }
    return l;
  }

  private static List a(ContentResolver paramContentResolver, String paramString, String[] paramArrayOfString)
  {
    Cursor localCursor = paramContentResolver.query(u.a, null, paramString, paramArrayOfString, u.b);
    ArrayList localArrayList = null;
    if (localCursor != null)
    {
      boolean bool = localCursor.moveToFirst();
      localArrayList = null;
      if (bool)
      {
        localArrayList = new ArrayList(localCursor.getCount());
        int i = localCursor.getColumnIndex("_id");
        do
          localArrayList.add(Long.valueOf(localCursor.getLong(i)));
        while (localCursor.moveToNext());
      }
      localCursor.close();
    }
    return localArrayList;
  }

  public static void a(Context paramContext, String paramString1, Long paramLong, String paramString2, String paramString3)
  {
    m.b("MessageBlockerHelper", "Deleting message with uuid: " + paramString1);
    if ((paramLong != null) && (paramLong.longValue() > 0L))
      paramContext.getContentResolver().delete(ContentUris.withAppendedId(u.a, paramLong.longValue()), null, null);
    while (true)
    {
      return;
      a(paramContext, paramString1, paramString2, paramString3, new h(paramString1, paramContext));
    }
  }

  private static void a(Context paramContext, String paramString1, String paramString2)
  {
    NotificationCompat.Builder localBuilder = new NotificationCompat.Builder(paramContext);
    localBuilder.setSmallIcon(2130837788);
    localBuilder.setTicker(Html.fromHtml("<b>" + paramString1 + ":</b> " + paramString2));
    localBuilder.setContentTitle(paramString1);
    localBuilder.setContentText(paramString2);
    localBuilder.setAutoCancel(true);
    localBuilder.setDefaults(4);
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse("sms:" + paramString1));
    localBuilder.setContentIntent(PendingIntent.getActivity(paramContext, 0, localIntent, 134217728));
    ((NotificationManager)paramContext.getSystemService("notification")).notify(123, localBuilder.build());
  }

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, long paramLong, boolean paramBoolean)
  {
    w.a(paramContext.getContentResolver(), paramString1, paramString2, paramString3, Long.valueOf(paramLong), false);
    if (paramBoolean)
      a(paramContext, paramString1, paramString2);
  }

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, k paramk)
  {
    m.b("MessageBlockerHelper", "Finding message with uuid: " + paramString1);
    if (!b(paramString1))
    {
      m.b("MessageBlockerHelper", "Message with uuid: " + paramString1 + " not aborted.");
      b(paramContext, paramString2, paramString3, paramk, false, 0);
    }
    while (true)
    {
      return;
      m.b("MessageBlockerHelper", "Message with uuid: " + paramString1 + " has been aborted.");
      paramk.b();
    }
  }

  public static void a(String paramString)
  {
    m.b("MessageBlockerHelper", "Adding uuid: " + paramString + " to the aborted list.");
    a.add(paramString);
  }

  public static void a(String paramString, j paramj)
  {
    m.b("MessageBlockerHelper", "Adding callback for aborted message result, uuid: " + paramString);
    Object localObject = (List)b.get(paramString);
    if (localObject == null)
    {
      localObject = new ArrayList();
      b.put(paramString, localObject);
    }
    ((List)localObject).add(paramj);
  }

  public static List b(ContentResolver paramContentResolver, String paramString1, String paramString2)
  {
    String str;
    String[] arrayOfString;
    if (!TextUtils.isEmpty(paramString1))
    {
      str = u.e + "=? AND " + u.j + "=? AND " + u.c + "=?";
      arrayOfString = new String[3];
      arrayOfString[0] = paramString1;
      arrayOfString[1] = paramString2;
      arrayOfString[2] = String.valueOf(1);
    }
    for (List localList = a(paramContentResolver, str, arrayOfString); ; localList = Collections.emptyList())
      return localList;
  }

  public static List b(ContentResolver paramContentResolver, String paramString1, String paramString2, long paramLong)
  {
    String str;
    String[] arrayOfString;
    if (!TextUtils.isEmpty(paramString1))
    {
      str = u.e + "=? AND " + u.j + "=? AND " + u.c + "=? AND " + u.f + " > ?";
      arrayOfString = new String[4];
      arrayOfString[0] = paramString1;
      arrayOfString[1] = paramString2;
      arrayOfString[2] = String.valueOf(1);
      arrayOfString[3] = String.valueOf(paramLong);
    }
    for (List localList = a(paramContentResolver, str, arrayOfString); ; localList = Collections.emptyList())
      return localList;
  }

  private static void b(Context paramContext, String paramString1, String paramString2, k paramk, boolean paramBoolean, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    if (!paramBoolean)
    {
      Long localLong = Long.valueOf(a(paramContext.getContentResolver(), paramString1, paramString2));
      m.b("MessageBlockerHelper", "Message id: " + localLong + ".");
      if (localLong.longValue() > -1L)
        localArrayList.add(localLong);
    }
    while (localArrayList.size() > 0)
    {
      m.b("MessageBlockerHelper", "Found message id...");
      paramk.a(localArrayList);
      return;
      List localList = b(paramContext.getContentResolver(), paramString1, paramString2);
      if (localList != null)
        localArrayList.addAll(localList);
      m.b("MessageBlockerHelper", "Message ids count: " + localArrayList.size() + ".");
    }
    Intent localIntent = new Intent("android.provider.Telephony.SMS_RECEIVED");
    int i = -1 + paramContext.getPackageManager().queryBroadcastReceivers(localIntent, 0).size();
    if (i <= 0);
    for (int j = 1; ; j = i)
    {
      m.b("MessageBlockerHelper", "Not found message id, trying to find again after: " + 10000L * j / 1000L + " seconds.");
      i locali = new i(paramInt, paramk, paramContext, paramString1, paramString2, paramBoolean);
      c.postDelayed(locali, 10000L * j);
      break;
    }
  }

  public static void b(Context paramContext, String paramString1, String paramString2, String paramString3, k paramk)
  {
    m.b("MessageBlockerHelper", "Finding message with uuid: " + paramString1);
    if (!b(paramString1))
    {
      m.b("MessageBlockerHelper", "Message with uuid: " + paramString1 + " not aborted.");
      b(paramContext, paramString2, paramString3, paramk, true, 0);
    }
    while (true)
    {
      return;
      m.b("MessageBlockerHelper", "Message with uuid: " + paramString1 + " has been aborted.");
      paramk.b();
    }
  }

  public static boolean b(String paramString)
  {
    return a.contains(paramString);
  }

  public static void c(String paramString)
  {
    m.b("MessageBlockerHelper", "Notifying callbacks that aborted message with uuid: " + paramString + " was saved.");
    List localList = (List)b.remove(paramString);
    if (localList != null)
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
        ((j)localIterator.next()).a(paramString);
    }
  }

  public static void d(String paramString)
  {
    m.b("MessageBlockerHelper", "Notifying callbacks that aborted message with uuid: " + paramString + " was not saved.");
    List localList = (List)b.remove(paramString);
    if (localList != null)
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
        ((j)localIterator.next()).b(paramString);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.g
 * JD-Core Version:    0.6.2
 */