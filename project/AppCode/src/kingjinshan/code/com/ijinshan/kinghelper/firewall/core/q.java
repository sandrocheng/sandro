package com.ijinshan.kinghelper.firewall.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.util.Log;
import com.jxphone.mosecurity.c.c;
import com.jxphone.mosecurity.c.l;
import com.jxphone.mosecurity.logic.a.d;
import com.jxphone.mosecurity.logic.a.j;
import com.keniu.security.a;

public final class q
  implements com.keniu.security.monitor.b
{
  private static int a(w paramw)
  {
    int i;
    if (paramw.e)
      i = SmsFirewallBroadcastReceiver.a;
    while (true)
    {
      return i;
      Context localContext = paramw.a;
      String str = paramw.c;
      localContext.getSystemService("audio");
      com.jxphone.mosecurity.c.b localb = com.jxphone.mosecurity.logic.h.c(localContext).a(str);
      if ((localb != null) && (localb.e() == c.b))
      {
        a locala = a.a(localContext);
        j localj = com.jxphone.mosecurity.logic.h.a(localContext);
        l locall = new l();
        locall.a(str);
        locall.b(paramw.d);
        locall.a(System.currentTimeMillis());
        locall.b(1);
        locall.a(c.b);
        if (localj.b(locall) >= 0)
        {
          int j;
          boolean bool;
          switch (locala.m())
          {
          default:
            j = -1;
            bool = true;
          case 1:
          case 2:
          }
          while (true)
          {
            if (locala.q())
              h.a(localContext, locall, j, bool);
            Log.e("FriendSmsRecvMonitor>>", "OnRecvSMS>>FRIEND>>SMS_FILTER_RES_DENY");
            i = SmsFirewallBroadcastReceiver.b;
            break;
            j = 2;
            bool = false;
            continue;
            j = -1;
            bool = false;
          }
        }
        Log.e("FriendSmsRecvMonitor>>", "OnRecvSMS>>Other>>SMS_FILTER_RES_CONTINUE");
        i = SmsFirewallBroadcastReceiver.a;
      }
      else
      {
        i = SmsFirewallBroadcastReceiver.a;
      }
    }
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    w localw = (w)paramObject1;
    int k;
    boolean bool;
    int i;
    if (!localw.e)
    {
      Context localContext = localw.a;
      String str = localw.c;
      localContext.getSystemService("audio");
      com.jxphone.mosecurity.c.b localb = com.jxphone.mosecurity.logic.h.c(localContext).a(str);
      if ((localb != null) && (localb.e() == c.b))
      {
        a locala = a.a(localContext);
        j localj = com.jxphone.mosecurity.logic.h.a(localContext);
        l locall = new l();
        locall.a(str);
        locall.b(localw.d);
        locall.a(System.currentTimeMillis());
        locall.b(1);
        locall.a(c.b);
        if (localj.b(locall) >= 0)
          switch (locala.m())
          {
          default:
            k = -1;
            bool = true;
            if (locala.q())
              h.a(localContext, locall, k, bool);
            Log.e("FriendSmsRecvMonitor>>", "OnRecvSMS>>FRIEND>>SMS_FILTER_RES_DENY");
            i = SmsFirewallBroadcastReceiver.b;
            label206: if (i == SmsFirewallBroadcastReceiver.b)
              localw.g.abortBroadcast();
            break;
          case 1:
          case 2:
          }
      }
    }
    for (int j = 2; ; j = 0)
    {
      return j;
      k = 2;
      bool = false;
      break;
      k = -1;
      bool = false;
      break;
      Log.e("FriendSmsRecvMonitor>>", "OnRecvSMS>>Other>>SMS_FILTER_RES_CONTINUE");
      i = SmsFirewallBroadcastReceiver.a;
      break label206;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.core.q
 * JD-Core Version:    0.6.2
 */