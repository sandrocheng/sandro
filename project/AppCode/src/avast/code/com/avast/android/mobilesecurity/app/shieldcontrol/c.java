package com.avast.android.mobilesecurity.app.shieldcontrol;

import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.mobilesecurity.app.locking.core.AppLockingService;

class c
  implements com.avast.android.generic.ui.widget.c
{
  c(AppShieldFragment paramAppShieldFragment)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    String str;
    if (!AppShieldFragment.a(this.a))
    {
      AppShieldFragment localAppShieldFragment = this.a;
      if (!paramBoolean)
        break label63;
      str = "yes";
      localAppShieldFragment.a("ms-Settings", "appExecShield", str, 0L);
      if ((paramBoolean) || (AppShieldFragment.b(this.a).c()))
        break label70;
      AppShieldFragment.d(this.a).b(false);
    }
    while (true)
    {
      return;
      label63: str = "no";
      break;
      label70: AppLockingService.a(this.a.getActivity());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.shieldcontrol.c
 * JD-Core Version:    0.6.2
 */