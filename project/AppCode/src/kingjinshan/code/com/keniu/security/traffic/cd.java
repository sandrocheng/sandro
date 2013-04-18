package com.keniu.security.traffic;

import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.util.CustomCheckBoxPreference;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;

final class cd
  implements n
{
  cd(TrafficSettingActivity paramTrafficSettingActivity)
  {
  }

  public final boolean a(Preference paramPreference)
  {
    a.e(this.a, "1");
    if (!TrafficSettingActivity.g(this.a).b())
      TrafficSettingActivity.a(false, this.a);
    while (true)
    {
      return false;
      if (TrafficSettingActivity.h(this.a))
      {
        TrafficSettingActivity.a(true, this.a);
      }
      else
      {
        aq localaq = new aq(this.a, (byte)0);
        localaq.a(2131428163);
        localaq.b(2131428129);
        localaq.a(2131428130, new ce(this));
        localaq.b(2131428266, new cf(this));
        localaq.c().show();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.cd
 * JD-Core Version:    0.6.2
 */