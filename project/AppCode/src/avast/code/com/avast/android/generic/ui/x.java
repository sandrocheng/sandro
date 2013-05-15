package com.avast.android.generic.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class x
  implements DialogInterface.OnClickListener
{
  x(PasswordDialog paramPasswordDialog)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.cancel();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.x
 * JD-Core Version:    0.6.2
 */