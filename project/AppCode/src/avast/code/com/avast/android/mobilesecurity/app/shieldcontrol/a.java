package com.avast.android.mobilesecurity.app.shieldcontrol;

import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;
import com.avast.android.mobilesecurity.app.locking.core.AppLockingService;

class a
  implements c
{
  a(AppShieldFragment paramAppShieldFragment)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    String str;
    u localu;
    if (!AppShieldFragment.a(this.a))
    {
      AppShieldFragment localAppShieldFragment = this.a;
      if (!paramBoolean)
        break label153;
      str = "yes";
      localAppShieldFragment.a("ms-Settings", "appShield", str, 0L);
      if ((paramBoolean) && (!AppShieldFragment.b(this.a).c()) && (!AppShieldFragment.c(this.a).c()))
      {
        AppShieldFragment.b(this.a).b(true);
        AppShieldFragment.c(this.a).b(true);
      }
      localu = u.a(this.a.getActivity());
      if (!paramBoolean)
        break label160;
    }
    label153: label160: for (y localy = y.c; ; localy = y.d)
    {
      localu.a(localy, null, null, null, null, null, null);
      AppShieldFragment.b(this.a).setEnabled(paramBoolean);
      AppShieldFragment.c(this.a).setEnabled(paramBoolean);
      AppLockingService.a(this.a.getActivity());
      return;
      str = "no";
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.shieldcontrol.a
 * JD-Core Version:    0.6.2
 */