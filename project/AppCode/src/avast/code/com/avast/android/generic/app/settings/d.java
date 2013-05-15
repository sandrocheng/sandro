package com.avast.android.generic.app.settings;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnShowListener;
import android.widget.Button;

class d
  implements DialogInterface.OnShowListener
{
  d(RecoveryNumberDescriptionDialog paramRecoveryNumberDescriptionDialog, AlertDialog paramAlertDialog, boolean paramBoolean)
  {
  }

  public void onShow(DialogInterface paramDialogInterface)
  {
    this.a.getButton(-1).setOnClickListener(new e(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.settings.d
 * JD-Core Version:    0.6.2
 */