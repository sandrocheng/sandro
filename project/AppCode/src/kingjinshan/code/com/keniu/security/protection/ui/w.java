package com.keniu.security.protection.ui;

import android.content.Intent;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;

final class w
  implements n
{
  w(PreventTheftSettingActivity paramPreventTheftSettingActivity)
  {
  }

  public final boolean a(Preference paramPreference)
  {
    this.a.startActivity(new Intent(this.a, PreventTheftWhiteListActivity.class));
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.w
 * JD-Core Version:    0.6.2
 */