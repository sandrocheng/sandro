package com.tencent.powermanager.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import r;
import s.a;

public class BatteryPowerRecordReciver extends BroadcastReceiver
{
  private static final String a = BatteryPowerRecordReciver.class.getSimpleName();

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramIntent.getAction().equals("com.tencent.powermanager.levelrecorder")) && (BatteryEventReceiver.c))
      s.a.d().i(BatteryEventReceiver.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.service.BatteryPowerRecordReciver
 * JD-Core Version:    0.6.2
 */