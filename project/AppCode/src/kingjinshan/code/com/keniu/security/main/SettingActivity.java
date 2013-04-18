package com.keniu.security.main;

import android.os.Bundle;
import com.ijinshan.kinghelper.firewall.dd;
import com.ijinshan.kpref.CheckBoxPreference;
import com.ijinshan.kpref.ListPreference;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.PreferenceScreen;
import com.keniu.security.a;
import com.keniu.security.traffic.y;
import com.keniu.security.util.BasePreferenceActivity;

public class SettingActivity extends BasePreferenceActivity
{
  private CheckBoxPreference a = null;
  private y b = null;
  private a c = null;
  private Preference d = null;
  private Preference e = null;

  private void c()
  {
    String str1;
    if (this.c.ag())
    {
      str1 = getString(2131427935);
      if (this.d == null)
        this.d = a("IsExtraCallEnable_Main_setting");
      this.d.a(str1);
      if (!dd.p())
        break label118;
    }
    label118: for (String str2 = getString(2131427935); ; str2 = getString(2131427936))
    {
      if (this.e == null)
        this.e = a("desk_sms_start_up_key_Main_setting");
      this.e.a(str2);
      return;
      str1 = getString(2131427936) + " " + getString(2131428644);
      break;
    }
  }

  public final boolean a(PreferenceScreen paramPreferenceScreen, Preference paramPreference)
  {
    this.a = ((CheckBoxPreference)a("public_preference_startup_autoupdate"));
    this.a.b();
    return super.a(paramPreferenceScreen, paramPreference);
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.c = a.a(this);
    this.c.a(this.c.ag());
    this.b = y.a(this);
    super.a(paramBundle, 2131034128);
    ListPreference localListPreference = (ListPreference)a(getString(2131427788));
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = localListPreference.m()[java.lang.Integer.parseInt(localListPreference.q())];
    localListPreference.a(getString(2131427369, arrayOfObject));
    localListPreference.a(new ch(this));
    CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)a(getString(2131428289));
    localCheckBoxPreference.a(new ci(this));
    localCheckBoxPreference.a(this.b.b);
    this.d = a("IsExtraCallEnable_Main_setting");
    this.d.a(new cl(this));
    this.e = a("desk_sms_start_up_key_Main_setting");
    this.e.a(new cm(this));
  }

  protected void onResume()
  {
    super.onResume();
    String str1;
    if (this.c.ag())
    {
      str1 = getString(2131427935);
      if (this.d == null)
        this.d = a("IsExtraCallEnable_Main_setting");
      this.d.a(str1);
      if (!dd.p())
        break label122;
    }
    label122: for (String str2 = getString(2131427935); ; str2 = getString(2131427936))
    {
      if (this.e == null)
        this.e = a("desk_sms_start_up_key_Main_setting");
      this.e.a(str2);
      return;
      str1 = getString(2131427936) + " " + getString(2131428644);
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.SettingActivity
 * JD-Core Version:    0.6.2
 */