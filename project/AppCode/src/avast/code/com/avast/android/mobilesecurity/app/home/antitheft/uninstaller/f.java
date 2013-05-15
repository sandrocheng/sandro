package com.avast.android.mobilesecurity.app.home.antitheft.uninstaller;

import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;
import com.avast.android.mobilesecurity.Application;

class f
  implements c
{
  f(RootMethodFragment paramRootMethodFragment)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      Application.c(false);
      RootMethodFragment.b(this.a).b(false);
    }
    while (true)
    {
      return;
      Application.c(true);
      RootMethodFragment.b(this.a).b(true);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.antitheft.uninstaller.f
 * JD-Core Version:    0.6.2
 */