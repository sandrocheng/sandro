package com.avast.android.antitheft_setup_components.app.home;

import com.avast.android.generic.Application;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;

class r
  implements c
{
  r(RootMethodFragment paramRootMethodFragment)
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
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.r
 * JD-Core Version:    0.6.2
 */