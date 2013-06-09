package org.antivirus.wipe;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class u
  implements DialogInterface.OnClickListener
{
  u(s params)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (WipeByApp.a(this.a.a) != null)
      WipeByApp.a(this.a.a).dismiss();
    WipeByApp.b(this.a.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.u
 * JD-Core Version:    0.6.2
 */