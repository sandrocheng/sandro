package com.keniu.security.commumgr;

import android.os.Bundle;
import com.ijinshan.kpref.ListPreference;
import com.ijinshan.kpref.PreferenceActivity;
import com.ijinshan.kpref.PreferenceCategory;
import com.ijinshan.kpref.PreferenceScreen;
import com.keniu.security.a;
import com.keniu.security.e;

public class CommuMgrSettingActivity extends PreferenceActivity
{
  private a a;

  private void a(int paramInt1, int paramInt2)
  {
    ListPreference localListPreference = (ListPreference)a(getString(paramInt1));
    CharSequence[] arrayOfCharSequence = localListPreference.o();
    int i = 0;
    if (i < arrayOfCharSequence.length)
      if (paramInt2 != Integer.parseInt(arrayOfCharSequence[i].toString()));
    for (int j = i; ; j = paramInt2)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localListPreference.m()[j];
      localListPreference.a(getString(2131428449, arrayOfObject));
      localListPreference.a(new f(this, localListPreference));
      return;
      i++;
      break;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (!e.b());
    for (int i = 2131034123; ; i = 2131034124)
    {
      a(i);
      this.a = a.a(this);
      a(2131428445, this.a.ac());
      a(2131428447, this.a.af());
      PreferenceCategory localPreferenceCategory = (PreferenceCategory)a("commumgr_settings_report_key");
      PreferenceScreen localPreferenceScreen = (PreferenceScreen)a("root");
      if (e.b())
        localPreferenceScreen.d(localPreferenceCategory);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.CommuMgrSettingActivity
 * JD-Core Version:    0.6.2
 */