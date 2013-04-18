package com.ijinshan.kinghelper.firewall;

import android.content.Intent;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;

final class as
  implements n
{
  as(FirewallSettingsNightActivity paramFirewallSettingsNightActivity)
  {
  }

  public final boolean a(Preference paramPreference)
  {
    if (dd.f() == dg.f)
    {
      Intent localIntent = new Intent(this.a, FireWallSettingsNight2Activity.class);
      this.a.startActivity(localIntent);
    }
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.as
 * JD-Core Version:    0.6.2
 */