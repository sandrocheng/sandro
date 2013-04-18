package com.keniu.security.main;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class t
  implements DialogInterface.OnClickListener
{
  t(MainActivity paramMainActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.removeDialog(12);
    MainActivity.a(this.a).c();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.t
 * JD-Core Version:    0.6.2
 */