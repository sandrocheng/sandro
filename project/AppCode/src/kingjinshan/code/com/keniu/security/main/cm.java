package com.keniu.security.main;

import android.content.Intent;
import com.ijinshan.kinghelper.firewall.DeskSmsSettingsActivity;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;

final class cm
  implements n
{
  cm(SettingActivity paramSettingActivity)
  {
  }

  public final boolean a(Preference paramPreference)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.a, DeskSmsSettingsActivity.class);
    this.a.startActivity(localIntent);
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.cm
 * JD-Core Version:    0.6.2
 */