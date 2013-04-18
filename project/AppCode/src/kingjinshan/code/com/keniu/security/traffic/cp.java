package com.keniu.security.traffic;

import com.ijinshan.kpref.ListPreference;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.m;

final class cp
  implements m
{
  cp(TrafficSettingActivity paramTrafficSettingActivity)
  {
  }

  public final boolean a(Preference paramPreference, Object paramObject)
  {
    paramPreference.a(((ListPreference)paramPreference).m()[Integer.parseInt(paramObject.toString())]);
    TrafficSettingActivity.c(this.a).u = paramObject.toString();
    TrafficSettingActivity.c(this.a).a(this.a, 2131428032);
    dd.a(this.a.getApplicationContext(), Integer.parseInt(paramObject.toString()));
    ((ListPreference)paramPreference).b(paramObject.toString());
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.cp
 * JD-Core Version:    0.6.2
 */