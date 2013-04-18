package com.keniu.security.software;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class s
  implements DialogInterface.OnCancelListener
{
  s(SoftwareManager2 paramSoftwareManager2)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.removeDialog(3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.s
 * JD-Core Version:    0.6.2
 */