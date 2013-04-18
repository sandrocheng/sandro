package com.ijinshan.kinghelper.firewall;

import android.content.Intent;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;

final class d
  implements n
{
  d(FireWallSettingS2Activity paramFireWallSettingS2Activity)
  {
  }

  public final boolean a(Preference paramPreference)
  {
    if (dd.g() == df.f)
    {
      Intent localIntent = new Intent(this.a, FireWallSettingS3Activity.class);
      this.a.startActivity(localIntent);
    }
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.d
 * JD-Core Version:    0.6.2
 */