package org.antivirus.ui.protection;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class j
  implements DialogInterface.OnClickListener
{
  j(FileScannerActivity paramFileScannerActivity, int paramInt)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    FileScannerActivity.f(this.b);
    FileScannerActivity localFileScannerActivity = this.b;
    FileScannerActivity.g(localFileScannerActivity);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.protection.j
 * JD-Core Version:    0.6.2
 */