package org.antivirus.ui.scan.results;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class l
  implements DialogInterface.OnClickListener
{
  l(ScanResultsExpandable paramScanResultsExpandable)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ScanResultsExpandable.a(this.a, paramInt);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.scan.results.l
 * JD-Core Version:    0.6.2
 */