package com.keniu.security.traffic;

import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.m;
import com.jxphone.mosecurity.a.a;

final class bz
  implements m
{
  bz(TrafficSettingActivity paramTrafficSettingActivity)
  {
  }

  public final boolean a(Preference paramPreference, Object paramObject)
  {
    a.e(this.a, "3");
    TrafficSettingActivity.c(this.a).r = ((Boolean)paramObject).booleanValue();
    TrafficSettingActivity.c(this.a).a(this.a, 2131428079);
    TrafficSettingActivity.d(this.a);
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.bz
 * JD-Core Version:    0.6.2
 */