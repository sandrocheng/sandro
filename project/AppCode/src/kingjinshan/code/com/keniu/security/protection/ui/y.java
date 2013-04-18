package com.keniu.security.protection.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class y
  implements DialogInterface.OnClickListener
{
  y(PreventTheftSettingActivity paramPreventTheftSettingActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    PreventTheftSettingActivity.a(paramDialogInterface, true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.y
 * JD-Core Version:    0.6.2
 */