package com.avast.android.generic.ui;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnShowListener;
import android.widget.Button;

class p
  implements DialogInterface.OnShowListener
{
  p(CustomNumberDialog paramCustomNumberDialog, AlertDialog paramAlertDialog)
  {
  }

  public void onShow(DialogInterface paramDialogInterface)
  {
    this.a.getButton(-1).setOnClickListener(new q(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.p
 * JD-Core Version:    0.6.2
 */