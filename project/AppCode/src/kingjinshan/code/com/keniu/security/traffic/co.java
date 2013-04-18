package com.keniu.security.traffic;

import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.m;

final class co
  implements m
{
  co(TrafficSettingActivity paramTrafficSettingActivity)
  {
  }

  public final boolean a(Preference paramPreference, Object paramObject)
  {
    Integer localInteger1 = (Integer)paramObject;
    TrafficSettingActivity.c(this.a).e = Math.min(31, Math.max(1, localInteger1.intValue()));
    Integer localInteger2 = Integer.valueOf(TrafficSettingActivity.c(this.a).e);
    TrafficSettingActivity.c(this.a).a(this.a, 2131428295);
    dd.a(this.a, null);
    paramPreference.a(this.a.getString(2131428000, new Object[] { localInteger2 }));
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.co
 * JD-Core Version:    0.6.2
 */