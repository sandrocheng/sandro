package org.antivirus.ui.protection;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import org.antivirus.AVService;
import org.antivirus.core.scanners.c;

final class h
  implements DialogInterface.OnCancelListener
{
  h(FileScannerActivity paramFileScannerActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    Intent localIntent = new Intent(this.a, AVService.class);
    localIntent.putExtra("__SAC", 27);
    localIntent.putExtra("__SAD", c.b);
    this.a.startService(localIntent);
    FileScannerActivity.c(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.protection.h
 * JD-Core Version:    0.6.2
 */