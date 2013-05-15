package com.avast.android.mobilesecurity.app.settings;

import com.avast.android.generic.a;
import com.avast.android.generic.ui.ad;
import com.avast.android.generic.util.z;
import com.avast.android.mobilesecurity.app.home.antitheft.uninstaller.UninstallCheckActivity;

class t
  implements ad
{
  t(SettingsFragment paramSettingsFragment)
  {
  }

  public void a()
  {
    if (this.a.isAdded())
    {
      if (z.b(this.a.getActivity()) == null)
        break label34;
      UninstallCheckActivity.call(this.a.getActivity());
    }
    while (true)
    {
      return;
      label34: a.a(this.a.getActivity(), this.a.getString(2131493865));
    }
  }

  public void b()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.t
 * JD-Core Version:    0.6.2
 */