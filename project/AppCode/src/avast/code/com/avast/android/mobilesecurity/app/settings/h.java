package com.avast.android.mobilesecurity.app.settings;

import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;
import com.avast.android.mobilesecurity.t;

class h
  implements c
{
  h(SettingsFragment paramSettingsFragment)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    SettingsFragment.a(this.a).c(paramBoolean);
    SettingsFragment localSettingsFragment = this.a;
    if (paramBoolean);
    for (String str = "yes"; ; str = "no")
    {
      localSettingsFragment.a("ms-Settings", "communityIQ", str, 0L);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.h
 * JD-Core Version:    0.6.2
 */