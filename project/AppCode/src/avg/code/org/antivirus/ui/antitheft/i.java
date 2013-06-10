package org.antivirus.ui.antitheft;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class i
  implements DialogInterface.OnCancelListener
{
  i(AntiTheftActivity paramAntiTheftActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    AntiTheftActivity.e(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.antitheft.i
 * JD-Core Version:    0.6.2
 */