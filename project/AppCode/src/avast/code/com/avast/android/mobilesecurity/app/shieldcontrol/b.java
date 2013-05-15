package com.avast.android.mobilesecurity.app.shieldcontrol;

import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;

class b
  implements c
{
  b(AppShieldFragment paramAppShieldFragment)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    AppShieldFragment localAppShieldFragment;
    if (!AppShieldFragment.a(this.a))
    {
      localAppShieldFragment = this.a;
      if (!paramBoolean)
        break label63;
    }
    label63: for (String str = "yes"; ; str = "no")
    {
      localAppShieldFragment.a("ms-Settings", "appInstallShield", str, 0L);
      if ((!paramBoolean) && (!AppShieldFragment.c(this.a).c()))
        AppShieldFragment.d(this.a).b(false);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.shieldcontrol.b
 * JD-Core Version:    0.6.2
 */