package com.keniu.security.main;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class ai
  implements DialogInterface.OnCancelListener
{
  ai(MainActivity paramMainActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.g = false;
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.ai
 * JD-Core Version:    0.6.2
 */