package com.ijinshan.kinghelper.firewall.core;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.telephony.SmsMessage;
import com.ijinshan.kinghelper.firewall.FirewallDeskSMSActivity;
import com.ijinshan.kinghelper.firewall.FirewallDeskSMSActivityApiLevel4;
import com.ijinshan.kinghelper.firewall.dd;
import com.keniu.security.monitor.b;

public final class a
  implements b
{
  private static Uri a(w paramw)
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
      localUri = localContentResolver.insert(android.a.w.a, localContentValues);
      boolean bool = android.a.w.a.equals(localUri);
      if (bool)
        localUri = null;
      return localUri;
    }
    catch (Exception localException)
    {
      while (true)
        Uri localUri = null;
    }
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    w localw = (w)paramObject1;
    int i;
    if (localw.e)
      i = 0;
    while (true)
    {
      return i;
      dd.a(localw.a);
      if (!dd.p())
      {
        i = 0;
      }
      else
      {
        Uri localUri = a(localw);
        if (localUri == null)
          i = 0;
        else if (localw.a.getContentResolver().query(localUri, null, null, null, null) == null)
          i = 0;
        else
          try
          {
            if (Build.VERSION.SDK_INT > 4)
            {
              Intent localIntent1 = new Intent(localw.a, FirewallDeskSMSActivity.class);
              localIntent1.setFlags(268435456);
              localIntent1.putExtra(FirewallDeskSMSActivity.a, localUri.toString());
              localw.a.startActivity(localIntent1);
            }
            while (true)
            {
              localw.g.abortBroadcast();
              i = 2;
              break;
              Intent localIntent2 = new Intent(localw.a, FirewallDeskSMSActivityApiLevel4.class);
              localIntent2.setFlags(268435456);
              localIntent2.putExtra(FirewallDeskSMSActivity.a, localUri.toString());
              localw.a.startActivity(localIntent2);
            }
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            i = 0;
          }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.core.a
 * JD-Core Version:    0.6.2
 */