package com.keniu.security.protection.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

final class u
  implements DialogInterface.OnDismissListener
{
  u(PreventTheftSettingActivity paramPreventTheftSettingActivity)
  {
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    this.a.removeDialog(3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.u
 * JD-Core Version:    0.6.2
 */