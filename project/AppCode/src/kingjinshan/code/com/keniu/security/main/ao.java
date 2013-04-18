package com.keniu.security.main;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class ao
  implements DialogInterface.OnCancelListener
{
  ao(MainActivity paramMainActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.ao
 * JD-Core Version:    0.6.2
 */