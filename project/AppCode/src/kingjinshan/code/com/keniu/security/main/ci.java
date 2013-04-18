package com.keniu.security.main;

import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.m;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.traffic.dd;
import com.keniu.security.traffic.y;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;

final class ci
  implements m
{
  ci(SettingActivity paramSettingActivity)
  {
  }

  public final boolean a(Preference paramPreference, Object paramObject)
  {
    a.e(this.a, "4");
    if (((Boolean)paramObject).booleanValue())
    {
      SettingActivity.a(this.a).b = true;
      SettingActivity.a(this.a).a(this.a, 2131428289);
      dd.b = true;
      dd.a(this.a, null);
    }
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      aq localaq = new aq(this.a, (byte)0);
      localaq.a(2131427865);
      localaq.b(2131428007);
      localaq.a(2131428397, new cj(this, paramPreference));
      localaq.b(2131427866, new ck(this, paramPreference));
      localaq.c().show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.ci
 * JD-Core Version:    0.6.2
 */