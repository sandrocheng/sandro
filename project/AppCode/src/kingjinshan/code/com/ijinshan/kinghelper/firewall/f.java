package com.ijinshan.kinghelper.firewall;

import android.content.Intent;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;

final class f
  implements n
{
  f(FireWallSettingS3Activity paramFireWallSettingS3Activity)
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
 * Qualified Name:     com.ijinshan.kinghelper.firewall.f
 * JD-Core Version:    0.6.2
 */