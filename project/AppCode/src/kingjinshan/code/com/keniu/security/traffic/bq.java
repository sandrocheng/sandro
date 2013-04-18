package com.keniu.security.traffic;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class bq extends BroadcastReceiver
{
  private bq(TrafficMainActivity paramTrafficMainActivity, byte paramByte)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (TrafficMainActivity.a(this.a));
    while (true)
    {
      return;
      if (paramIntent.getAction().equals("updateTrafficMainData"))
        TrafficMainActivity.b(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.bq
 * JD-Core Version:    0.6.2
 */