package com.ijinshan.kinghelper.firewall;

import com.ijinshan.kpref.CheckBoxPreference;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.m;

final class a
  implements m
{
  a(DeskSmsSettingsActivity paramDeskSmsSettingsActivity)
  {
  }

  public final boolean a(Preference paramPreference, Object paramObject)
  {
    if (((CheckBoxPreference)paramPreference).b())
      com.jxphone.mosecurity.a.a.i(this.a, "set_unckdesk");
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.a
 * JD-Core Version:    0.6.2
 */