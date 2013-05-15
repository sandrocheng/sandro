package com.avast.android.antitheft_setup_components.app.home;

import com.avast.android.generic.Application;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;

class x
  implements c
{
  x(RootMethodFragment paramRootMethodFragment)
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
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.x
 * JD-Core Version:    0.6.2
 */