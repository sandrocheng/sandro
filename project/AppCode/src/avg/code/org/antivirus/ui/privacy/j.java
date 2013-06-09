package org.antivirus.ui.privacy;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

final class j
  implements DialogInterface.OnDismissListener
{
  j(boolean paramBoolean, Context paramContext)
  {
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    if (this.a)
      ((Activity)this.b).finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.privacy.j
 * JD-Core Version:    0.6.2
 */