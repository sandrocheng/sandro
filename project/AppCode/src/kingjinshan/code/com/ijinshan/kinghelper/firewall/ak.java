package com.ijinshan.kinghelper.firewall;

import android.content.Intent;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;

final class ak
  implements n
{
  ak(FirewallSettingsActivity paramFirewallSettingsActivity)
  {
  }

  public final boolean a(Preference paramPreference)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.a, FirewallSettingsBlockActivity.class);
    this.a.startActivity(localIntent);
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.ak
 * JD-Core Version:    0.6.2
 */