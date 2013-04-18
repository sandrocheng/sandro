package com.ijinshan.kinghelper.firewall;

import com.ijinshan.kpref.CheckBoxPreference;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.m;
import com.jxphone.mosecurity.a.a;

final class am
  implements m
{
  am(FirewallSettingsActivity paramFirewallSettingsActivity, CheckBoxPreference paramCheckBoxPreference)
  {
  }

  public final boolean a(Preference paramPreference, Object paramObject)
  {
    if (((CheckBoxPreference)paramPreference).b())
    {
      a.i(this.b, "set_uncklj");
      FirewallSettingsActivity.a(this.b, this.a);
    }
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.am
 * JD-Core Version:    0.6.2
 */