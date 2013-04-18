package com.keniu.security.traffic;

import android.content.Intent;
import android.os.Bundle;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;

final class fl
  implements n
{
  fl(TrafficZiFeiSubSettingActivity paramTrafficZiFeiSubSettingActivity)
  {
  }

  public final boolean a(Preference paramPreference)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.a, TrafficZiFeiSubProviceSettingActivity.class);
    Bundle localBundle = new Bundle();
    localBundle.putString("type", "provice");
    localIntent.putExtras(localBundle);
    this.a.startActivity(localIntent);
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.fl
 * JD-Core Version:    0.6.2
 */