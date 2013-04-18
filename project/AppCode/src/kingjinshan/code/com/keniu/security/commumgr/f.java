package com.keniu.security.commumgr;

import com.ijinshan.kpref.ListPreference;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.m;

final class f
  implements m
{
  f(CommuMgrSettingActivity paramCommuMgrSettingActivity, ListPreference paramListPreference)
  {
  }

  public final boolean a(Preference paramPreference, Object paramObject)
  {
    int i = Integer.parseInt(paramObject.toString());
    CharSequence[] arrayOfCharSequence = this.a.o();
    for (int j = 0; ; j++)
      if (j < arrayOfCharSequence.length)
      {
        if (i == Integer.parseInt(arrayOfCharSequence[j].toString()))
          i = j;
      }
      else
      {
        ListPreference localListPreference = this.a;
        CommuMgrSettingActivity localCommuMgrSettingActivity = this.b;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.a.m()[i];
        localListPreference.a(localCommuMgrSettingActivity.getString(2131428449, arrayOfObject));
        return true;
      }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.f
 * JD-Core Version:    0.6.2
 */