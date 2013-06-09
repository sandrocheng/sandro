package org.antivirus.ui.protection;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class z
  implements DialogInterface.OnClickListener
{
  z(ProtectionActivity paramProtectionActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.runOnUiThread(new aa(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.protection.z
 * JD-Core Version:    0.6.2
 */