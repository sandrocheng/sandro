package org.antivirus.ui.protection;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

final class i
  implements DialogInterface.OnDismissListener
{
  i(FileScannerActivity paramFileScannerActivity)
  {
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    if (!FileScannerActivity.d(this.a))
      FileScannerActivity.e(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.protection.i
 * JD-Core Version:    0.6.2
 */