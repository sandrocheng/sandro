package com.tencent.powermanager.service;

import af;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;

public class BlueToothReceiver extends BroadcastReceiver
{
  private String a = "BlueToothReceiver";

  static
  {
    new ArrayList();
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramIntent.getAction();
    if ("android.bluetooth.device.action.ACL_CONNECTED".equals(paramIntent.getAction()))
      ah.a = true;
    while (true)
    {
      af.b();
      return;
      if ("android.bluetooth.device.action.ACL_DISCONNECTED".equals(paramIntent.getAction()))
        ah.a = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.service.BlueToothReceiver
 * JD-Core Version:    0.6.2
 */