package com.tencent.qqpimsecure.widget;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import bsl;
import com.tencent.qqpimsecure.ui.activity.WifiApproveDialog.c;
import com.tencent.tmsecure.utils.WifiUtil;
import ho;
import ov;

public class NetworkStateChangeReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null);
    label95: label104: 
    while (true)
    {
      return;
      NetworkInfo localNetworkInfo;
      String str;
      if (ho.a().aG())
      {
        localNetworkInfo = (NetworkInfo)paramIntent.getParcelableExtra("networkInfo");
        str = WifiUtil.getSSID();
        if ((localNetworkInfo == null) || (localNetworkInfo.isConnected() != true) || (localNetworkInfo.getType() != 1))
          break label95;
        new Thread(new bsl(str)).start();
      }
      while (true)
      {
        if ((localNetworkInfo == null) || (localNetworkInfo.getType() != 1))
          break label104;
        WifiApproveDialog.c.a().a(str, localNetworkInfo.isConnected());
        break;
        break;
        ov.a().a(21);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.widget.NetworkStateChangeReceiver
 * JD-Core Version:    0.6.2
 */