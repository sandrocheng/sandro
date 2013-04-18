package com.keniu.security.traffic;

import android.content.Intent;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;

final class cj
  implements n
{
  cj(TrafficSettingActivity paramTrafficSettingActivity)
  {
  }

  public final boolean a(Preference paramPreference)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.a, TrafficUsedSettingAcvitiy.class);
    localIntent.putExtra("monthUsed", TrafficSettingActivity.b(this.a));
    this.a.startActivityForResult(localIntent, 1);
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.cj
 * JD-Core Version:    0.6.2
 */