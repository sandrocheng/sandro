package com.keniu.security.protection;

import android.content.Context;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.c.a.a.a;

final class m extends Handler
{
  m(l paraml)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 0)
    {
      Log.d("LocationInfoManager", "begin gpsenable=" + l.a(this.a));
      l.a(this.a, (LocationManager)l.b(this.a).getSystemService("location"));
      Log.d("LocationInfoManager", "register tuba location listener");
      if (l.c(this.a) == null)
      {
        l.a(this.a, new a(l.b(this.a)));
        l.c(this.a).a(this.a.a);
      }
      l.c(this.a).a();
      l.d(this.a).sendEmptyMessageDelayed(1, 20000L);
    }
    if (paramMessage.what == 1);
    try
    {
      Log.d("LocationInfoManager", "unregister tuba location listener");
      if (l.c(this.a) != null)
      {
        Log.d("LocationInfoManager", "close tuba location listener");
        l.c(this.a).c();
        l.c(this.a).b();
        l.a(this.a, null);
      }
      if (!l.e(this.a))
      {
        Bundle localBundle2 = paramMessage.getData();
        String str4 = localBundle2.getString("addr_cn");
        String str5 = localBundle2.getString("longitude");
        String str6 = localBundle2.getString("latitude");
        Log.d("LocationInfoManager", "tuba:[" + str6 + "," + str5 + "] " + str4);
        if ((str5 != null) && (!"".equals(str5)) && (str6 != null) && (!"".equals(str6)))
        {
          l.a(this.a, str5, str6, str4, "TUBA");
          if (paramMessage.what != 2)
            return;
        }
      }
    }
    catch (Exception localException2)
    {
      try
      {
        while (true)
        {
          Log.d("LocationInfoManager", "unregister android location listener");
          if (l.f(this.a) != null)
          {
            l.f(this.a).removeUpdates(this.a.b);
            l.a(this.a, null);
          }
          if (l.e(this.a))
            break;
          Bundle localBundle1 = paramMessage.getData();
          String str1 = localBundle1.getString("addr_cn");
          String str2 = localBundle1.getString("longitude");
          String str3 = localBundle1.getString("latitude");
          Log.d("LocationInfoManager", "android:[" + str3 + "," + str2 + "] " + str1);
          l.a(this.a, str2, str3, str1, "ANDROID");
          break;
          Log.d("LocationInfoManager", "register android location listener");
          l.f(this.a).requestLocationUpdates("gps", 5000L, 0.0F, this.a.b);
          l.f(this.a).requestLocationUpdates("network", 5000L, 0.0F, this.a.b);
          new Handler().postDelayed(new n(this), 30000L);
        }
        localException2 = localException2;
        localException2.printStackTrace();
      }
      catch (Exception localException1)
      {
        while (true)
          localException1.printStackTrace();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.m
 * JD-Core Version:    0.6.2
 */