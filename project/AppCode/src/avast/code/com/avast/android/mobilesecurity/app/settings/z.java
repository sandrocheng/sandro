package com.avast.android.mobilesecurity.app.settings;

import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.mobilesecurity.ui.widget.ConnectionTypeButtons;
import com.avast.android.mobilesecurity.ui.widget.g;

class z
  implements g
{
  z(SettingsUpdatesFragment paramSettingsUpdatesFragment)
  {
  }

  public void a(ConnectionTypeButtons paramConnectionTypeButtons, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if ((!paramBoolean1) && (!paramBoolean2) && (!paramBoolean3))
      SettingsUpdatesFragment.a(this.a).b(false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.z
 * JD-Core Version:    0.6.2
 */