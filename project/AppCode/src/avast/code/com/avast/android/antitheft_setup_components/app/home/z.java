package com.avast.android.antitheft_setup_components.app.home;

import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.ui.widget.CheckBoxRow;

class z
  implements View.OnClickListener
{
  z(RootMethodFragment paramRootMethodFragment)
  {
  }

  public void onClick(View paramView)
  {
    if (RootMethodFragment.a(this.a).c())
      this.a.a("ms-atSetup", "root method", "update-zip", 0L);
    while (true)
    {
      RootMethodFragment.c(this.a);
      return;
      if (RootMethodFragment.b(this.a).c())
        this.a.a("ms-atSetup", "root method", "direct write", 0L);
      else
        this.a.a("ms-atSetup", "root method, error", "invalid checkbox state", 0L);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.z
 * JD-Core Version:    0.6.2
 */