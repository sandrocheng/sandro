package com.avast.android.generic.ui;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnShowListener;
import android.widget.Button;

class e
  implements DialogInterface.OnShowListener
{
  e(ChangePasswordDialog paramChangePasswordDialog, AlertDialog paramAlertDialog)
  {
  }

  public void onShow(DialogInterface paramDialogInterface)
  {
    this.a.getButton(-1).setOnClickListener(new f(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.e
 * JD-Core Version:    0.6.2
 */