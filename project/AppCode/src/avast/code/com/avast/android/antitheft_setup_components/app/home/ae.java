package com.avast.android.antitheft_setup_components.app.home;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.avast.android.generic.util.am;
import com.avast.android.generic.util.o;

class ae
  implements DialogInterface.OnClickListener
{
  ae(RootMethodFragment paramRootMethodFragment)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a("ms-atSetup", "root method, update-zip", "amend", 0L);
    RootMethodFragment.a(this.a, am.b, o.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.ae
 * JD-Core Version:    0.6.2
 */