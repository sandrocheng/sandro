package com.keniu.security.sync;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.telephony.SmsMessage;
import com.ijinshan.kinghelper.firewall.core.SmsFirewallBroadcastReceiver;
import com.ijinshan.kinghelper.firewall.core.y;
import com.keniu.security.monitor.b;

public final class a
  implements b
{
  private static String a;
  private static boolean b = false;
  private static a c;
  private static boolean d = false;

  public static void a()
  {
    try
    {
      boolean bool = d;
      if (bool);
      while (true)
      {
        return;
        d = true;
        if (c == null)
        {
          c = new a();
          com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.r, c, 0);
        }
      }
    }
    finally
    {
    }
  }

  public static void a(String paramString)
  {
    a = paramString;
  }

  private int b(com.ijinshan.kinghelper.firewall.core.w paramw)
  {
    int i = SmsFirewallBroadcastReceiver.a;
    String str1 = paramw.c;
    String str2 = paramw.d;
    i.a(this, ">>>>> address " + str1 + "; body " + str2);
    if (paramw.e);
    while (true)
    {
      return i;
      if (str2.contains("http://i.ijinshan.com/m?c="))
      {
        b = true;
        String str3 = str2.substring(str2.indexOf("http://i.ijinshan.com/m?c=") + "http://i.ijinshan.com/m?c=".length(), str2.indexOf("（"));
        i.a(this, ">>>>> verify key = " + str3);
        int j = SmsFirewallBroadcastReceiver.b;
        new c(this).execute(new Object[] { str3, paramw });
        i = j;
      }
    }
  }

  public static boolean b()
  {
    i.a(c, ">>>>> call is verified");
    com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.r, c);
    return b;
  }

  private static Uri c(com.ijinshan.kinghelper.firewall.core.w paramw)
  {
    ContentResolver localContentResolver = paramw.a.getContentResolver();
    SmsMessage localSmsMessage = paramw.f[0];
    String str1 = localSmsMessage.getOriginatingAddress();
    String str2 = paramw.d;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("address", str1);
    if (localSmsMessage.getPseudoSubject().length() > 0)
      localContentValues.put("subject", localSmsMessage.getPseudoSubject());
    localContentValues.put("service_center", localSmsMessage.getServiceCenterAddress());
    localContentValues.put("read", Integer.valueOf(0));
    localContentValues.put("protocol", Integer.valueOf(localSmsMessage.getProtocolIdentifier()));
    localContentValues.put("body", str2);
    localContentValues.put("date", Long.valueOf(y.a(paramw.a, localSmsMessage)));
    localContentValues.put("person", Integer.valueOf(-1));
    try
    {
      Uri localUri2 = localContentResolver.insert(android.a.w.a, localContentValues);
      localUri1 = localUri2;
      return localUri1;
    }
    catch (Exception localException)
    {
      while (true)
        Uri localUri1 = null;
    }
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    i.a(this, ">>>>> monitor notify");
    com.ijinshan.kinghelper.firewall.core.w localw = (com.ijinshan.kinghelper.firewall.core.w)paramObject1;
    int i = SmsFirewallBroadcastReceiver.a;
    String str1 = localw.c;
    String str2 = localw.d;
    i.a(this, ">>>>> address " + str1 + "; body " + str2);
    if ((!localw.e) && (str2.contains("http://i.ijinshan.com/m?c=")))
    {
      b = true;
      String str3 = str2.substring(str2.indexOf("http://i.ijinshan.com/m?c=") + "http://i.ijinshan.com/m?c=".length(), str2.indexOf("（"));
      i.a(this, ">>>>> verify key = " + str3);
      int k = SmsFirewallBroadcastReceiver.b;
      new c(this).execute(new Object[] { str3, localw });
      i = k;
    }
    if (i == SmsFirewallBroadcastReceiver.b)
      localw.g.abortBroadcast();
    for (int j = 2; ; j = 0)
      return j;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.a
 * JD-Core Version:    0.6.2
 */