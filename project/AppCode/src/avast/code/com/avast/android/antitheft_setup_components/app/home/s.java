package com.avast.android.antitheft_setup_components.app.home;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class s
  implements DialogInterface.OnClickListener
{
  s(RootMethodFragment paramRootMethodFragment)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a("ms-atSetup", "root method, update-zip, success", "finished", 0L);
    RootMethodFragment.g(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.s
 * JD-Core Version:    0.6.2
 */