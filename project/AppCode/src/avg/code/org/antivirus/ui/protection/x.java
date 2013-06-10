package org.antivirus.ui.protection;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class x
  implements DialogInterface.OnClickListener
{
  x(w paramw)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ProtectionActivity.a(this.a.a, paramInt);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.protection.x
 * JD-Core Version:    0.6.2
 */