package org.antivirus.ui.scan.results;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class o
  implements DialogInterface.OnCancelListener
{
  o(ScanResultsExpandable paramScanResultsExpandable)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.scan.results.o
 * JD-Core Version:    0.6.2
 */