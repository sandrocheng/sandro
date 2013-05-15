package com.avast.android.antitheft_setup_components.app.home;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class u
  implements DialogInterface.OnClickListener
{
  u(RootMethodFragment paramRootMethodFragment)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a("ms-atSetup", "root method, update-zip, zip backup failed", "cancel", 0L);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.u
 * JD-Core Version:    0.6.2
 */