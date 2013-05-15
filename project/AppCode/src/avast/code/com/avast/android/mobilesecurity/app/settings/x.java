package com.avast.android.mobilesecurity.app.settings;

import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;
import com.avast.android.mobilesecurity.service.UpdateService;
import com.avast.android.mobilesecurity.ui.widget.ConnectionTypeButtons;

class x
  implements c
{
  x(SettingsUpdatesFragment paramSettingsUpdatesFragment)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    SettingsUpdatesFragment.b(this.a).setEnabled(paramBoolean);
    if ((paramBoolean) && (!SettingsUpdatesFragment.b(this.a).c()) && (!SettingsUpdatesFragment.b(this.a).d()) && (!SettingsUpdatesFragment.b(this.a).f()))
      SettingsUpdatesFragment.b(this.a).b(true, false, false);
    SettingsUpdatesFragment localSettingsUpdatesFragment;
    if (this.a.isVisible())
    {
      localSettingsUpdatesFragment = this.a;
      if (!paramBoolean)
        break label116;
    }
    label116: for (String str = "on"; ; str = "off")
    {
      localSettingsUpdatesFragment.a("ms-Settings", "autoUpdate", str, 0L);
      if (paramBoolean)
        UpdateService.d(this.a.getActivity());
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.x
 * JD-Core Version:    0.6.2
 */