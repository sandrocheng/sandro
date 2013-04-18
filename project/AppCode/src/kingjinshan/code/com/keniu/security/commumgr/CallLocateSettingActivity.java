package com.keniu.security.commumgr;

import android.os.Bundle;
import com.ijinshan.kpref.ListPreference;
import com.ijinshan.kpref.PreferenceScreen;
import com.ijinshan.kpref.m;
import com.keniu.security.util.BasePreferenceActivity;

public class CallLocateSettingActivity extends BasePreferenceActivity
{
  m a = new d(this);
  private ListPreference b;
  private ListPreference c;

  private void a(ListPreference paramListPreference)
  {
    paramListPreference.a(this.a);
    int i = paramListPreference.c(paramListPreference.q());
    if (i == -1)
      i = 0;
    paramListPreference.a(paramListPreference.m()[i]);
  }

  protected void onCreate(Bundle paramBundle)
  {
    com.keniu.security.a locala = com.keniu.security.a.a(this);
    locala.a(locala.ag());
    super.a(paramBundle, 2131034122);
    if (paramBundle == null)
      com.jxphone.mosecurity.a.a.i(this, "telman_comshowlocal");
    this.b = ((ListPreference)b().c("ExtraCallStyle"));
    this.c = ((ListPreference)b().c("ExtraCallTimeout"));
    a(this.b);
    a(this.c);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.CallLocateSettingActivity
 * JD-Core Version:    0.6.2
 */