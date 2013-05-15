package com.avast.android.antitheft_setup_components.app.home;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class t
  implements DialogInterface.OnClickListener
{
  t(RootMethodFragment paramRootMethodFragment)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a("ms-atSetup", "root method, update-zip, zip backup failed", "continue", 0L);
    RootMethodFragment.c(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.t
 * JD-Core Version:    0.6.2
 */