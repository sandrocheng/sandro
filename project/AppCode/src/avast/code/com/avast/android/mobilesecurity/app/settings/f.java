package com.avast.android.mobilesecurity.app.settings;

import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;

class f
  implements c
{
  f(SettingsFragment paramSettingsFragment)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    SettingsFragment localSettingsFragment = this.a;
    if (paramBoolean);
    for (String str = "on"; ; str = "off")
    {
      localSettingsFragment.a("ms-Settings", "globalActivityLogExternal", str, 0L);
      if ((!paramBoolean) && (this.a.getActivity() != null))
        u.a(this.a.getActivity()).a();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.f
 * JD-Core Version:    0.6.2
 */