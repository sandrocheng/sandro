package com.keniu.security.traffic;

import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.m;
import com.keniu.security.util.CustomCheckBoxPreference;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;

final class bw
  implements m
{
  bw(TrafficSettingActivity paramTrafficSettingActivity, CustomCheckBoxPreference paramCustomCheckBoxPreference)
  {
  }

  public final boolean a(Preference paramPreference, Object paramObject)
  {
    if (((Boolean)paramObject).booleanValue())
    {
      TrafficSettingActivity.c(this.b).a = true;
      TrafficSettingActivity.c(this.b).a(this.b, 2131428288);
      dd.a(this.b);
    }
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      aq localaq = new aq(this.b, (byte)0);
      localaq.a(2131427865);
      localaq.b(2131428006);
      localaq.a(2131428397, new bx(this));
      localaq.b(2131427866, new by(this));
      localaq.c().show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.bw
 * JD-Core Version:    0.6.2
 */