package com.keniu.security.traffic;

import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.m;
import com.keniu.security.util.ax;

final class cm
  implements m
{
  cm(TrafficSettingActivity paramTrafficSettingActivity)
  {
  }

  public final boolean a(Preference paramPreference, Object paramObject)
  {
    long l = ((Long)paramObject).longValue();
    TrafficSettingActivity.c(this.a).g = l;
    TrafficSettingActivity.c(this.a).a(this.a, 2131428307);
    if (TrafficSettingActivity.c(this.a).g == 0L);
    for (String str = this.a.getString(2131428052); ; str = ax.c(TrafficSettingActivity.c(this.a).g))
    {
      paramPreference.a(str);
      return true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.cm
 * JD-Core Version:    0.6.2
 */