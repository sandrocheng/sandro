package org.antivirus.ui.help;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class f
  implements DialogInterface.OnClickListener
{
  f(Help paramHelp)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Help.g(this.a).dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.help.f
 * JD-Core Version:    0.6.2
 */