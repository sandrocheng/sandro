package com.keniu.security.traffic;

import android.net.wifi.WifiManager;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;
import com.keniu.security.util.CustomCheckBoxPreference;

final class cc
  implements n
{
  cc(TrafficSettingActivity paramTrafficSettingActivity)
  {
  }

  public final boolean a(Preference paramPreference)
  {
    if (TrafficSettingActivity.e(this.a).b())
      if (!TrafficSettingActivity.f(this.a).isWifiEnabled())
        TrafficSettingActivity.f(this.a).setWifiEnabled(true);
    while (true)
    {
      return false;
      if (TrafficSettingActivity.f(this.a).isWifiEnabled())
        TrafficSettingActivity.f(this.a).setWifiEnabled(false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.cc
 * JD-Core Version:    0.6.2
 */