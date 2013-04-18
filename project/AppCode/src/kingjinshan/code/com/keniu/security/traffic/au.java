package com.keniu.security.traffic;

import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import cn.com.wali.zft.ZftPluginCallBack;
import cn.com.wali.zft.ZftPluginCallBack.SyncStatus;
import com.jxphone.mosecurity.a.a;
import java.io.PrintStream;

final class au
  implements ZftPluginCallBack
{
  public final void Sync_End()
  {
    at.b = false;
    Intent localIntent = new Intent();
    localIntent.setAction("updateTrafficMainData");
    at.c().sendBroadcast(localIntent);
    System.out.println("Sync_End");
    at.g().a();
    at.a(at.i(), aw.a);
    at.a(null);
    at.b(null);
  }

  public final void Sync_Status(ZftPluginCallBack.SyncStatus paramSyncStatus)
  {
    if (paramSyncStatus.name().equals("sms_success"))
    {
      System.out.println("发送短信成功");
      if (!at.a)
      {
        at.a().show();
        if (at.b())
        {
          a.d(at.c(), "4");
          a.d(at.c(), "12");
          at.d();
        }
      }
    }
    while (true)
    {
      return;
      if (!at.a)
      {
        if (at.e())
        {
          a.d(at.c(), "11");
          at.f();
        }
        at.a(at.c().getString(2131428103));
      }
    }
  }

  public final void Sync_Timeout()
  {
    at.b = false;
    Intent localIntent = new Intent();
    localIntent.setAction("updateTrafficMainData");
    at.c().sendBroadcast(localIntent);
    System.out.println("Sync_Timeout");
    at.g().a();
    if ((!aw.a) && (!at.a))
      at.h();
    at.a(at.i(), aw.a);
    at.a(null);
    at.b(null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.au
 * JD-Core Version:    0.6.2
 */