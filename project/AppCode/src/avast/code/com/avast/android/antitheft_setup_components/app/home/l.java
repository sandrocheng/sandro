package com.avast.android.antitheft_setup_components.app.home;

import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.Application;
import com.avast.android.generic.util.a;

class l
  implements View.OnClickListener
{
  l(InstallationModeFragment paramInstallationModeFragment)
  {
  }

  public void onClick(View paramView)
  {
    this.a.a("ms-atSetup", "install mode", "advanced", 0L);
    Application.b(false);
    a.a(this.a);
    SetupCheckWizardActivity.call(this.a.getActivity());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.l
 * JD-Core Version:    0.6.2
 */