package com.avast.android.generic.app.passwordrecovery;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnShowListener;
import android.widget.Button;

class f
  implements DialogInterface.OnShowListener
{
  f(PasswordRecoveryDialog paramPasswordRecoveryDialog, AlertDialog paramAlertDialog)
  {
  }

  public void onShow(DialogInterface paramDialogInterface)
  {
    this.a.getButton(-1).setOnClickListener(new g(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.passwordrecovery.f
 * JD-Core Version:    0.6.2
 */