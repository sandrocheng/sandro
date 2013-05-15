package com.avast.android.antitheft_setup_components.app.home;

import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.Application;
import com.avast.android.generic.util.a;

class k
  implements View.OnClickListener
{
  k(InstallationFinishedFragment paramInstallationFinishedFragment)
  {
  }

  public void onClick(View paramView)
  {
    if (Application.c())
      InstallationFinishedFragment.a(this.a);
    while (true)
    {
      return;
      ((InstallationFinishedWizardActivity)this.a.getActivity()).c();
      a.a(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.k
 * JD-Core Version:    0.6.2
 */