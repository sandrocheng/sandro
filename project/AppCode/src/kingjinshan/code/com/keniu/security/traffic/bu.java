package com.keniu.security.traffic;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class bu extends BroadcastReceiver
{
  bu(TrafficSettingActivity paramTrafficSettingActivity)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("android.net.wifi.WIFI_STATE_CHANGED".equals(paramIntent.getAction()))
      this.a.b(paramIntent.getIntExtra("wifi_state", 4));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.bu
 * JD-Core Version:    0.6.2
 */