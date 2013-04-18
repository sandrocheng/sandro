package com.jxphone.mosecurity.d;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.util.Log;
import com.jxphone.mosecurity.c.l;

public abstract class u
{
  private static int a = 3;

  static
  {
    try
    {
      a = Integer.parseInt(Build.VERSION.SDK);
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (true)
        Log.w("SmsHelper", "Unavailable SDK Level value: " + Build.VERSION.SDK);
    }
  }

  protected static l a(String paramString1, String paramString2)
  {
    l locall = new l();
    locall.a(paramString1);
    locall.b(paramString2);
    locall.a(System.currentTimeMillis());
    locall.b(1);
    return locall;
  }

  public static final u a()
  {
    if (a > 3);
    for (Object localObject = new w(); ; localObject = new v())
      return localObject;
  }

  public final void a(Context paramContext, int paramInt, String paramString1, String paramString2, boolean paramBoolean)
  {
    Intent localIntent1 = new Intent("sms_send_action");
    Intent localIntent2 = new Intent("sms_delivered_action");
    localIntent1.putExtra("_id", paramInt);
    localIntent1.putExtra("isDummy", paramBoolean);
    localIntent2.putExtra("_id", paramInt);
    localIntent2.putExtra("isDummy", paramBoolean);
    a(paramString1, paramString2, PendingIntent.getBroadcast(paramContext, 0, localIntent1, 134217728), PendingIntent.getBroadcast(paramContext, 0, localIntent2, 134217728));
  }

  abstract void a(String paramString1, String paramString2, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2);

  public abstract l[] a(Object[] paramArrayOfObject);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.d.u
 * JD-Core Version:    0.6.2
 */