package com.keniu.security.software;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class g
  implements DialogInterface.OnCancelListener
{
  g(APKManagerActivity paramAPKManagerActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.removeDialog(1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.g
 * JD-Core Version:    0.6.2
 */