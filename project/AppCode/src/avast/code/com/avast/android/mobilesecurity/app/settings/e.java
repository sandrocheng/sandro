package com.avast.android.mobilesecurity.app.settings;

import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;
import com.avast.android.mobilesecurity.app.locking.core.AppLockingService;

class e
  implements c
{
  e(SettingsFragment paramSettingsFragment)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    SettingsFragment localSettingsFragment = this.a;
    if (paramBoolean);
    for (String str = "on"; ; str = "off")
    {
      localSettingsFragment.a("ms-Settings", "uninstallProtection", str, 0L);
      AppLockingService.a(this.a.getActivity());
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.e
 * JD-Core Version:    0.6.2
 */