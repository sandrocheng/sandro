package com.avast.android.mobilesecurity.app.home.antitheft.uninstaller;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.avast.android.antitheft_setup_components.b.a;

class k
  implements DialogInterface.OnClickListener
{
  k(RootMethodFragment paramRootMethodFragment)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.a(this.a.getActivity(), new l(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.antitheft.uninstaller.k
 * JD-Core Version:    0.6.2
 */