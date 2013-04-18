package com.keniu.security.main;

import android.content.Intent;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;
import com.keniu.security.commumgr.CallLocateSettingActivity;

final class cl
  implements n
{
  cl(SettingActivity paramSettingActivity)
  {
  }

  public final boolean a(Preference paramPreference)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.a, CallLocateSettingActivity.class);
    this.a.startActivity(localIntent);
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.cl
 * JD-Core Version:    0.6.2
 */