package com.ijinshan.kinghelper.firewall.core;

import android.content.Context;
import android.telephony.SmsMessage;
import android.telephony.TelephonyManager;
import com.jxphone.mosecurity.d.l;

public final class y
{
  public static long a(Context paramContext, SmsMessage paramSmsMessage)
  {
    long l;
    if (l.c())
      l = System.currentTimeMillis();
    while (true)
    {
      return l;
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      if (localTelephonyManager != null)
      {
        String str = localTelephonyManager.getSubscriberId();
        if (str != null)
        {
          if (str.startsWith("46003"))
            l = System.currentTimeMillis();
        }
        else if (localTelephonyManager.getPhoneType() == 2)
          l = System.currentTimeMillis();
      }
      else
      {
        l = paramSmsMessage.getTimestampMillis();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.core.y
 * JD-Core Version:    0.6.2
 */