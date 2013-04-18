package com.ijinshan.kinghelper.firewall;

import android.content.Intent;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;

final class g
  implements n
{
  g(FireWallSettingsNight2Activity paramFireWallSettingsNight2Activity)
  {
  }

  public final boolean a(Preference paramPreference)
  {
    Intent localIntent = new Intent(this.a, FirewallSettingsKeysActivity.class);
    this.a.startActivity(localIntent);
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.g
 * JD-Core Version:    0.6.2
 */