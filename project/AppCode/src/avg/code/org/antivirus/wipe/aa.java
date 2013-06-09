package org.antivirus.wipe;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class aa
  implements DialogInterface.OnClickListener
{
  aa(WipeSd paramWipeSd)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (WipeSd.a(this.a) != null)
      WipeSd.a(this.a).dismiss();
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.aa
 * JD-Core Version:    0.6.2
 */