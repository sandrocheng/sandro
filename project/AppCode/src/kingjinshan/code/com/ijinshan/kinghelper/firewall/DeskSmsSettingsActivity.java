package com.ijinshan.kinghelper.firewall;

import android.os.Bundle;
import com.ijinshan.kpref.CheckBoxPreference;
import com.ijinshan.kpref.ListPreference;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;
import com.keniu.security.util.BasePreferenceActivity;

public class DeskSmsSettingsActivity extends BasePreferenceActivity
  implements n
{
  private final String a = "DeskSmsSettingsActivity";

  public final boolean a(Preference paramPreference)
  {
    return false;
  }

  protected void onCreate(Bundle paramBundle)
  {
    dd.a(this);
    dd.c();
    super.a(paramBundle, 2131034113);
    if (paramBundle == null)
      com.jxphone.mosecurity.a.a.i(this, "smsman_dsmsset");
    ((CheckBoxPreference)a(getString(2131427833))).a(new a(this));
    ListPreference localListPreference1 = (ListPreference)a(getString(2131427841));
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = localListPreference1.m()[java.lang.Integer.parseInt(localListPreference1.q())];
    localListPreference1.a(getString(2131427847, arrayOfObject1));
    localListPreference1.a(new b(this));
    ListPreference localListPreference2 = (ListPreference)a(getString(2131427840));
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = localListPreference2.m()[java.lang.Integer.parseInt(localListPreference2.q())];
    localListPreference2.a(getString(2131427846, arrayOfObject2));
    localListPreference2.a(new c(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.DeskSmsSettingsActivity
 * JD-Core Version:    0.6.2
 */