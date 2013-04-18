package com.jxphone.mosecurity.activity.friend;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;
import com.ijinshan.kpref.EditTextPreference;
import com.ijinshan.kpref.ListPreference;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;
import com.jxphone.mosecurity.activity.BaseContactActivity;
import com.keniu.security.a;
import com.keniu.security.util.BasePreferenceActivity;

public class FriendSettingActivity extends BasePreferenceActivity
  implements n
{
  public static final int b = 6;
  private static final String c = "FriendSettingActivity>>initDummyPasswordPreference";
  Preference a;
  private a d;
  private boolean e = false;
  private Integer f = Integer.valueOf(0);

  private void a(int paramInt1, int paramInt2)
  {
    ListPreference localListPreference = (ListPreference)a(getString(paramInt1));
    CharSequence[] arrayOfCharSequence = localListPreference.m();
    localListPreference.a(getString(2131428892, new Object[] { arrayOfCharSequence[paramInt2] }));
    localListPreference.a(new ai(this, arrayOfCharSequence));
  }

  private void c()
  {
    EditTextPreference localEditTextPreference = (EditTextPreference)a("dummy_password");
    localEditTextPreference.l().setInputType(129);
    localEditTextPreference.l().setHint(2131428620);
    localEditTextPreference.a(new ae(this, localEditTextPreference));
    localEditTextPreference.a(new ah(this));
  }

  public final boolean a(Preference paramPreference)
  {
    String str = paramPreference.A();
    if (getString(2131428614).equalsIgnoreCase(str))
      BaseContactActivity.a(this, this.e).show();
    return false;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2131034120);
    this.d = a.a(this);
    a(2131428890, this.d.l());
    a(2131428893, this.d.m());
    this.a = a(a.aG());
    Preference localPreference = this.a;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.d.aF();
    localPreference.a(getString(2131428905, arrayOfObject));
    a(getString(2131428614)).a(this);
    this.e = getIntent().getBooleanExtra("isDummy", false);
    EditTextPreference localEditTextPreference = (EditTextPreference)a("dummy_password");
    localEditTextPreference.l().setInputType(129);
    localEditTextPreference.l().setHint(2131428620);
    localEditTextPreference.a(new ae(this, localEditTextPreference));
    localEditTextPreference.a(new ah(this));
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    return super.onCreateDialog(paramInt);
  }

  protected void onResume()
  {
    if (this.a != null)
    {
      Preference localPreference = this.a;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.d.aF();
      localPreference.a(getString(2131428905, arrayOfObject));
    }
    super.onResume();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.FriendSettingActivity
 * JD-Core Version:    0.6.2
 */