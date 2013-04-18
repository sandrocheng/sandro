package com.keniu.security.main;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class af
  implements DialogInterface.OnClickListener
{
  af(MainActivity paramMainActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.f = false;
    MainActivity.a(paramDialogInterface, true);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.af
 * JD-Core Version:    0.6.2
 */