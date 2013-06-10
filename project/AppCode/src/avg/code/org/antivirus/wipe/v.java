package org.antivirus.wipe;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class v
  implements DialogInterface.OnClickListener
{
  v(s params)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (WipeByApp.a(this.a.a) != null)
      WipeByApp.a(this.a.a).dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.v
 * JD-Core Version:    0.6.2
 */