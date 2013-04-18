package com.ijinshan.kinghelper.firewall;

import com.ijinshan.kpref.ListPreference;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.m;

final class c
  implements m
{
  c(DeskSmsSettingsActivity paramDeskSmsSettingsActivity)
  {
  }

  public final boolean a(Preference paramPreference, Object paramObject)
  {
    ListPreference localListPreference = (ListPreference)paramPreference;
    CharSequence localCharSequence = localListPreference.m()[java.lang.Integer.parseInt(paramObject.toString())];
    localListPreference.a(this.a.getString(2131427846, new Object[] { localCharSequence }));
    localListPreference.b(paramObject.toString());
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.c
 * JD-Core Version:    0.6.2
 */