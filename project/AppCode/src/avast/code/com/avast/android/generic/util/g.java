package com.avast.android.generic.util;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.text.TextUtils;
import com.avast.android.generic.ad;
import com.avast.android.generic.ag;
import com.avast.android.generic.ah;

public class g
{
  private static boolean a = false;

  public static void a(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      localPackageManager.getPackageInfo("com.google.android.gsf", 0);
      t.a("AvastComms", paramContext, "C2DM requestor is requesting new reg ID");
      Intent localIntent = new Intent("com.google.android.c2dm.intent.REGISTER");
      localIntent.putExtra("app", PendingIntent.getBroadcast(paramContext, 0, new Intent(), 0));
      localIntent.putExtra("sender", "267505377073");
      if (paramContext.startService(localIntent) == null)
      {
        t.a("AvastComms", paramContext, "C2DM requestor failed requesting new reg ID");
        throw new f();
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      throw new f();
    }
    t.a("AvastComms", paramContext, "C2DM requestor requested new reg ID successfully");
  }

  public static void a(Context paramContext, boolean paramBoolean)
  {
    com.avast.android.generic.ae localae1 = (com.avast.android.generic.ae)ad.a(paramContext, ag.class);
    com.avast.android.generic.ae localae2 = (com.avast.android.generic.ae)ad.a(paramContext, ah.class);
    if (!localae1.u())
      return;
    String str;
    if (Build.VERSION.SDK_INT >= 8)
    {
      str = localae2.F();
      if (str == null)
        break label92;
    }
    label92: for (int i = 1; ; i = 0)
    {
      t.a("AvastComms", paramContext, "C2DM request, current reg ID before C2DM request is " + str);
      if ((i != 0) && (!paramBoolean))
        break;
      a(paramContext);
      break;
      break;
    }
  }

  public static void b(Context paramContext)
  {
    while (true)
    {
      try
      {
        int i = Build.VERSION.SDK_INT;
        if (i < 8)
          return;
        if ((((com.avast.android.generic.ae)ad.a(paramContext, ag.class)).u()) && (TextUtils.isEmpty(((com.avast.android.generic.ae)ad.a(paramContext, ah.class)).F())))
        {
          j = 1;
          d(paramContext);
          if (j != 0)
            continue;
          c(paramContext);
          continue;
        }
      }
      finally
      {
      }
      int j = 0;
    }
  }

  private static void c(Context paramContext)
  {
    try
    {
      Intent localIntent = new Intent();
      ae.b(paramContext, localIntent, paramContext.getPackageName());
      localIntent.setAction("com.avast.android.generic.action.REQUEST_C2DM");
      ((AlarmManager)paramContext.getSystemService("alarm")).cancel(PendingIntent.getService(paramContext, 0, localIntent, 134217728));
      a = false;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static void d(Context paramContext)
  {
    try
    {
      if (!a)
      {
        c(paramContext);
        Intent localIntent = new Intent();
        ae.b(paramContext, localIntent, paramContext.getPackageName());
        localIntent.setAction("com.avast.android.generic.action.REQUEST_C2DM");
        AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
        PendingIntent localPendingIntent = PendingIntent.getService(paramContext, 0, localIntent, 134217728);
        localAlarmManager.setRepeating(2, 5000L + SystemClock.elapsedRealtime(), 120000L, localPendingIntent);
        t.a("AvastIPC", "C2DM request has been scheduled in 5s, 120s diff");
        a = true;
      }
      while (true)
      {
        return;
        t.a("AvastIPC", "C2DM request is already running, do not need to schedule");
      }
    }
    finally
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.g
 * JD-Core Version:    0.6.2
 */