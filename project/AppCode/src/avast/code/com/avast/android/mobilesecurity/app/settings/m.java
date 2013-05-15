package com.avast.android.mobilesecurity.app.settings;

import com.avast.android.generic.a;
import com.avast.android.generic.ad;
import com.avast.android.generic.ui.ChangePasswordDialog;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.SelectorRow;
import com.avast.android.generic.ui.widget.c;
import com.avast.android.generic.util.s;
import com.avast.android.generic.util.z;
import com.avast.android.mobilesecurity.app.locking.core.AppLockingService;
import com.avast.android.mobilesecurity.t;

class m
  implements c
{
  m(SettingsFragment paramSettingsFragment)
  {
  }

  private void a()
  {
    if ((SettingsFragment.a(this.a).ab()) && (!SettingsFragment.e(this.a)))
      a.a(this.a.getActivity(), this.a.getString(2131493811), this.a.getString(2131492963), this.a.getString(2131492964), new n(this), new o(this), false);
    while (true)
    {
      return;
      b();
    }
  }

  private void b()
  {
    if ((z.b(this.a.getActivity()) != null) && (!SettingsFragment.e(this.a)))
      a.a(this.a.getActivity(), this.a.getString(2131493810), this.a.getString(2131492963), this.a.getString(2131492964), new p(this), new q(this), false);
    while (true)
    {
      return;
      c();
    }
  }

  private void c()
  {
    SettingsFragment.a(this.a).b(false);
    SettingsFragment.c(this.a).setEnabled(false);
    SettingsFragment.d(this.a).setEnabled(false);
    AppLockingService.a(this.a.getActivity());
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    SettingsFragment localSettingsFragment = this.a;
    String str;
    if (paramBoolean)
    {
      str = "on";
      localSettingsFragment.a("ms-Settings", "passwordProtection", str, 0L);
      if ((SettingsFragment.a(this.a).e()) || (!paramBoolean))
        break label108;
      ChangePasswordDialog.a(this.a.getFragmentManager(), true);
      s locals = (s)ad.a(this.a.getActivity(), s.class);
      locals.a(2131165209, this.a);
      locals.a(2131165210, this.a);
    }
    while (true)
    {
      SettingsFragment.a(this.a, false);
      return;
      str = "off";
      break;
      label108: if (paramBoolean)
      {
        SettingsFragment.a(this.a).b(true);
        SettingsFragment.c(this.a).setEnabled(true);
        SettingsFragment.d(this.a).setEnabled(true);
        if (SettingsFragment.a(this.a).aY())
          AppLockingService.a(this.a.getActivity());
      }
      else
      {
        a();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.m
 * JD-Core Version:    0.6.2
 */