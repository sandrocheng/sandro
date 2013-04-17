package com.tencent.qqpimsecure.service;

import a;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.tools.RunableTaskManager;
import ho;
import wc;
import wd;

public class NetWorkEventReceiver extends BroadcastReceiver
{
  private String a = "NetWorkEventReceiver";

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    NetworkInfo localNetworkInfo;
    NetworkInfo.State localState;
    if ("android.net.conn.CONNECTIVITY_CHANGE".equals(paramIntent.getAction()))
    {
      localNetworkInfo = (NetworkInfo)paramIntent.getParcelableExtra("networkInfo");
      if ((localNetworkInfo == null) || (localNetworkInfo.getType() != 0))
        break label91;
      localState = localNetworkInfo.getState();
      if (localState != NetworkInfo.State.CONNECTED)
        break label75;
      ((RunableTaskManager)ManagerCreator.getManager(RunableTaskManager.class)).addTask(new wd(), 1000L);
    }
    while (true)
    {
      return;
      label75: if (localState == NetworkInfo.State.DISCONNECTED)
      {
        continue;
        label91: if ((localNetworkInfo != null) && (localNetworkInfo.getType() == 1))
          if (localNetworkInfo.getState() == NetworkInfo.State.CONNECTED)
          {
            ((RunableTaskManager)ManagerCreator.getManager(RunableTaskManager.class)).addTask(new wd(), 1000L);
            ho localho = ho.a();
            long l = System.currentTimeMillis();
            if ((localho.dq()) && (!a.b(localho.cY(), l)) && (!a.b(localho.aL(), l)))
              new wc(paramContext, localho, l).start();
            localho.z(l);
          }
          else;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.service.NetWorkEventReceiver
 * JD-Core Version:    0.6.2
 */