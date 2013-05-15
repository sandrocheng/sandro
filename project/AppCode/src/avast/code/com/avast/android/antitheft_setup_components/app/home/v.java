package com.avast.android.antitheft_setup_components.app.home;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class v
  implements DialogInterface.OnClickListener
{
  v(RootMethodFragment paramRootMethodFragment)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a("ms-atSetup", "root method, update-zip, direct write failed", "continue", 0L);
    RootMethodFragment.c(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.v
 * JD-Core Version:    0.6.2
 */