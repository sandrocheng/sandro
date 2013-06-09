package org.antivirus.wipe;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class ah
  implements DialogInterface.OnClickListener
{
  ah(af paramaf)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (WipeSd.a(this.a.b.b) != null)
      WipeSd.a(this.a.b.b).dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.ah
 * JD-Core Version:    0.6.2
 */