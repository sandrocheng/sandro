package com.avast.android.generic.app.passwordrecovery;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.telephony.SmsManager;
import android.text.TextUtils;
import com.avast.android.generic.ad;
import com.avast.android.generic.z;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Random;
import java.util.UUID;

public class a
{
  private static b a = b.a;
  private static j b = null;
  private static final Object c = new Object();
  private static final Object d = new Object();

  public static void a(Context paramContext, b paramb)
  {
    com.avast.android.generic.ae localae = (com.avast.android.generic.ae)ad.a(paramContext, com.avast.android.generic.ae.class);
    synchronized (d)
    {
      localae.e("");
      localae.b(-1L);
      localae.d(-1L);
      localae.c(-1L);
      ((AlarmManager)paramContext.getSystemService("alarm")).cancel(PendingIntent.getBroadcast(paramContext, 0, new Intent("com.avast.android.generic.RECOVERY_TIME_TICK"), 0));
      a(paramb);
      return;
    }
  }

  private static void a(Context paramContext, String paramString1, String paramString2)
  {
    SmsManager localSmsManager = SmsManager.getDefault();
    com.avast.android.generic.ae localae = (com.avast.android.generic.ae)ad.a(paramContext, com.avast.android.generic.ae.class);
    Intent localIntent = new Intent("com.avast.android.generic.RECOVERY_SMS");
    String str1 = UUID.randomUUID().toString();
    while (true)
    {
      String str2;
      PendingIntent localPendingIntent;
      ArrayList localArrayList1;
      synchronized (d)
      {
        localae.h(str1);
        str2 = localae.k();
        if (!TextUtils.isEmpty(paramString2))
          str2 = paramString2;
        localIntent.putExtra("auth_token", str1);
        localIntent.setComponent(new ComponentName(paramContext, PasswordRecoveryReceiver.class.getCanonicalName()));
        localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, localIntent, 268435456);
        String str3 = paramContext.getString(z.bH, new Object[] { paramString1 });
        localArrayList1 = localSmsManager.divideMessage(str3);
        if (localArrayList1.size() < 2)
        {
          localSmsManager.sendTextMessage(str2, null, str3, localPendingIntent, null);
          return;
        }
      }
      ArrayList localArrayList2 = new ArrayList();
      localArrayList2.add(localPendingIntent);
      localSmsManager.sendMultipartTextMessage(str2, null, localArrayList1, localArrayList2, null);
    }
  }

  public static void a(Context paramContext, boolean paramBoolean)
  {
    if (!d(paramContext));
    while (true)
    {
      return;
      if (paramBoolean)
      {
        a(b.c);
        Intent localIntent = new Intent("com.avast.android.generic.app.passwordrecovery.ACTION_PASSWORD_RECOVERY_INITIATED");
        com.avast.android.generic.util.ae.a(localIntent);
        paramContext.sendBroadcast(localIntent, "com.avast.android.generic.COMM_PERMISSION");
      }
      else
      {
        a(paramContext, b.d);
      }
    }
  }

  private static void a(b paramb)
  {
    synchronized (c)
    {
      a = paramb;
      if (b != null)
        b.a(a);
      return;
    }
  }

  private static void a(j paramj)
  {
    synchronized (c)
    {
      b = paramj;
      return;
    }
  }

  public static boolean a(Context paramContext)
  {
    boolean bool = false;
    try
    {
      if (!com.avast.android.generic.f.b.a.h(paramContext))
      {
        bool = false;
      }
      else
      {
        int i = com.avast.android.generic.f.b.a.c(paramContext);
        bool = false;
        if (i == 5)
          bool = true;
      }
    }
    catch (Exception localException)
    {
    }
    return bool;
  }

  public static boolean a(Context paramContext, j paramj, String paramString)
  {
    boolean bool;
    try
    {
      if (d(paramContext))
      {
        bool = false;
      }
      else if (!a(paramContext))
      {
        bool = false;
      }
      else
      {
        a(paramj);
        long l1 = Calendar.getInstance().getTimeInMillis();
        long l2 = 1800000L + l1;
        int i = new Random().nextInt(1000000);
        for (String str = i + ""; str.length() < 6; str = "0" + str);
        com.avast.android.generic.ae localae = (com.avast.android.generic.ae)ad.a(paramContext, com.avast.android.generic.ae.class);
        synchronized (d)
        {
          localae.e(str);
          localae.b(l1);
          localae.c(l2);
          c(paramContext);
          a(paramContext, str, paramString);
          a(b.b);
          bool = true;
        }
      }
    }
    catch (Exception localException)
    {
      a(paramContext, b.g);
      bool = false;
    }
    return bool;
  }

  public static boolean a(Context paramContext, String paramString)
  {
    boolean bool;
    if ((paramString == null) || (paramString == ""))
      bool = false;
    while (true)
    {
      return bool;
      com.avast.android.generic.ae localae = (com.avast.android.generic.ae)ad.a(paramContext, com.avast.android.generic.ae.class);
      synchronized (d)
      {
        if ("".equals(localae.g()))
        {
          bool = false;
          continue;
        }
        bool = localae.c(paramString);
      }
    }
  }

  public static void b(Context paramContext)
  {
    if (!d(paramContext));
    while (true)
    {
      return;
      c(paramContext);
    }
  }

  public static boolean b(Context paramContext, String paramString)
  {
    boolean bool2;
    if (paramString == "")
      bool2 = false;
    while (true)
    {
      return bool2;
      com.avast.android.generic.ae localae = (com.avast.android.generic.ae)ad.a(paramContext, com.avast.android.generic.ae.class);
      synchronized (d)
      {
        boolean bool1 = paramString.equals(localae.l());
        localae.g("");
        bool2 = bool1;
      }
    }
  }

  public static void c(Context paramContext)
  {
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    com.avast.android.generic.ae localae = (com.avast.android.generic.ae)ad.a(paramContext, com.avast.android.generic.ae.class);
    Intent localIntent = new Intent("com.avast.android.generic.RECOVERY_TIME_TICK");
    String str = UUID.randomUUID().toString();
    synchronized (d)
    {
      localae.g(str);
      localIntent.setComponent(new ComponentName(paramContext, PasswordRecoveryReceiver.class.getCanonicalName()));
      localIntent.putExtra("auth_token", str);
      PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, localIntent, 268435456);
      localAlarmManager.set(0, 60000L + System.currentTimeMillis(), localPendingIntent);
      return;
    }
  }

  public static boolean c(Context paramContext, String paramString)
  {
    boolean bool2;
    if (paramString == "")
      bool2 = false;
    while (true)
    {
      return bool2;
      com.avast.android.generic.ae localae = (com.avast.android.generic.ae)ad.a(paramContext, com.avast.android.generic.ae.class);
      synchronized (d)
      {
        boolean bool1 = paramString.equals(localae.m());
        localae.h("");
        bool2 = bool1;
      }
    }
  }

  public static boolean d(Context paramContext)
  {
    com.avast.android.generic.ae localae = (com.avast.android.generic.ae)ad.a(paramContext, com.avast.android.generic.ae.class);
    boolean bool;
    synchronized (d)
    {
      if ("".equals(localae.g()))
        bool = false;
      else
        bool = e(paramContext);
    }
    return bool;
  }

  private static boolean e(Context paramContext)
  {
    com.avast.android.generic.ae localae;
    long l2;
    long l4;
    boolean bool;
    while (true)
    {
      long l1;
      long l3;
      try
      {
        localae = (com.avast.android.generic.ae)ad.a(paramContext, com.avast.android.generic.ae.class);
        synchronized (d)
        {
          l1 = localae.h();
          l2 = localae.j();
          l3 = localae.i();
          l4 = Calendar.getInstance().getTimeInMillis();
          if ((l1 == -1L) || (l3 == -1L))
          {
            bool = false;
            return bool;
          }
        }
      }
      finally
      {
      }
      if (l4 < l1 - 120000L)
      {
        a(paramContext, b.f);
        bool = false;
      }
      else
      {
        if (l4 <= 120000L + l3)
          break;
        a(paramContext, b.e);
        Intent localIntent = new Intent("com.avast.android.generic.app.passwordrecovery.ACTION_PASSWORD_RECOVERY_EXPIRED");
        com.avast.android.generic.util.ae.a(localIntent);
        paramContext.sendBroadcast(localIntent, "com.avast.android.generic.COMM_PERMISSION");
        bool = false;
      }
    }
    while (true)
    {
      a(paramContext, b.f);
      bool = false;
      break;
      do
      {
        synchronized (d)
        {
          localae.d(l4);
          bool = true;
        }
        if (l4 < l2 - 120000L)
          break;
      }
      while (l4 <= 120000L + l2);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.passwordrecovery.a
 * JD-Core Version:    0.6.2
 */