package com.keniu.security.software;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class ad
  implements DialogInterface.OnClickListener
{
  ad(SoftwareManager2 paramSoftwareManager2)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    SoftwareManager2.x(this.a);
    this.a.removeDialog(3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.ad
 * JD-Core Version:    0.6.2
 */