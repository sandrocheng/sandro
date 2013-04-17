package com.tencent.qqpimsecure.service;

import abv;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.network.NetworkManager;
import fs;
import ho;
import it;
import nd;
import ov;
import vh;
import zo;

public class ScreenEventReceiver extends BroadcastReceiver
{
  private static boolean b = true;
  private String a = "ScreenEventReceiver";

  public static boolean a()
  {
    return b;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.intent.action.SCREEN_OFF"))
    {
      b = false;
      abv.d();
      ((NetworkManager)ManagerCreator.getManager(NetworkManager.class)).setInterval(fs.d);
      return;
    }
    if (paramIntent.getAction().equals("android.intent.action.SCREEN_ON"))
    {
      b = true;
      zo.a().c();
      vh.a().c();
      nd.a().g();
      abv.c();
      if (!new it(paramContext).m())
        break label277;
      ((NetworkManager)ManagerCreator.getManager(NetworkManager.class)).setInterval(fs.c);
    }
    while (true)
    {
      Intent localIntent1 = new Intent();
      localIntent1.setClass(paramContext, SecureService.class);
      localIntent1.setAction("switch_suspession_window");
      paramContext.startService(localIntent1);
      ((NetworkManager)ManagerCreator.getManager(NetworkManager.class)).notifyConfigChange();
      ho localho = ho.a();
      long l = System.currentTimeMillis();
      if ((!localho.aN()) || (l > 60000L + localho.aO()) || (Math.abs(System.currentTimeMillis() - localho.aL()) > 604800000L))
      {
        Intent localIntent2 = new Intent(paramContext, SecureService.class);
        localIntent2.setAction("com.tencent.action.cloud_service");
        paramContext.startService(localIntent2);
      }
      if ((!localho.dr()) || (!localho.dq()))
        break;
      localho.R(false);
      localho.i(System.currentTimeMillis());
      ov.a().a(paramContext.getString(2131428316));
      break;
      break;
      label277: ((NetworkManager)ManagerCreator.getManager(NetworkManager.class)).setInterval(fs.d);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.service.ScreenEventReceiver
 * JD-Core Version:    0.6.2
 */