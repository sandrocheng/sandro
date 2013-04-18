package com.keniu.security.main;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class ar
  implements DialogInterface.OnClickListener
{
  ar(MainActivity paramMainActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    MainActivity.a(paramDialogInterface, true);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.ar
 * JD-Core Version:    0.6.2
 */