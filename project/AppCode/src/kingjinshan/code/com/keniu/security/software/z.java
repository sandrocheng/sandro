package com.keniu.security.software;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class z
  implements DialogInterface.OnCancelListener
{
  z(SoftwareManager2 paramSoftwareManager2)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.removeDialog(4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.z
 * JD-Core Version:    0.6.2
 */