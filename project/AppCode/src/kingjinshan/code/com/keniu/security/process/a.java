package com.keniu.security.process;

import android.content.Intent;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;

final class a
  implements n
{
  a(ProcessConfigActivity paramProcessConfigActivity)
  {
  }

  public final boolean a(Preference paramPreference)
  {
    Intent localIntent = new Intent(this.a, ProcessWhiteSettingActivity.class);
    this.a.startActivity(localIntent);
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.a
 * JD-Core Version:    0.6.2
 */