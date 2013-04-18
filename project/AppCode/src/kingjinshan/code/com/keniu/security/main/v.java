package com.keniu.security.main;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class v
  implements DialogInterface.OnCancelListener
{
  v(MainActivity paramMainActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.removeDialog(12);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.v
 * JD-Core Version:    0.6.2
 */