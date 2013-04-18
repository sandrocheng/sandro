package com.keniu.security.commumgr;

import com.ijinshan.kpref.CheckBoxPreference;
import com.ijinshan.kpref.ListPreference;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.m;
import com.keniu.security.a;

final class d
  implements m
{
  d(CallLocateSettingActivity paramCallLocateSettingActivity)
  {
  }

  public final boolean a(Preference paramPreference, Object paramObject)
  {
    CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)this.a.a("IsLockedinCalling");
    if (paramPreference.A() == "IsLockedinCalling")
    {
      if (!localCheckBoxPreference.b())
        break label81;
      a.a(this.a).b(true);
    }
    while (true)
    {
      ListPreference localListPreference = (ListPreference)paramPreference;
      int i = localListPreference.c(paramObject.toString());
      if (i == -1)
        i = 0;
      localListPreference.a(localListPreference.m()[i]);
      return true;
      label81: a.a(this.a).b(false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.d
 * JD-Core Version:    0.6.2
 */