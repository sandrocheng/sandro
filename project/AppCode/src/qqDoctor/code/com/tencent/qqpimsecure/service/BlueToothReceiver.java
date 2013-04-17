package com.tencent.qqpimsecure.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class BlueToothReceiver extends BroadcastReceiver
{
  private String a = "BlueToothReceiver";

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("android.bluetooth.device.action.ACL_CONNECTED".equals(paramIntent.getAction()));
    while (true)
    {
      return;
      if ("android.bluetooth.device.action.ACL_DISCONNECTED".equals(paramIntent.getAction()));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.service.BlueToothReceiver
 * JD-Core Version:    0.6.2
 */