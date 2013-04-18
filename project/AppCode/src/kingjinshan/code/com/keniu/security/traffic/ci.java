package com.keniu.security.traffic;

import android.content.Intent;
import android.widget.Toast;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;
import com.keniu.security.malware.bz;

final class ci
  implements n
{
  ci(TrafficSettingActivity paramTrafficSettingActivity)
  {
  }

  public final boolean a(Preference paramPreference)
  {
    bz.a();
    if (bz.b())
      if (!bz.a().e())
      {
        TrafficSettingActivity.a(this.a);
        bz.a().c();
      }
    while (true)
    {
      return false;
      Intent localIntent = new Intent();
      localIntent.setClass(this.a, SaveTrafficModelSettingActivity.class);
      this.a.startActivityForResult(localIntent, 1);
      continue;
      Toast.makeText(this.a, "您的手机没有ROOT,无法使用此功能", 1).show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.ci
 * JD-Core Version:    0.6.2
 */