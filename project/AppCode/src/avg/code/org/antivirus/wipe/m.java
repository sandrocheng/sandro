package org.antivirus.wipe;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class m
  implements DialogInterface.OnClickListener
{
  m(l paraml)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (WipeByApp.a(this.a.b) != null)
      WipeByApp.a(this.a.b).dismiss();
    if (WipeByApp.l(this.a.b) != null)
      WipeByApp.l(this.a.b).dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.m
 * JD-Core Version:    0.6.2
 */