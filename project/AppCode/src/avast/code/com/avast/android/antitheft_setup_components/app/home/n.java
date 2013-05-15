package com.avast.android.antitheft_setup_components.app.home;

import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.Application;
import com.avast.android.generic.util.a;

class n
  implements View.OnClickListener
{
  n(InstallationModeFragment paramInstallationModeFragment, String paramString)
  {
  }

  public void onClick(View paramView)
  {
    this.b.a("ms-atSetup", "install mode", "easyOld", 0L);
    Application.b(true);
    Application.a(false);
    Application.a(this.a);
    a.a(this.b);
    SetupCheckWizardActivity.call(this.b.getActivity());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.n
 * JD-Core Version:    0.6.2
 */