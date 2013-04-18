package com.ijinshan.kinghelper.firewall;

import android.content.Intent;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;

final class ct
  implements n
{
  ct(IpDialSettingsActivity paramIpDialSettingsActivity)
  {
  }

  public final boolean a(Preference paramPreference)
  {
    Intent localIntent = new Intent(this.a, IpDialNoUseNumberListActivity.class);
    this.a.startActivityForResult(localIntent, 1);
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.ct
 * JD-Core Version:    0.6.2
 */