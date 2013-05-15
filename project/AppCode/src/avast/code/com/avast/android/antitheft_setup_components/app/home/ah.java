package com.avast.android.antitheft_setup_components.app.home;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.avast.android.generic.util.a;
import com.avast.android.generic.util.z;

class ah
  implements DialogInterface.OnClickListener
{
  ah(RootMethodFragment paramRootMethodFragment)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a("ms-atSetup", "root method, update-zip, success", "ROM manager", 0L);
    z.g(this.a.getActivity());
    ((RootMethodWizardActivity)this.a.getActivity()).c();
    a.a(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.ah
 * JD-Core Version:    0.6.2
 */