package com.keniu.security.traffic;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;

final class fn
  implements n
{
  fn(TrafficZiFeiSubSettingActivity paramTrafficZiFeiSubSettingActivity)
  {
  }

  public final boolean a(Preference paramPreference)
  {
    if (TextUtils.isEmpty(TrafficZiFeiSubSettingActivity.b(this.a).n))
      Toast.makeText(this.a, 2131428045, 1).show();
    while (true)
    {
      return false;
      Intent localIntent = new Intent();
      localIntent.setClass(this.a, TrafficZiFeiSubBrandSettingActivity.class);
      Bundle localBundle = new Bundle();
      localBundle.putString("type", "brand");
      localIntent.putExtras(localBundle);
      this.a.startActivity(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.fn
 * JD-Core Version:    0.6.2
 */