package com.avast.android.antitheft_setup_components.app.home;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.avast.android.antitheft_setup_components.b.a;

class ac
  implements DialogInterface.OnClickListener
{
  ac(RootMethodFragment paramRootMethodFragment)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a("ms-atSetup", "root method, update-zip", "edify", 0L);
    a.a(this.a.getActivity(), new ad(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.ac
 * JD-Core Version:    0.6.2
 */