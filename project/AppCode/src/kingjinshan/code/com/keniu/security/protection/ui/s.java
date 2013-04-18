package com.keniu.security.protection.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

final class s
  implements DialogInterface.OnDismissListener
{
  s(PreventTheftSettingActivity paramPreventTheftSettingActivity)
  {
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    this.a.removeDialog(2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.s
 * JD-Core Version:    0.6.2
 */