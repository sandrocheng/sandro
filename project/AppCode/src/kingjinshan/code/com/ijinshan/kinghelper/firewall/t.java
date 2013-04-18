package com.ijinshan.kinghelper.firewall;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;

final class t
  implements SharedPreferences.OnSharedPreferenceChangeListener
{
  t(FirewallDeskSMSActivityApiLevel4 paramFirewallDeskSMSActivityApiLevel4)
  {
  }

  public final void onSharedPreferenceChanged(SharedPreferences paramSharedPreferences, String paramString)
  {
    if (paramString.equals(this.a.getString(2131427840)))
      FirewallDeskSMSActivityApiLevel4.a(this.a, Integer.parseInt(paramSharedPreferences.getString(paramString, "0")));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.t
 * JD-Core Version:    0.6.2
 */