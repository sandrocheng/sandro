package com.avast.android.mobilesecurity.app.home.antitheft.uninstaller;

import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;
import com.avast.android.mobilesecurity.Application;

class b
  implements c
{
  b(RootMethodFragment paramRootMethodFragment)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      Application.c(true);
      RootMethodFragment.a(this.a).b(false);
    }
    while (true)
    {
      return;
      Application.c(false);
      RootMethodFragment.a(this.a).b(true);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.antitheft.uninstaller.b
 * JD-Core Version:    0.6.2
 */