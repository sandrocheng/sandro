package com.tencent.powermanager.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class SystemTimeReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    BatteryEventReceiver.d = true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.service.SystemTimeReceiver
 * JD-Core Version:    0.6.2
 */