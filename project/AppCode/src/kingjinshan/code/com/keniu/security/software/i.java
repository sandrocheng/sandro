package com.keniu.security.software;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class i
  implements DialogInterface.OnClickListener
{
  i(APKManagerActivity paramAPKManagerActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.removeDialog(0);
    APKManagerActivity.b(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.i
 * JD-Core Version:    0.6.2
 */