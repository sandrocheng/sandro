package com.keniu.security.protection.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

final class o
  implements DialogInterface.OnClickListener
{
  o(PreventTheftMainActivity paramPreventTheftMainActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.a, PreventTheftMainActivity.class);
    this.a.startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.o
 * JD-Core Version:    0.6.2
 */